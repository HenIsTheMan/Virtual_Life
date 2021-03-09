with(instance_nearest(x,y,obj_soil)){
    instance_change(obj_infectiousSoil,true);
}
alarm[0] = 3 * 1000000/delta_time;
