draw_set_alpha(0.5);
draw_rectangle_color(0,0,display_get_gui_width() ,display_get_gui_height(),c_black ,c_black ,c_black ,c_black ,false);

draw_self();

itemLeftStart = bbox_left + 32;
itemTopStart = bbox_top + 32;
itemBottomStart = bbox_bottom - 42;
itemCenterStart = bbox_left + 200;

draw_set_font(Font6);
draw_set_alpha(1);
draw_set_halign(fa_left);

draw_text(itemLeftStart ,itemTopStart       ,  ds_grid_get(myItems,0,global.itemSelected));								//Nome do Item
draw_text_ext(itemLeftStart ,itemTopStart + 50  ,  ds_grid_get(myItems,2,global.itemSelected),20,300);								//Descrição do Item

draw_set_alpha(0.5);
draw_text(itemLeftStart ,itemBottomStart - 30,  "[" + string(ds_grid_get(myItems,5,global.itemSelected)) + " kg." + "]");	//Peso do Item

draw_set_alpha(1);
draw_text(itemLeftStart , itemBottomStart - 60,   ds_grid_get(myItems,6,global.itemSelected));								//Durabilidade


//DEBUG
draw_set_alpha(1);
draw_text(itemLeftStart , itemBottomStart - 80,   ds_grid_get(myItems,4,global.itemSelected));								//iID

draw_set_alpha(1);
draw_text(itemLeftStart , itemBottomStart - 100,   ds_grid_get(myItems,7,global.itemSelected));								//CATEGORIA

draw_set_halign(fa_center);
draw_text(itemCenterStart , itemBottomStart	,  ">Aperte [L] para voltar<");
