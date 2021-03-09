//can be upgraded
path = path_add();
path_add_point(path,x,y,100);
path_add_point(path,x+76*(b - a)-10*(b - a),y,100);
path_set_closed(path,false);
path_start(path,round(200*deltaTime/1000000),"",true);
