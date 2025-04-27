export function calculateDiscount(price: number, isPremium: boolean): number {
    if (isPremium) {
      return applyPremiumDiscount(price);
    }
    return applyRegularDiscount(price);
}
  
function applyPremiumDiscount(price: number): number {
    return price > 100 ? price * 0.8 : price * 0.9;
}

function applyRegularDiscount(price: number): number {
    return price > 100 ? price * 0.9 : price;
}