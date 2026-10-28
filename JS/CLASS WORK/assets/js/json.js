const datas = async () => {
  const response = await fetch("https://dummyjson.com/products");
  const data = await response.json();
  
  const products = data.products;
 

 const getshow = document.getElementById("showData");
    let output = "";

  products.forEach((e) => {
   
    output +=`<tr>
    <td>${e.id}</td>
    <td>${e.title}</td> 
    
    <td>${e.price}</td>
  </tr>`;
  });
  getshow.innerHTML = output;
}
datas();
