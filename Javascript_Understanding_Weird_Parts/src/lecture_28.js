function greet(name) {
    console.log('Hello ' + name);
}

greet();

// >>> undefined
// >>> Hello undefined // Here the `undefined` type was coerced to string

function greetWithDefault(name) { // In ES6 there will be syntax for setting default value
    name = name || '[your name here]'; // Neat trick to set the default value
    
    console.log('Hello ' + name);
}

greetWithDefault();

// >>> Hello [your name here]
