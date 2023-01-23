let btns = document.getElementsByClassName('addtocart')

// loop through this btn as we are going to add lister

for(let i=0; i < btns.length; i++){
    btns[i].addEventListener('click', function(){
        let productId = this.dataset.product
        let action = this.dataset.action
        location.reload()

        if(user == "AnonymousUser"){
          console.log("user not logged in")
        }
        else{
            updateCart(productId, action)
        }
    })

}

function updateCart(id, action) {
    let url = "/products/updateCart";
    fetch(url,{
        method:'POST',
        headers:{
            "Content-Type": "application/json",
            'X-CSRFToken': csrftoken,
        },
        body:JSON.stringify({"productId":id, "action":action})
    })
    .then(response => response.json())
    .then(data => console.log(data))
}
