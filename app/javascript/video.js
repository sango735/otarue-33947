const video = () => {
  let videoSlide = document.getElementById("video-slide");
  let videoArray = ["assets/animation1.mov","assets/animation2.mov","assets/animation3.mov"];
  
  let timer = 0;
  let count = 0;
  timer = setInterval(function(){
    timer++;
    if(timer % 6 === 0){
      videoSlide.src = videoArray[count];
      count++;
      if(count >= videoArray.length){
        count = 0;
      }
    }
  },1000);
}

window.addEventListener("load",video);