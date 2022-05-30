draw_self()

#region //botão
if button_pressed_gui(bbox_right-16,bbox_top,sCloseTab) 
{
	global.BotaoCharInfo= 0;
}
#endregion 

draw_set_font(Font2);
draw_set_halign(fa_left);
draw_set_valign(fa_left);

draw_text(x+550,y+20,"CHARACTER")

draw_text(x+850,y+50,global.name);

draw_text(x+930,y+80,"HP " + string(global.vida));

draw_text(x+820,y+110,"DMG 9");

draw_text(x+900,y+110,"STA 9");

draw_text(x+820,y+130,"POW 9");

