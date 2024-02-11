let nounInput, verbInput, adjectiveInput;
let submitButton, clearButton;
let filledMadlib = "";
let madlibSentence = "The [adjective] is going to win the Superbowl.";

function setup() {
  createCanvas(400, 200);
  
  // Create input fields
  nounInput = createInput();
  nounInput.position(20, 50);
  verbInput = createInput();
  verbInput.position(150, 50);
  adjectiveInput = createInput();
  adjectiveInput.position(280, 50);

  // Create submit button
  submitButton = createButton('Submit');
  submitButton.position(20, 100);
  submitButton.mousePressed(generateMadlib);

  // Create clear button
  clearButton = createButton('Clear');
  clearButton.position(100, 100);
  clearButton.mousePressed(clearInputs);
}

function draw() {
  background(220);

  // Display the madlib sentence with user inputs
  textSize(16);
  textAlign(LEFT);
  fill(0);
  text("Enter a noun:", 20, 30);
  text(madlibSentence, 20, 150);
  text(filledMadlib, 20, 180);
}

function generateMadlib() {
  let noun = nounInput.value();
  let verb = verbInput.value();
  let adjective = adjectiveInput.value();

  // Fill in the blank in the madlib sentence
  filledMadlib = madlibSentence.replace("[noun]", noun)
                               
}

function clearInputs() {
  // Clear all input fields and the filled madlib
  nounInput.value('');
  verbInput.value('');
  adjectiveInput.value('');
  filledMadlib = '';
}

