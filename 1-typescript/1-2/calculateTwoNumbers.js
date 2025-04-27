"use strict";
exports.__esModule = true;
exports.calculateTwoNumbers = void 0;
function calculateTwoNumbers(operation, x, y) {
    switch (operation) {
        case 'add':
            return x + y;
        case 'subtract':
            return x - y;
        case 'multiply':
            return x * y;
        case 'divide':
            if (y === 0)
                throw new Error('Division by zero.');
            return x / y;
        default:
            throw new Error('Invalid operation.');
    }
}
exports.calculateTwoNumbers = calculateTwoNumbers;
// Tests
console.log(calculateTwoNumbers('add', 10, 5)); // 15
console.log(calculateTwoNumbers('subtract', 10, 5)); // 5
console.log(calculateTwoNumbers('multiply', 10, 5)); // 50
console.log(calculateTwoNumbers('divide', 10, 5)); // 2
try {
    var result = calculateTwoNumbers('divide', 10, 0);
    console.log(result);
}
catch (err) {
    console.error(err.message); // Error: Division by zero.
}
try {
    var result = calculateTwoNumbers('module', 10, 3);
    console.log(result);
}
catch (err) {
    console.error(err.message); // Error: Invalid operation.
}
