const imageSlide = () => {
  let slide = document.getElementsByClassName("image-slide")
  let imageFirst = ["assets/about2.jpg","assets/about1.jpg"]
  let imageSecond = ["assets/about4.jpg","assets/about3.jpg"]
  let imageThird = ["assets/about6.jpg","assets/about5.jpg"]
  let timer = 0;
  let count = 0;
  setInterval(function(){
    timer++;
    if(timer % 5 === 0){    
      slide[0].src = imageFirst[count];
      slide[1].src = imageSecond[count];
      slide[2].src = imageThird[count];
      count++;
      if(count >= imageFirst.length){
        count = 0;
      }
    }
  },1000)

}
window.addEventListener("load",imageSlide);