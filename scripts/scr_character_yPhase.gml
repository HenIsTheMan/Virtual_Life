//can be upgraded
path = path_add();
path_add_point(path,x,y,100);
path_add_point(path,x,y+76*(d - c),100);
path_set_closed(path,false);
path_start(path,round(200*deltaTime/1000000),"",true);
