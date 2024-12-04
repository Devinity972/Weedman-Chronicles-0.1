function PlayerCollision()
{
var _collision = false;
	//Macros can't have operations applied to them in this version
var tilesize = TILE_SIZE;
		//Horizontal
if (tilemap_get_at_pixel(collisionMap,x+hSpeed,y))
	{
		x -= x mod tilesize;
		if (sign(hSpeed) == 1) x += tilesize - 1;
		hSpeed = 0;
		_collision = true;
	}
	x += hSpeed;

		//Vertical
	if (tilemap_get_at_pixel(collisionMap,x,y+vSpeed))
	{
		y -= y mod tilesize;
		if (sign(vSpeed) == 1) y += tilesize - 1;
		vSpeed = 0;
		_collision = true;
	}
	y += vSpeed;
	//Return state of collision flag when done
return _collision;
}

