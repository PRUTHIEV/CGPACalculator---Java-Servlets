$(document).ready(function (){
   $(".proceed").click(function (event) {
   console.log("Hi submitted");
   const email = $('.email').val();
   const mailSent = $('.message-success');
   const notSent = $('.message-failure');
   const data = {"email" : email};
   console.log(email);
   $.ajax({
      url: "/CGPACalculator-1.0-SNAPSHOT/forgotpass",
      type: "POST",
      data: "email=" + email,
      success: function (response) {
         if(response === "1"){
            notSent.css("display","none");
            mailSent.css("display","block");
            mailSent.text("An email has been sent successfully to reset password");
         }else{
            mailSent.css("display","none");
            notSent.css("display","block");
            notSent.text("User does not exists , kindly register first ");
         }
      },
   });
});
});