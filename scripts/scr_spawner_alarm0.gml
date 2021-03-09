switch(rotation){
    case 0: xPos = x; yPos = y - 38; break;
    case 1: xPos = x - 38; yPos = y; break;
    case 2: xPos = x; yPos = y + 38; break;
    case 3: xPos = x + 38; yPos = y; break;
}

if(place_free(xPos,yPos) && !place_meeting(xPos,yPos,obj_platform)){
    instance_create(xPos,yPos,item);
}
alarm[0] = 1000000/delta_time;
