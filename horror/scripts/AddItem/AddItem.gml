// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddItem(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8,argument9){
/// @description Adicionar Item pro Grid
/// @argument0 DsGrid Grid_To_Add
/// @argument1 Item_name
/// @argument2 Item_Amount
/// @argument3 Item_Description
/// @argument4 Item_Sprite
/// @argument5 Script Item_Script
/// @argument6 Peso Item_Peso
/// @argument7 Durabilidade Item_Durabilidade
/// @argument8 Tipo Item_Tipo
/// @argument8 Tipo Objeto

gridToAddTo  = argument0;
newItemName = argument1;
newItemAmount = argument2;
newItemDescription = argument3;
newItemSprite = argument4;
newItemID = argument5;
newItemPeso = argument6;
newItemDurabilidade = argument7;
newItemTipo = argument8;
newItemObjeto = argument9;


//caso ele já esteja no inventario

for (var i = 0; i < ds_grid_height(gridToAddTo); ++i) 
{
    if(ds_grid_get(gridToAddTo,0,i) == newItemName)
	{
		ds_grid_set(gridToAddTo,1,i,ds_grid_get(gridToAddTo,1,i) + newItemAmount)
		ds_grid_set(gridToAddTo,5,i,ds_grid_get(gridToAddTo,5,i) + newItemPeso)
		global.capacidadeAtual += newItemPeso;
		return true;
	}	
};


//caso seja um item novo

if(ds_grid_get(gridToAddTo,0,0) != 0)
{
ds_grid_resize(gridToAddTo,playerInventoryWidth,ds_grid_height(gridToAddTo) + 1);
}
global.capacidadeAtual += newItemPeso;
newItemSpot = ds_grid_height(gridToAddTo) - 1;
ds_grid_set(gridToAddTo,0,newItemSpot,newItemName);
ds_grid_set(gridToAddTo,1,newItemSpot,newItemAmount);
ds_grid_set(gridToAddTo,2,newItemSpot,newItemDescription);
ds_grid_set(gridToAddTo,3,newItemSpot,newItemSprite);
ds_grid_set(gridToAddTo,4,newItemSpot,newItemID);
ds_grid_set(gridToAddTo,5,newItemSpot,newItemPeso);
ds_grid_set(gridToAddTo,6,newItemSpot,newItemDurabilidade);
ds_grid_set(gridToAddTo,7,newItemSpot,newItemTipo);
ds_grid_set(gridToAddTo,8,newItemSpot,newItemObjeto);
return true;

}