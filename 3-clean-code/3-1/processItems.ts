export function processItems(items: any[]) {
    for (let i = 0; i < items.length; i++) {
        if (items[i].price > 100) {
            console.log(items[i].name + ' is expensive');
        }
    }
}