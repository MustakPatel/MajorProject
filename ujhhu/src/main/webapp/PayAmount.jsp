<%@page import="com.razorpay.*"%>
<html>
<head>
 <script src="//code.jquery.com/jquery-1.11.1.min.js">
 </script>
 <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
 <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script>
var xhttp = new XMLHttpRequest();
var RazorpayOrderId;
function createOrderId(){
    xhttp.open("GET","http://localhost:8081/ujhhu/createOrder",false);
    xhttp.send();
    RazorpayOrderId = xhttp.responseText;
    OpenCheckout();
}
</script>};
<script>
function OpenCheckout(){
var options = {
    "key": "rzp_test_JTviDeEytJMJEp", // Enter the Key ID generated from the Dashboard
    "amount": "100", // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
    "currency": "INR",
    "name": "Acme Corp",
    "description": "Test Transaction",
    "order_id": RazorpayOrderId, //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
    /*"handler": function (response){
        alert(response.razorpay_payment_id);
        alert(response.razorpay_order_id);
        alert(response.razorpay_signature)
    }, */
    "callback_url": "http://localhost:8081/ujhhu/createOrder",
    "prefill": {
        "name": "Gaurav Kumar",
        "email": "gaurav.kumar@example.com",
        "contact": "9999999999"
    },
    "notes": {
        "address": "Razorpay Corporate Office"
    },
    "theme": {
        "color": "#3399cc"
    }
};
var rzp1 = new Razorpay(options);
rzp1.on('payment.failed', function (response){
        alert(response.error.code);
        alert(response.error.description);
        alert(response.error.source);
        alert(response.error.step);
        alert(response.error.reason);
        alert(response.error.metadata.order_id);
        alert(response.error.metadata.payment_id);
});
    rzp1.open();
}
</script>
</head>
<body id="body-pd">
<button id="rzp-button1" onclick="createOrderId()">Pay</button>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>