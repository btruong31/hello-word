let x, y; // Position of the star
let vx, vy; // Velocity of the star
let diameter = 50; // Diameter of the star
let speed = 5; // Speed of the star

function setup() {
  createCanvas(800, 600);
  // Initialize position randomly within canvas bounds
  x = random(diameter, width - diameter);
  y = random(diameter, height - diameter);
  // Initialize velocity randomly
  vx = random(-speed, speed);
  vy = random(-speed, speed);
}

function draw() {
  background(220);
  
  // Draw the star
  drawStar(x, y, diameter);
  
  // Update position based on velocity
  x += vx;
  y += vy;
  
  // Check for collisions with edges
  if (x + diameter / 2 >= width || x - diameter / 2 <= 0) {
    vx *= -1; // Reverse velocity if hitting horizontal edge
  }
  if (y + diameter / 2 >= height || y - diameter / 2 <= 0) {
    vy *= -1; // Reverse velocity if hitting vertical edge
  }
}

// Function to draw a star
function drawStar(x, y, diameter) {
  let angle = TWO_PI / 5;
  let halfAngle = angle / 2.0;
  beginShape();
  for (let a = -PI / 2; a < TWO_PI - PI / 2; a += angle) {
    let sx = x + cos(a) * diameter / 2;
    let sy = y + sin(a) * diameter / 2;
    vertex(sx, sy);
    sx = x + cos(a + halfAngle) * diameter / 4;
    sy = y + sin(a + halfAngle) * diameter / 4;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
