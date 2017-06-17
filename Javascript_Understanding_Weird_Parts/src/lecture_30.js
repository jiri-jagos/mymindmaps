var person = new Object(); // NOT Preferred way to create instantiate objects, for educational purposes only

person["firstname"] = "Tony"; // one way to set / access object's members
person["lastname"] = "Boney";

var propertyName = "lastname";

console.log(person);
console.log(person[propertyName]);

// >>> Object
    firstname: "Tony"
    lastname: "Boney"
    __proto__: Object
// >>> Boney

console.log(person.firstname); // Accessing the `firstname` property with the `dot` operator (`.`)

// >>> Tony

person.address = new Object();
person.address.street = "111 Main St."; // The `.` operator is left-to-right associative
person.address.city = "New York";
person.address.state = "NY";

console.log(person.address.street); // Preferred way when accessing static nested objects / properties
console.log(person["address"]["city"]); // Preferred way when accessing dynamic nested objects / properties

// >>> 111 Main St.
// New York
