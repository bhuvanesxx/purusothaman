const arr =[]
const oneInput =document.getElementById("oneInput")
const twoInput =document.getElementById("twoInput")
const addButton =document.getElementById("addButton")
const subButton =document.getElementById("subButton")
const mulButton =document.getElementById("mulButton")
const divButton =document.getElementById("divButton")

addButton.addEventListener("click",()=>{
    let oneValue = oneInput.value
    let twoValue = twoInput.value
    let addButton = oneValue + twoValue
    arr.push(addButton)
   
})

subButton.addEventListener("click",()=>{
    let oneValue = oneInput.value
    let twoValue = twoInput.value
    let subButton = oneValue - twoValue
    arr.push(subButton)
    
})


mulButton.addEventListener("click",()=>{
    let oneValue = oneInput.value
    let twoValue = twoInput.value
    let mulButton = oneValue * twoValue
    arr.push(mulButton)

})

divButton.addEventListener("click",()=>{
    let oneValue = oneInput.value
    let twoValue = twoInput.value
    let divButton = oneValue / twoValue
    arr.push(divButton)
})

const showing = document.getElementById("showing")
let datas=""
 
arr.forEach(e=> {
    datas += e
});
showing.innerHTML = datas

