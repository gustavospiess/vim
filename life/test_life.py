import sys
sys.path.append("..")

from life.implementation import *

def test_motion():
    assert Motion
    assert Motion.north((0,0)) == (1,0)
    assert Motion.east((0,0)) == (0,1)
    assert Motion.south((0,0)) == (-1,0)
    assert Motion.west((0,0)) == (0,-1)
    assert Motion.north_west((0,0)) == (1,-1)
    assert Motion.north_east((0,0)) == (1,1)
    assert Motion.south_west((0,0)) == (-1,-1)
    assert Motion.south_east((0,0)) == (-1,1)
    assert len(Motion.motions()) == 4
    assert len(Motion.motions_diag()) == 8

def test_ghostCell():
    gc = GhostCell.get()
    
    assert gc.field == None
    assert gc.position == None
    assert gc.status == False
    assert gc.new_status == False

def test_normalCell():
    gf = GhostField.get()
    nc = NormalCell(gf, (1,1), True)
    nc.consist()
    
    assert nc.field == gf
    assert nc.position == (1,1)
    assert nc.status == True
    assert nc.new_status == False

def test_ghostField():
    gf = GhostField()
    assert isinstance(gf.get_cell(None), GhostCell)

if __name__ == '__main__':
    motion_test()

