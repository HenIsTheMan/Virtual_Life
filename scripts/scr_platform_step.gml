if(y < obj_character.y + 19 || keyboard_check_pressed(ord("S")) || (mouse_check_button_pressed(mb_left) && point_in_circle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),1178,646,38))){
    solid = 0;
}
if(y > obj_character.y + 19){
    solid = 1;
}
