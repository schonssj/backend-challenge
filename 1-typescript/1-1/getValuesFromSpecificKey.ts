export function getValuesFromSpecificKey<T, K extends keyof T>(data: T[], key: K): T[K][] {
    return data.map(value => value[key]);
}

// Tests
const data = [
    { id: 1, name: 'Alice' },
    { id: 2, name: 'Bob' }
];

console.log(getValuesFromSpecificKey(data, 'name')); // [ 'Alice', 'Bob' ]
console.log(getValuesFromSpecificKey(data, 'id')); // [ 1, 2 ]