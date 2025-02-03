const listaHTML = document.querySelectorAll('.lista li');
const selectHTML = document.getElementById('tipo-ingresso');
const quantidadeHTML = document.getElementById('qtd');

function comprar() {
    const produto = selectHTML[selectHTML.selectedIndex].value;
    const quantidadeSelecionada = Number(quantidadeHTML.value);

    if(quantidadeSelecionada == 0)
        return;

    for(let i = 0; i < listaHTML.length; i++) {
        const item = listaHTML[i];

        if(item) {
            const [nome, quantidadeDisponivel] = item.textContent.replace(/(\d+)/, ',$1').split(',');

            if(nome.toLowerCase().includes(produto)) {
                if(quantidadeSelecionada > Number(quantidadeDisponivel)) {
                    alert(`Quantidade selecionada indisponível, selecione no máximo ${quantidadeDisponivel}`);
                    return;
                }

                item.querySelector('span').textContent = quantidadeDisponivel - quantidadeSelecionada;
            }
        }
    }
}