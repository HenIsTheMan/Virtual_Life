vectorAngle = point_direction(x,y,obj_character.x,obj_character.y);
while(image_angle < vectorAngle){
    image_angle++;
}
while(image_angle > vectorAngle){
    image_angle--;
}

grid = mp_grid_create(0,0,room_width/38,room_height/38,38,38);
path = path_add();
mp_grid_add_instances(grid,obj_soil,0);
mp_grid_path(grid,path,x,y,obj_character.x,obj_character.y,1);
path_start(path,3,"",1);

if(!place_free(x,y)){
    instance_destroy();
}
