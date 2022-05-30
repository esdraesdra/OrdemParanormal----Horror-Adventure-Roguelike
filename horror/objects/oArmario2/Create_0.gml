globalvar ArmarioInventory;
globalvar ArmarioInventoryWidth;
ArmarioInventoryWidth = 10;

ArmarioInventory = ds_grid_create(ArmarioInventoryWidth,1);
global.ArmarioInventory2 = ds_grid_create(ArmarioInventoryWidth,1);

AddItem(ArmarioInventory,"Item equi","0","Item equi","Item equi","Item equi","Item equi","Item equi","Categoria",oPickup);

ui_width = 800;
ui_height = 450;

ui_width2 = 800;
ui_height2 = 450;

