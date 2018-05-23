function login()
{
	alert("hi");
		var user=document.getElementById("username").value;
		var pass=document.getElementById("password").value;

		$.post('php/loginpage.php',{user:user,pass:pass},function(data){
			if(data=="available"){
				alert("verified");
			}
			else{
				alert(data);
			}
		}); 
}

function register()
{
	alert("hi");
		var user=document.getElementById("username").value;
		var pass=document.getElementById("password").value;
		var cpass=document.getElementById("cpassword").value;
		var name=document.getElementById("name").value;
		var contact=document.getElementById("contact").value;
		var email=document.getElementById("email").value;
		var address=document.getElementById("address").value;
		var city=document.getElementById("city").value;
		var state=document.getElementById("state").value;
		var pin=document.getElementById("pin").value;
		var country=document.getElementById("country").value;
		var aadhar=document.getElementById("aadhar").value;
		//var image=document.getElementById("image").value;
		var intrest=document.getElementById("intrest").value;
		$.post('php/register.php',{user:user,pass:pass,cpass:cpass,
			name:name,contact:contact,email:email,address:address,city:city,
			state:state,pin:pin,country:country,aadhar:aadhar,intrest:intrest
		},function(data){
			if(data=="available"){
				alert("verified");
			}
			else{
				alert(data + "not");
			}
		}); 
}
