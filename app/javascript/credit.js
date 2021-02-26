const credit = () => {
  Payjp.setPublicKey(process.env.PAYJP_PUBLIC_KEY);
  const form = document.getElementById("charge-form");
  form.addEventListener("submit", (e) => {
    e.preventDefault();

    const inputForm = document.getElementById("charge-form");
    const inputCredit = new FormData(inputForm);

    const card = {
      number:      inputCredit.get("user_order[credit_num]"),
      exp_month:   inputCredit.get("user_order[credit_month]"),
      exp_year:    `20${inputCredit.get("user_order[credit_year]")}`,
      cvc:         inputCredit.get("user_order[credit_sec]"),

    };
    console.log(card);
    Payjp.createToken(card, (status, response) => {
       if (status == 200){
         const token = response.id;
         console.log(token);
         const inputToken = document.getElementById("charge-form");
         const hiddenToken = `<input value=${token} name='token' type="hidden"> `;
         inputToken.insertAdjacentHTML("beforeend", hiddenToken);
        }

        document.getElementById("card-number").removeAttribute("name");
        document.getElementById("card-exp-month").removeAttribute("name");
        document.getElementById("card-exp-year").removeAttribute("name");
        document.getElementById("card-cvc").removeAttribute("name");
        document.getElementById("charge-form").submit();
    });

  });
};

window.addEventListener("load", credit);