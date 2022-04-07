function enemy_idle_ship() {
	
			counter += 1;
				spd = .4;
					if (collision_circle(x, y, 128, obj_player, false, false)) {
						state = states.attack;
					}
					// Sprite
					sprite_index = spr_ship;
		



}
