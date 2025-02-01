const quantidade = document.getElementById('quantidade');
const de = document.getElementById('de');
const ate = document.getElementById('ate');
const botaoReiniciar = document.getElementById('btn-reiniciar');
const resultado = document.getElementById('resultado');
let sorteados = [];

function resultadoInfo(limpar) {
    const html = limpar ? 'nenhum até agora' : sorteados.join(', ');

    resultado.innerHTML = `<label class="texto__paragrafo">Números sorteados: ${html}</label>`;
}

function numeroAleatorio(min, max) {
    return parseInt(Math.random() * (max - min) + min);
}

function habilitarReiniciar() {
    botaoReiniciar.classList.toggle('container__botao-desabilitado')
    botaoReiniciar.classList.toggle('container__botao')
}

function sortear() {
    const loop = Number(quantidade.value);
    const min = Number(de.value);
    const max = Number(ate.value);

    if(loop > (max - min)) {
        alert('A quantidade é maior do que a diferença entre os números de inicio e o fim');
        return;
    }

    for(let i = 0; i < loop; i++) {
        let n = numeroAleatorio(min, max);

        while(sorteados.includes(n)) {
            n = numeroAleatorio(min, max);
        }
        
        sorteados.push(n);
    }

    resultadoInfo();
    habilitarReiniciar();
    console.log(sorteados);
}

function reiniciar() {
    sorteados = [];
    quantidade.value = '';
    de.value = '';
    ate.value = '';

    resultadoInfo(true);
    habilitarReiniciar();
}