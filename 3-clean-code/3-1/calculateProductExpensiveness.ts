export interface Product {
    name: string;
    price: number;
}
  
export function calculateProductExpensiveness(products: Product[]): void {
    products.filter(product => product.price > 100)
            .forEach(expensiveProduct => console.log(`${expensiveProduct.name} is expensive`));
}