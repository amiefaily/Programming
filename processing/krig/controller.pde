class Controller {
 int numberOfHumans = 100;
 Human[] humans;
 float size = 30;
 float posX = width/2;
 float posY = height/2;


 Controller (){
 humans = new Human[numberOfHumans];
 creatingHumans();
 }

void creatingHumans(){

	for(int i = 0; i < humans.length; i++)
		humans[i] = new Human(size, random(0, 1024), random(0, 800));
	humans[0] = new Zombie(30, width/2, height/2, 255);
	
}

void update(){
	for(int i = 0; i < humans.length; i++){
		humans[i].update();
		humans[i].draw();
	}

}

void checkBoarders(){
	for(Human human : humans){
	if (human.position.x > width) human.position.x = 0;
	if (human.position.y > height) human.position.y = 0;
	if (human.position.x < 0) human.position.x = width;
	if (human.position.y < 0) human.position.y = height;
	}
}

boolean checkCollision(float x1, float y1, float size1, float x2, float y2, float size2){
	float maxDistance = (size1 + size2) / 2;

	if(abs(x1 - x2) > maxDistance) return false;
	if(abs(y1 - y2) > maxDistance) return false;
	if(dist(x1, y1, x2, y2) > maxDistance) return false;
	return true;
}

void collision(){

	for(int i = 0; i < humans.length; i++){
		for (int j = 0 + 1; j < humans.length; j++){
			if(humans[i] instanceof Zombie ^ humans[j] instanceof Zombie){
				boolean hasCollided = checkCollision(
													humans[i].position.x,
													humans[i].position.y,
													humans[i].size,	
					
													humans[j].position.x,
													humans[j].position.y,
													humans[j].size);

			if(hasCollided && humans[i] instanceof Zombie){
				humans[j] = new Zombie(30, humans[j].position.x, humans[j].position.y, 255);
			}
			if(hasCollided && humans[j] instanceof Zombie){
				humans[j] = new Zombie(30, humans[j].position.x, humans[j].position.y, 255);
			}	
			}
		}
	}
}

}