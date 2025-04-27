function calculateDiscount(price: number, isPremium: boolean): number {
    if (isPremium) {
        if (price > 100) {
            return price * 0.8;
        } else {
            return price * 0.9;
        }
    } else {
        if (price > 100) {
            return price * 0.9;
        } else {
            return price;
        }
    }
}