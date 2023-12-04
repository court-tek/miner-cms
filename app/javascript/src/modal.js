const menuModal = document.querySelector('.menu-modal');
const closeModalBtn = document.querySelector('.menu-modal__close-btn');
const menuItemTitle = document.querySelector('.menu__item-title');
const modalInfoTitle = document.querySelector('.menu-modal__info');
const element = document.querySelector('.menu__items');

const closeModal = function() {
    menuModal.classList.remove('menu-modal--visible');
}

element.addEventListener('click', (e) => {
    if(e.target.classList.contains('menu__item-title')) {
      console.log('some event content here...');
      menuModal.classList.add('menu-modal--visible');
    }
});

closeModalBtn.addEventListener('click', closeModal);