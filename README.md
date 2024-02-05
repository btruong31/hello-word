function setup() {
  createCanvas(400, 400);
  background(255); // White background
}

function draw() {
  translate(width / 2, height / 2); // Move the origin to the center

  let numVertices = 10; // Number of vertices in the polygon
  let radiusLong = 100; // Long radius
  let radiusShort = 50; // Short radius

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
