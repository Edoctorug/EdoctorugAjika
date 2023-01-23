let btns = getElementsByClassName('addtocart')

// loop through this btn as we are going to add lister

for(let i=0; i < btns.length; i++){
    btns[i].addEventListener('click', function(){
        let productId = this.dataset.product
        let action = this.action

        console.log(productId)
    })

}