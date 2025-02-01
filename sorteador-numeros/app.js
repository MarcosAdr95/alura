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
    for(let i = 0; i < quantidade.value; i++) {
        let n = numeroAleatorio(Number(de.value), Number(ate.value));

        while(sorteados.includes(n)) {
            n = numeroAleatorio(Number(de.value), Number(ate.value));
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