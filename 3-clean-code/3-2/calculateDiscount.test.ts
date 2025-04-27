import { calculateDiscount } from './calculateDiscount';

describe('calculateDiscount', () => {
  it('should apply 20% discount for premium customers when price is greater than 100', () => {
    expect(calculateDiscount(200, true)).toBe(160);
  });

  it('should apply 10% discount for premium customers when price is greater than 100', () => {
    expect(calculateDiscount(80, true)).toBe(72);
  });

  it('should apply 10% discount for normal customers when price is greater than 100', () => {
    expect(calculateDiscount(150, false)).toBe(135);
  });

  it('should not apply discount for normal customers when priec is smaller than 100', () => {
    expect(calculateDiscount(90, false)).toBe(90);
  });
});