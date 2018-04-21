import vim

from abc import ABCMeta
from abc import abstractmethod

from random import randint

buf = vim.current.buffer

class Motion:
    @staticmethod
    def north(position):
        new = (position[0]+1, position[1])
        return new
    
    @staticmethod
    def east(position):
        new = (position[0], position[1]+1)
        return new
    
    @staticmethod
    def south(position):
        new = (position[0]-1, position[1])
        return new
    
    @staticmethod
    def west(position):
        new = (position[0], position[1]-1)
        return new
    
    @staticmethod
    def north_west(position): return Motion.north(Motion.west(position))
        
    @staticmethod
    def north_east(position): return Motion.north(Motion.east(position))
        
    @staticmethod
    def south_west(position): return Motion.south(Motion.west(position))
     
    @staticmethod
    def south_east(position): return Motion.south(Motion.east(position))
    
    @staticmethod
    def motions(): return (Motion.north, Motion.west, Motion.south, Motion.east)
    def motions_diag(): return (Motion.north, Motion.west, Motion.south, Motion.east, 
            Motion.north_west, Motion.north_east, Motion.south_west, Motion.south_east)

class Cell(metaclass=ABCMeta):
    def __init__(self, field, position, status):
        self.field = field
        self.position = position
        self.status = status
        self.new_status = status

    @abstractmethod
    def consist(self): pass

class GhostCell(Cell):
    def consist(self): raise Exception()

    @staticmethod
    def get(): return NormalCell(None,None,False)

class NormalCell(Cell):
    def consist(self):
        count = 0
        neiborhood = [ self.field.get_cell(direct(self.position)) for direct in Motion.motions_diag() ]
        for cel in neiborhood:
            if cel.status:
                count += 1
        if self.status:
            if count < 2:
                self.new_status = False
            if count > 3:
                self.new_status = False
        else:
            if count == 3:
                self.new_status = True

class RandomCell(NormalCell):
    def consist(self):
        if randint(0,999):
            super(RandomCell, self).consist()
        else:
            self.new_status = not self.new_status

class Field(metaclass=ABCMeta):
    @abstractmethod
    def consist_all(self): pass

    @abstractmethod
    def get_cell(self, position): pass
    
    @abstractmethod
    def apply(self): pass

class GridField(Field):
    def __init__(self, grid):
        self.grid = list()
        for line_c in range(len(grid)):
            line = grid[line_c]
            self.grid.append(list())
            for element_c in range(len(line)):
                element  = line[element_c]
                cell = self.get_instance_cell((line_c, element_c), element)
                self.grid[line_c].append(cell)
        self.assecure()

    def assecure(self):
        max_len = 0
        for line in self.grid:
            if len(line) > max_len:
                max_len = len(line)

        line_c = 0
        for line in self.grid:
            dif = max_len - len(line)
            if dif:
                for i in range(dif):
                    element_c = i + len(line)
                    line.append(self.get_instance_cell((line_c, element_c), False))
            line_c = line_c + 1

    def consist_all(self):
        for line in self.grid:
            for cel in line: cel.consist()

    def get_cell(self, position):
        x = position[0]
        y = position[1]
        before_border = x < 0 or y < 0
        after_border  = (x >= len(self.grid)) or (y >= len(self.grid[x]))
        if after_border or before_border:
            return GhostCell.get()
        else:
            return self.grid[x][y]

    @abstractmethod
    def get_instance_cell(self, position, status): pass

class BufField(GridField):
    def __init__(self, buf):
        for i in range(len(buf)):
            buf[i] = buf[i][1:]
        super(BufField, self).__init__(buf)
        self.buf = buf

    def apply(self):
        count = 0
        for line in self.grid:
            txt = '|'
            for cell in line:
                if cell.new_status:
                    txt += 'X'
                else:
                    txt += '.'
            self.buf[count] = txt
            count += 1

    def get_instance_cell(self, position, status):
        return NormalCell(self, position, status=='X')

class RandomBufField(BufField):
    def get_instance_cell(self, position, status):
        return RandomCell(self, position, status=='X')

if buf.name.split('.')[-1] == 'life':
    a = RandomBufField(buf)
    a.consist_all()
    a.apply()
