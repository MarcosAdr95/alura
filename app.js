const numeroMaximo = 10;
const numeroSecreto = parseInt(Math.random() * numeroMaximo + 1);
console.log(numeroSecreto);
let tentativas = 0;
let chute;

alert('Olá, bem vindo ao jogo "Escolha o número secreto"');

while(numeroSecreto != chute) {
    tentativas++;
    chute = prompt(`Escolha um número entre 1 e ${numeroMaximo}`);
    const palavraTentativa = tentativas == 1 ? 'tentativa' : 'tentativas';

    if(numeroSecreto == chute) {
        alert(`Você acertou o número secreto: ${numeroSecreto} com ${tentativas} ${palavraTentativa}`);
        break;
    } else {
        const dica = numeroSecreto < chute ? 'menor' : 'maior';
        alert(`O número secreto é ${dica} do o escolhido`);
    }
}