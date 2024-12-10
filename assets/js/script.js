let indexSlide = 0;

function showSlide(index){
    const totalSlide = document.querySelectorAll('.carrossel img').length;
    const carrossel = document.querySelector('.carrossel');

    if(index >= totalSlide){
        indexSlide = 0;
        index = indexSlide;
    } else if(index < 0){
        indexSlide = totalSlide - 1;
        index = indexSlide;
    }

    const offset = index * -100;
    carrossel.style.transform = `translateX(${offset}%)`;
}

function prevSlide(){
    indexSlide = indexSlide - 1;
    showSlide(indexSlide);
}

function nextSlide(){
    indexSlide = indexSlide + 1;
    showSlide(indexSlide);
}