globalvar playerEquipamento;
globalvar playerEquipamentoWidth;
playerEquipamentoWidth = 7;

playerEquipamento = ds_grid_create(playerEquipamentoWidth,1);

global.type = noone;
global.head = true;

AddItem(playerEquipamento,"Item equi",0,"Item equi","Item equi","Item equi","Item equi","Item equi",global.head);

ui_width = 800;
ui_height = 450;

ui_width2 = 800;
ui_height2 = 450;