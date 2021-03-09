if(place_meeting(x,y-1,obj_chomper) || (distance_to_object(obj_bomb) <= 76 && obj_bomb.alarm[0] == -1)){
    instance_destroy();
}

if(mouse_check_button(mb_left) && position_meeting(mouse_x,mouse_y,self) && distance_to_object(obj_character) <= 76 && obj_character.on == 0){
    if(global.countQuick[0] % 2 == 0 && alarm[0] == -1){
        grabTime--;
        alarm[0] = 10;
    } else if(global.countQuick[0] & 1 && alarm[1] == -1){
        bHealth--;
        alarm[1] = 10;
    }
}

if(mouse_check_button_released(mb_left) || !position_meeting(mouse_x,mouse_y,self)){
    grabTime = 5;
}

if(grabTime == 0){
    instance_destroy();
    for(i = 2;i < 18;i++){
        if(global.thingsQuick[i] == object_index){
            global.countQuick[i]++;
            break;
        } else if(i == 17){
            for(index = 2;index < 18;index++){
                if(global.countQuick[index] == 0){
                    global.thingsQuick[index] = object_index;
                    global.countQuick[index]++;
                    break;
                }
            }
        }
    }
} //add to inv??

if(bHealth == 0){
    instance_destroy();
    randomize();
    if(irandom(4) == 4){ //20% chance
        tile_add(tile_jewel,0,0,38,38,x,y,0);
    }
}
