if (global.pause) exit;

alarm_set(0, 10);

direction = choose(135,90,45,180,0,225,270,315);

speed = 1;

event_user(0);