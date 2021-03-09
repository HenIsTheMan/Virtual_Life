hp = 30;
path = path_add();
path_add_point(path,x,y,100);
path_add_point(path,xstart,ystart,100);
path_set_closed(path,false);
path_start(path,round(500*deltaTime/1000000),"",true);

if(path_index == -1){
    state = states.normal;
}
