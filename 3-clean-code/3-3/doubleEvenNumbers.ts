export function doubleEvenNumbers(numbers: number[]): number[] {
    return numbers.filter(number => number % 2 === 0)
                  .map(number => number * 2);
}