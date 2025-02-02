let meuCarrinho  = [];

function limpar() {
    meuCarrinho  = [];
    const [produto, quantidade, carrinho, total] = pegaElementosHTML();

    produto.selectedIndex = 0;
    quantidade.value = '';
    carrinho.innerHTML = '';
    total.innerHTML = '';
}

function adicionar() {
    const [produto, quantidade, carrinho, total] = pegaElementosHTML();
    const detalhesProduto = produto[produto.selectedIndex].value.split(' - R$');
    
    if(!quantidade.value) {
        return;
    }

    const novoItem = {
        produto: detalhesProduto[0],
        preco: Number(detalhesProduto[1]),
        quantidade: Number(quantidade.value)
    };

    meuCarrinho.push(novoItem);
    
    carrinho.innerHTML += `<section class="carrinho__produtos__produto">
        <span class="texto-azul">${novoItem.quantidade}x</span> ${novoItem.produto}<span class="texto-azul"> R$${novoItem.quantidade*novoItem.preco}</span></span>
    </section>`;

    total.innerHTML = `R$ ${meuCarrinho.reduce((p,n) => p+n.quantidade*n.preco, 0)}`;
}

function pegaElementosHTML() {
    return document.querySelectorAll('#produto, #quantidade, #lista-produtos, #valor-total');
}