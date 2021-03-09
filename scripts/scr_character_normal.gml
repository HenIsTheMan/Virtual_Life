if(!place_free(x+round(hSpeed*(b - a)*deltaTime/1000000),y)){
    while(place_free(x+(b - a),y)){
        x += (b - a);
    }
    hSpeed = 0;
}

if(!place_free(x,y+round(vSpeed*deltaTime/1000000))){
    while(place_free(x,y+sign(vSpeed))){
        y += sign(vSpeed);
    }
    vSpeed = 0;
}

x += round(hSpeed*(b - a)*deltaTime/1000000);
y += round(vSpeed*deltaTime/1000000);
