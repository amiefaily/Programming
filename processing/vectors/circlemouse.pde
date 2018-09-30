class Mover {
PVector location;
PVector velocity;
PVector acceleration;


Mover() {
	location = new PVector (width/2, height/2);
	velocity = new PVector (0, 2);
	acceleration = new PVector (0, 2, 0);
	}

void update() {

	acceleration = PVector.random2D();


	velocity.add(acceleration)
	location.add(velocity)
	velocity.limit(5)

}
}