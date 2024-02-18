let numPoints = 10; // Number of points
let points = []; // Array to store points

function setup() {
  createCanvas(800, 600); // Canvas size
  // Generate evenly distributed points across the canvas
  for (let i = 0; i < numPoints; i++) {
    points.push(createVector(width / (numPoints + 1) * (i + 1), height / 2));
  }
}

function draw() {
  background(220);
  
  // Draw lines from mouse cursor to each point
  for (let i = 0; i < numPoints; i++) {
    let point = points[i];
    line(mouseX, mouseY, point.x, point.y);
  }
  
  // Draw points
  for (let i = 0; i < numPoints; i++) {
    let point = points[i];
    ellipse(point.x, point.y, 10, 10);
  }
}

