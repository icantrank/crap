// function for adwords
function() {
  
  var products = 
  // probably an array of products with atributes like
  // [
  //   { name: 'asd', id: 123 },
  //   { id: 12 }
  // ]

  function rename () {
      products = products.map( function(product){
          product.sku = product.id
          delete product.id

          product.title = product.name
          delete product.name
      })

      // don't need to return anything bc we change the existing products array
  }


  // run rename function
  rename()

  // i think this returns to whatever parent wrapper runs the function
  return products

}
