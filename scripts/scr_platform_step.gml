if(mouse_check_button_pressed(mb_left) && point_in_circle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),1178,646,38) && place_meeting(x,y-1,obj_character)){
    fall = true;
} else if(y < obj_character.y + 19){
    fall = false;
}

if(fall || y < obj_character.y + 19){
    solid = false;
} else{
    solid = true;
}
