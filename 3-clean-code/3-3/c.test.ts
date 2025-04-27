import { c } from './c';

describe('c', () => {
  it('should double only even numbers', () => {
    const input = [1, 2, 3, 4, 5, 6];
    const expected = [4, 8, 12];
    expect(c(input)).toEqual(expected);
  });

  it('should return an empty array when it has no even numbers', () => {
    const input = [1, 3, 5, 7];
    const expected: number[] = [];
    expect(c(input)).toEqual(expected);
  });

  it('should return correct array when all numbers are even', () => {
    const input = [2, 4, 6];
    const expected = [4, 8, 12];
    expect(c(input)).toEqual(expected);
  });

  it('should return an empty array when the entry is an empty array', () => {
    const input: number[] = [];
    const expected: number[] = [];
    expect(c(input)).toEqual(expected);
  });
});