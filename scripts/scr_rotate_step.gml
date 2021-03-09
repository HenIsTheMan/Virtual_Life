if(position_meeting(mouse_x,mouse_y,self) && global.on % 12 == 1 && ~global.amts[? global.items[| global.on]] & 1){
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
