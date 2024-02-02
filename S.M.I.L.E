function setup() {
  createCanvas(200, 200);
  background(255); // White background
}

function draw() {
  // Draw a circle
  fill(0); // Black fill
  ellipse(100, 100, 80, 80);

  // Draw a rectangle
  fill(255); // White fill
  rect(50, 40, 100, 120);

  // Draw text labels
  fill(0); // Black text
  textSize(14);
  textAlign(CENTER, CENTER);
  text("Geometry", 100, 20);
  text("Basics", 100, 180);
}



