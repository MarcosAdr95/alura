let numeroSecreto;
let tentativas;
let numeroLimite = 10;
let listaDeNumerosSorteados = [];

function configuracaoInicial() {
    numeroSecreto = gerarNumeroAleatorio();
    tentativas = 1;
    document.getElementById('reiniciar').setAttribute('disabled', true);
    
    exibirTextoNaTela('h1', 'Jogo do número secreto');
    exibirTextoNaTela('p', 'Escolha um número entre 1 e 10');
    limparCampo();
}

function exibirTextoNaTela(tag, texto) {
    let campo = document.querySelector(tag);
    campo.innerHTML = texto;
    
    responsiveVoice.speak(texto, 'Brazilian Portuguese Female', {rate:1.2} );
}

function verificarChute() {
    const chute = document.querySelector('input').value;
    if(chute == numeroSecreto) {
        exibirTextoNaTela('h1', 'Acertou!');
        exibirTextoNaTela('p', `Você descobriu o número secreto com ${tentativas} tentativa${tentativas == 1 ? '' : 's'}!`);
        document.getElementById('reiniciar').removeAttribute('disabled');

    } else {
        if (chute > numeroSecreto) {
            exibirTextoNaTela('p', 'O número secreto é menor');
        } else {
            exibirTextoNaTela('p', 'O número secreto é maior');
        }
        limparCampo();
        tentativas++;
    }
}

function gerarNumeroAleatorio() {
    const numeroAleatorio = parseInt(Math.random() * numeroLimite + 1);

    if(listaDeNumerosSorteados.length == numeroLimite) {
        listaDeNumerosSorteados = [];
    }

    if(listaDeNumerosSorteados.includes(numeroAleatorio)) {
        return gerarNumeroAleatorio();
    } else {
        listaDeNumerosSorteados.push(numeroAleatorio);
        return numeroAleatorio;
    }
}

function limparCampo() {
    document.querySelector('input').value = '';    
}

function reiniciarJogo() {
    configuracaoInicial();
}

configuracaoInicial();