deltaTime = min(delta_time,1000000/30);
if(place_free(x,y+round(vSpeed*(deltaTime/1000000)))){
    vSpeed += 10;
}
        
if(!place_free(x,y+round(vSpeed*(deltaTime/1000000)))){
    while(place_free(x,y+sign(vSpeed))){
        y += sign(vSpeed);
    }
    vSpeed = 0;
}

y += round(vSpeed*(deltaTime/1000000));
y = clamp(y,0,room_height-76);
