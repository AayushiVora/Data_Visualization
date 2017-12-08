// This code is referred from https://github.com/CodingTrain/Rainbow-Code/tree/master/CodingChallenges/CC_58_EarthQuakeViz3D

float angle;

Table table;
float r = 200;

PImage earth;
PShape globe;

void setup() {
  size(1000, 1000, P3D);
  earth = loadImage("earth.jpg");
  table = loadTable("TransformedData.csv", "header");

  noStroke();
  globe = createShape(SPHERE, r);
  globe.setTexture(earth);
}

void draw() {
  background(51);
  translate(width*0.5, height*0.5);
  rotateY(angle);
  angle += 0.01;

  lights();
  fill(200);
  noStroke();
  //sphere(r);
  shape(globe);

  for (TableRow row : table.rows()) {
    float lon = row.getFloat("latitude");
    float lat = row.getFloat("longitude");
    float mag = row.getFloat("mag");
    
    float theta = radians(lat) + PI/2;
    float phi = radians(lon) + PI;
    float x = r * sin(theta) * cos(phi);
    float y = -r * sin(theta) * sin(phi);
    float z = r * cos(theta);
    PVector pos = new PVector(x, y, z);
    float h = pow(10, mag);
    float maxh = pow(10, 7);
    h = map(h, 0, maxh, 10, 100);
   
    
    PVector xaxis = new PVector(1, 0, 0);
    float angleb = PVector.angleBetween(xaxis, pos);
    PVector raxis = xaxis.cross(pos);


    pushMatrix();
    translate(x, y, z);
    rotate(angleb, raxis.x, raxis.y, raxis.z);
    fill(255,0,0);
    box(h, 5, 5);
    popMatrix();
  }  
}

// This code is referred from https://github.com/CodingTrain/Rainbow-Code/tree/master/CodingChallenges/CC_58_EarthQuakeViz3D