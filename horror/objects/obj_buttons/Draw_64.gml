#region //botão pra mostrar onde passou
if button_pressed_gui(30,15, sDebugPass) //clicando no botão
    {
    global.button1 = 1;
    }

if global.button1 = 1 && (!WindowHistoryPass = true) && (!instance_exists(oDragBox)) //quando o botão for 1 criar o dragbox
{
	instance_create_depth(x,y,0,oDragBox);
}

if global.button1 = 0 //destruir
{
	instance_destroy(oDragBox)
}
#endregion

#region //botão pra mostrar a caixa de informação do Personagem

if button_pressed_gui(90,15, sDebugPass) //clicando no botão
    {
    global.BotaoCharInfo = 1;
    }

if global.BotaoCharInfo = 1 && (!BotaoChar = true) && (!instance_exists(oCharInfo)) //quando o botão for 1 criar o dragbox
{
	instance_create_depth(x+200,y+150,0,oCharInfo);
}

if global.BotaoCharInfo = 0 //destruir
{
	instance_destroy(oCharInfo)
}

#endregion


#region //botão pra mostrar opções de interalção

if global.BotaoAction = 1 && (!BotaoAction = true) && (!instance_exists(oAction)) //quando o botão for 1 criar o dragbox
{
	instance_create_depth(mouse_x,mouse_y,0,oAction);
}

if global.BotaoAction = 0 //destruir
{
	instance_destroy(oAction)
}
#endregion

