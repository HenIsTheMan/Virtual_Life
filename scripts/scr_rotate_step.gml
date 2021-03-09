if(position_meeting(mouse_x,mouse_y,self) && obj_character.on % 12 == 1 && global.countQuick[obj_character.on] % 2 == 0){
    if(mouse_check_button_pressed(mb_left)){
        rotation++;
        rotation %= 4;
    }
    if(mouse_check_button_pressed(mb_right)){
        rotation += 4;
        rotation--;
        rotation %= 4;
    }
}
