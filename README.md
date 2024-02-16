let rotationAngle = 0;
let starRadius;
let spinning = false;

function setup() {
  createCanvas(400, 400);
  background(255); // White background
  starRadius = 100; // Set star radius
}

function draw() {
  translate(width / 2, height / 2); // Move the origin to the center

  let numVertices = 10; // Number of vertices in the polygon
  let radiusLong = starRadius; // Long radius
  let radiusShort = starRadius / 2; // Short radius

  // Clear the background
  background(255);
  
  // Apply rotation if spinning is true
  if (spinning) {
    rotationAngle += 0.01;
  }

  // Apply rotation
  rotate(rotationAngle);

  beginShape();
  for (let i = 0; i < numVertices * 2; i++) {
    let radius = i % 2 === 0 ? radiusLong : radiusShort; // Alternating radii
    let angle = map(i, 0, numVertices * 2, 0, TWO_PI); // Calculate angle

    let x = radius * cos(angle); // Calculate x-coordinate
    let y = radius * sin(angle); // Calculate y-coordinate

    vertex(x, y); // Plot vertex
  }
  endShape(CLOSE);
}

function mouseClicked() {
  // Check if mouse is within the boundaries of the star
  let d = dist(mouseX, mouseY, width / 2, height / 2);
  if (d < starRadius) {
    // Toggle spinning
    spinning = !spinning;
  }
}
