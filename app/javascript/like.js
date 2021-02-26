function like() {
  const likeImage = document.getElementById("like_count");
  let countValue = 0;
  likeImage.addEventListener("click", () => {
    let imageLike = new Array();
    imageLike[0] = new Image();
    imageLike[0].src = 'assets/beforelike.jpg';
    imageLike[1] = new Image();
    imageLike[1].src = 'assets/afterlike.jpg';

    if (countValue == 0){
      countValue ++;
    }else{
      countValue = 0;
    }
    likeImage.src = imageLike[countValue].src;
  });
}
setInterval(like,1000);