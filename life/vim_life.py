import sys
sys.path.append(".")

from life.implementation import *

import vim

buf = vim.current.buffer

class BufField(GridField):
    def __init__(self, buf):
        if buf[0][0] == '>':
            self.rules = buf[0][1:]
        else:
            self.rules = '3/23'
        grid = list()
        while len(buf) > 3:
            grid.append(buf[0][1:])
            del buf[0]
        super(BufField, self).__init__(grid)
        self.buf = buf

    def apply(self):
        self.buf[0] = '>' + self.rules
        for line in self.grid:
            txt = '|'
            for cell in line:
                if cell.new_status:
                    txt += 'X'
                else:
                    txt += '.'
            self.buf.append(txt)

    def get_instance_cell(self, position, status):
        return NormalCell(self, position, status=='X', self.rules)

class RandomBufField(BufField):
    def get_instance_cell(self, position, status):
        return RandomCell(self, position, status=='X')

if buf.name.split('.')[-1] == 'life':
    a = BufField(buf)
    a.consist_all()
    a.apply()
