const listarClientes = () => {
  return fetch("http://localhost:4000/clientes")
    .then( resposta => {
      return resposta.json();
    })
    .then(json => {
      return json;
    });
};

const cadastrarClientes = (nome, cpf) => {
    const json = JSON.stringify({
        nome: nome,
        cpf: cpf
    });
    
    return fetch('http://localhost:4000/clientes/cliente', {
        method: 'post',
        headers: {
            'Content-type': 'application/json'
        },
        body: json
    })
    .then(resposta => {
        return resposta.body;
    });
}

const deletaCliente = id => {
    return fetch(`http://localhost:4000/clientes/cliente/${id}`, {
        method: 'delete'
    });
}

const detalhaCliente = id => {
    return fetch(`http://localhost:4000/clientes/cliente/${id}`)
    .then(resposta => {
        return resposta.json();
    })
    .then(json => {
        return json;
    });
}

const editaCliente = (id, cpf, nome) => {
    const json = JSON.stringify({
        nome: nome,
        cpf: cpf
    });

    return fetch(`http://localhost:4000/clientes/cliente/${id}`, {
        method: 'put',
        headers: {
            'Content-Type': 'application/json'
        },
        body: json
    })
    .then(resposta => {
        return resposta;
    });
}

export {
    listarClientes,
    cadastrarClientes,
    deletaCliente,
    detalhaCliente,
    editaCliente
}