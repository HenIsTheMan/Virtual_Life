deltaTime = min(delta_time,1000000/30);
blackHole = instance_nearest(x,y,obj_blackHole);
path = path_add();
path_add_point(path,x,y,100);
path_add_point(path,blackHole.x+19,blackHole.y+19,100);
path_set_closed(path,0);
path_start(path,round(200*deltaTime/1000000),"",true);
if(point_distance(x,y,blackHole.x+19,blackHole.y+19) = 0){
    hp = 0;
}

if(path_index == -1){
    state = states.normal;
}
