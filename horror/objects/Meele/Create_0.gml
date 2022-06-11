function Arma_melee(_name,_quantidade,_descricao,_Sprite,_ID,_Peso,_Durabilidade,_Tipo,_Objeto) constructor {
			myItemName			= _name;
			myItemAmount		= _quantidade;
			myItemDescription	= _descricao;
			myItemSprite		= _Sprite;
			myItemID			= _ID;
			myItemPeso			= _Peso;
			myItemDurabilidade  = _Durabilidade;
			myItemTipo			= _Tipo;
			myItemObjeto		= _Objeto;
}
 
global.item_Faca_01 = new Arma_melee("Faca",1,"Uma faca média de cozinha.",sFaca,"ID:FACA_1",50,"PERFEITO","CATEGORIA:ARMAS",oFaca);
global.item_KATANA_1 = new Arma_melee("Katana",1,"Uma fina lamina oriental. Uma boa arma.",sKatana,"ID:KATANA_1",50,"PERFEITO","CATEGORIA:ARMAS",oKatana);