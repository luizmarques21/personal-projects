export abstract class View<T> {
    protected elemento: HTMLElement;

    constructor(seletor: string) {
        this.elemento = <HTMLElement>document.querySelector(seletor);
    }

    public update(model: T): void {
        let template = this.template(model);
        this.elemento.innerHTML = template;
    }

   protected abstract template(model: T): string;
}