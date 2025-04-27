"use strict";
exports.__esModule = true;
exports.getValuesFromSpecificKey = void 0;
function getValuesFromSpecificKey(data, key) {
    return data.map(function (value) { return value[key]; });
}
exports.getValuesFromSpecificKey = getValuesFromSpecificKey;
// Tests
var data = [
    { id: 1, name: 'Alice' },
    { id: 2, name: 'Bob' }
];
console.log(getValuesFromSpecificKey(data, 'name')); // [ 'Alice', 'Bob' ]
console.log(getValuesFromSpecificKey(data, 'id')); // [ '1', '2' ]
