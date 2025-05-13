
let arr= ["a","b","c"]

let btn =document.getElementById("btn")


btn.addEventListener('click',function  (){
    body.style.background="red"
})


let newarr= arr.map(function (Element){
    return Element.toUpperCase()
})
let newarr2= arr.map( (Element) =>   Element.toUpperCase())