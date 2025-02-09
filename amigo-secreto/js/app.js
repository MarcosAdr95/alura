const elInputAmigos = document.getElementById('nome-amigo');
const elListaAmigos = document.getElementById('lista-amigos');
const elListaSorteados = document.getElementById('lista-sorteio');

function adicionar() {
    const nome = elInputAmigos.value;
    const pessoasParticipantes = elListaAmigos.textContent;

    if(!nome)
        return alert('Você deve preencher um nome');

    if(nome.includes(','))
        return alert('O nome não pode ter virgula');

    if(pessoasParticipantes.includes(nome))
        return alert('O nome já foi incluído');

    elListaAmigos.textContent+=`${pessoasParticipantes == '' ? '' : ','}${nome}`;

    elInputAmigos.value = '';
}

function sortear() {
    let resultadoDoSorteio = '';
    const listaParticipantes = elListaAmigos.textContent.split(',');
    let totalParticipantes = listaParticipantes.length;
    const numerosSorteados = [];

    if(totalParticipantes <= 0)
        return alert('Nenhuma pessoa existente na lista');

    if(totalParticipantes % 2 != 0)
        return alert('Devemos ter um número total de participantes que seja par(2, 4, 6, 8, 10, ...) para que ninguém seja excluído');

    for(let i = listaParticipantes.length-1; 0 <= i; i--) {
        let random;
        let resultadoValido = false;

        do {
            random = parseInt(Math.random() * listaParticipantes.length);

            if(i != random && !numerosSorteados.includes(random)) {
                numerosSorteados.push(random);
                resultadoDoSorteio += `${listaParticipantes[i]} -> ${listaParticipantes[random]}<br>`;
                resultadoValido = true;
            }
            
        } while(!resultadoValido)
    }

    elListaSorteados.innerHTML = resultadoDoSorteio;
}

function reiniciar() {
    elInputAmigos.value = '';
    elListaAmigos.textContent = '';
    elListaSorteados.innerHTML = '';
}