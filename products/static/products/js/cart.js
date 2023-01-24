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


let user = "{{ request.user }}";
function getCookie(name) {
let cookieValue = null;
if (document.cookie && document.cookie !== '') {
  const cookies = document.cookie.split(';');
  for (let i = 0; i < cookies.length; i++) {
      const cookie = cookies[i].trim();
      // Does this cookie string begin with the name we want?
      if (cookie.substring(0, name.length + 1) === (name + '=')) {
          cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
          break;
      }
  }
}
return cookieValue;
}
const csrftoken = getCookie('csrftoken');

