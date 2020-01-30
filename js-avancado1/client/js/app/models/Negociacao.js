class Negociacao {

    constructor(data, quantidade, valor) {
        this.data = new Date(data.getTime());
        this._quantidade = quantidade;
        this._valor = valor;
        Object.freeze(this);
    }

    getVolume() {
        return this._quantidade * this._valor;
    }

    getData() {
        return this.data;
    }

    get quantidade() {
        return this._quantidade;
    }

    get valor() {
        return this._valor;
    }

}