if(place_meeting(x,y-1,obj_chomper) || (distance_to_object(obj_bomb) <= 76 && obj_bomb.alarm[0] == -1)){
    instance_destroy();
}

if(mouse_check_button(mb_left) && position_meeting(mouse_x,mouse_y,self) && distance_to_object(obj_character) <= 76 && obj_character.on % 12 == 0){
    if(global.countQuick[obj_character.on] % 2 == 0 && alarm[0] == -1){
        grabTime--;
        alarm[0] = 0.2 * 1000000/delta_time;
    } else if(global.countQuick[obj_character.on] & 1 && alarm[1] == -1){
        bHealth--;
        alarm[1] = 0.2 * 1000000/delta_time;
    }
}

if(mouse_check_button_released(mb_left) || !position_meeting(mouse_x,mouse_y,self)){
    grabTime = 5;
}

if(grabTime == 0){
    instance_destroy();
    for(i = 2;i < 36;i++){
        if(global.thingsQuick[i] = object_index && i % 12 > 1){
            global.countQuick[i]++;
            break;
        } else if(global.countQuick[i] = 0 && index = 0 && i % 12 > 1 && i div 12 == obj_character.page){
            index = i;
        } else if(i = 35){
            global.thingsQuick[index] = object_index;
            global.countQuick[index]++;
        }
    }
} //add to inv??

if(bHealth == 0){
    instance_destroy();
    if(irandom(4) == 4){ //20% chance
        instance_create(x,y,obj_jewel);
    }
}
