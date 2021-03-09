image_speed = 15 * delta_time/1000000;

if(place_meeting(x,y,obj_character)){
    instance_destroy();
    obj_character.jewelsToBeAdded += 50;
    obj_character.alarm[0] = 0.1 * 1000000/delta_time;
}
