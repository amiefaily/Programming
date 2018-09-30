boolean moveLeft;
boolean moveRight;



void keyPressed()
{
	println(keyCode);

	if (key == CODED) {
		if (keyCode == RIGHT) {
			moveRight = true;
		}
		else if (keyCode == LEFT) {
			moveLeft = true;
		}
	}

	}
void keyReleased()
{
		if (key == 'a') {
		position.x += 5;
		moveRight = false;
	}
	else if (key == 'a') {
		moveLeft = false;
	}
}
	float getAxisRaw(String axis)
	{
		if ( axis == "Horizontal")
			if (moveLeft) {
				return -1;
			}
			if (moveRight) {
				return 1;
			}

		return 0;
		
}