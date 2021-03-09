if(place_meeting(x,y+1,obj_soil)){
    path = path_add();
    path_add_point(path,x,y,100);
    if(!position_meeting(x,y,obj_soil)){
        path_add_point(path,x,instance_place(x,y+1,obj_soil).y,100);
    }
    soil = instance_place(obj_character.x,obj_character.y+19+1,obj_soil);
    if(soil != noone){
        path_add_point(path,x,soil.y,100);
        path_add_point(path,soil.x,soil.y,100);
        path_add_point(path,soil.x,soil.y-38,100);
    }
    path_set_closed(path,false);
    path_start(path,5,"",true);
    /*for(n = 76;n < path_get_number(path) - 76;n++){
        if(!position_meeting(path_get_point_x(path,n),path_get_point_y(path,n),obj_soil)){
            break;
        } else if(n = path_get_number(path) - 76){
            path_start(path,5,path_action_stop,true);
        }
    }*/
}
