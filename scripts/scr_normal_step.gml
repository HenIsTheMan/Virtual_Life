if(place_meeting(x,y-1,obj_chomper) || (distance_to_object(obj_bomb) <= 76 && obj_bomb.alarm[0] == -1)){
    instance_destroy();
}

if(mouse_check_button(mb_left) && position_meeting(mouse_x,mouse_y,self) && distance_to_object(obj_character) <= 76 && global.on % 12 == 0){
    if(~global.amts[? global.items[| global.on]] & 1 && alarm[0] == -1){
        grabTime--;
        alarm[0] = 0.2 * 1000000/delta_time;
    }
    if(global.amts[? global.items[| global.on]] & 1 && alarm[1] == -1){
        bHealth--;
        alarm[1] = 0.2 * 1000000/delta_time;
    }
} else if(!mouse_check_button(mb_left) || !position_meeting(mouse_x,mouse_y,self)){
    grabTime = 5;
}

if(grabTime == 0){
    instance_destroy();
    for(i = 2;i < 36;i++){
        if(global.items[| i] = object_index && i % 12 > 1){
            global.amts[? global.items[| i]]++;
            break;
        } else if(global.amts[? global.items[| i]] = 0 && index = 0 && i % 12 > 1 && i div 12 == obj_character.page){
            index = i;
        } else if(i = 35){
            global.items[| index] = object_index;
            global.amts[? global.items[| index]]++;
        }
    }
}

if(bHealth == 0){
    instance_destroy();
    if(irandom(4) == 4){
        instance_create(x,y,obj_jewel);
    }
}

if(distance_to_object(obj_blackHole) <= sqrt(2)){
    deltaTime = min(delta_time,1000000/30);
    blackHole = instance_nearest(x,y,obj_blackHole);
    path = path_add();
    path_add_point(path,x,y,100);
    path_add_point(path,blackHole.x,blackHole.y,100);
    path_set_closed(path,0);
    path_start(path,round(200*deltaTime/1000000),"",true);
    if(point_distance(x,y,blackHole.x,blackHole.y) = 0){
        instance_destroy();
    }
}
