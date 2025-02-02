function alterarStatus(event, id) {
    event.preventDefault();
    
    const [img, button] = document.querySelectorAll(`#game-${id} .dashboard__item__button, #game-${id} .dashboard__item__img`);
    
    img.classList.toggle('dashboard__item__img--rented');

    button.text = button.classList.contains('dashboard__item__button--return') ? 'Alugar' : 'Devolver';
    button.classList.toggle('dashboard__item__button--return');
}