export function transformToPositive(values: number[]): number[] {
    return values.map(n => Math.abs(n));
}

// Tests
const data = [-1, 2, -3, 4];
const result = transformToPositive(data);

console.log(result);  // [ 1, 2, 3, 4 ]
console.log(data); // [ -1, 2, -3, 4 ]