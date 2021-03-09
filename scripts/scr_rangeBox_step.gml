x = (xPos + obj_character.x div 38)*38;
y = (yPos + obj_character.y div 38)*38;

if(!place_empty(x,y) || obj_character.on % 12 < 2){
    visible = false;
} else{
    visible = true;
    if(mouse_check_button(mb_left) && position_meeting(mouse_x,mouse_y,self) && !(obj_character.inv & 1) && !point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),152,608,152+76*12,608+76)){
        instance_create(x,y,global.thingsQuick[obj_character.on]);
        global.countQuick[obj_character.on]--;
    }
}
