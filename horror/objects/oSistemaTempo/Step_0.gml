if (var_segundos <= 60)
{
	var_segundos = global.turn
}

if (var_segundos == 60) && (global.turn == 60)
{
	global.turn = 00;
	var_segundos = 00;
	var_minutos ++;
}

if (var_minutos == 60)
{
	var_minutos = 00;
	var_horas ++;
}

if (var_horas > 24)
{
	var_horas = 00;
}

global.var_segundos = var_segundos;
global.var_minutos = var_minutos;
global.var_horas = var_horas;

global.var_gamespeed_factor = var_gamespeed_factor/room_speed;