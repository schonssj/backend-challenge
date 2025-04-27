export function c(x: number[]): number[] {
    const r: number[] = [];
    for (let i = 0; i < x.length; i++) {
        if (x[i] % 2 === 0) {
            r.push(x[i] * 2);
        }
    }
    return r;
}