// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function keyboard_check_ext(){
/// keyboard_check_ext(array_with_keys);
/// @desc   Is one of multiple keys held down?
/// @arg    array_with_keys
var _array = argument0;
if (!is_array(_array)) {
    return keyboard_check(_array);
}

var _length = array_length_1d(_array);
for(var i=0; i<_length; i++){
    if (keyboard_check(_array[i])) {
        return 1;
    }
}
return 0;
}