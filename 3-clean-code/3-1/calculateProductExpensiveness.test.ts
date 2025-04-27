import { calculateProductExpensiveness } from './calculateProductExpensiveness';

describe('calculateProductExpensiveness', () => {
  it('should print items with price greater than 100', () => {
    const consoleSpy = jest.spyOn(console, 'log').mockImplementation();

    const testItems = [
      { name: 'Cheap product', price: 80 },
      { name: 'Expensive product', price: 150 },
      { name: 'Expensive product premium plus', price: 300 }
    ];

    calculateProductExpensiveness(testItems);

    expect(consoleSpy).toHaveBeenCalledTimes(2);
    expect(consoleSpy).toHaveBeenCalledWith('Expensive product is expensive');
    expect(consoleSpy).toHaveBeenCalledWith('Expensive product premium plus is expensive');

    consoleSpy.mockRestore();
  });
});