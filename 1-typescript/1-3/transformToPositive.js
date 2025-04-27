"use strict";
exports.__esModule = true;
exports.transformToPositive = void 0;
function transformToPositive(values) {
    return values.map(function (n) { return Math.abs(n); });
}
exports.transformToPositive = transformToPositive;
// Tests
var data = [-1, 2, -3, 4];
var result = transformToPositive(data);
console.log(result); // [1, 2, 3, 4]
console.log(data); // [-1, 2, -3, 4];
