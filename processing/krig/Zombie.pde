public class Zombie extends Human{
	int g;

	Zombie(float size, float x, float y, int g){
		super(size, x, y);
		this.g = g;

	}

	void draw(){
		fill(0,g,0);
		ellipse(position.x, position.y, size, size);
	}
}