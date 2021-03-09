switch(rotation){
    case 0: xPos = x; yPos = y; break;
    case 1: xPos = x; yPos = y + 38; break;
    case 2: xPos = x + 38; yPos = y + 38; break;
    case 3: xPos = x + 38; yPos = y; break;
}

if(item != noone){
    draw_sprite_stretched(object_get_sprite(item),0,x+9.5,y+9.5,19,19);
}
draw_sprite_ext(sprite_index,0,xPos,yPos,1,1,90*rotation,c_white,1);
