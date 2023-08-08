const bar = document.getElementById('bar');
const close = document.getElementById('close');
const nav = document.getElementById('navbar');

if(bar){
    bar.addEventListener('click', () => {
        nav.classList.add('active');
    })
}

if(close){
    close.addEventListener('click', () => {
        nav.classList.remove('active');
    })
}

// document.getElementById('btn_search').addEventListener('click', function(){
//     if(document.getElementById('txt_search').value == ""){
//         alert("enter product you want to find!");
//     }else{

//     }
// });
