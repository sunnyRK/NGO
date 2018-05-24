function hide_bar()
{
	$('.sidenav').sidenav('close');
}
function login()
{
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
		var user=document.getElementById("username1").value;
		var pass=document.getElementById("password1").value;
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
		var intrest=document.getElementById("intrest").value;
		//var image=document.getElementById("image").files[0];

/*		var image_name = image.name;
		var image_size = image.size;
		var image_error = image.error;
		var image_tmpname= image.temp;
		alert(image_tmpname);
		var image_extension = image_name.split('.').pop().toLowerCase();
		
		alert(image_size)
		if(jQuery.inArray(image_extension,['png','jpg','jpeg'])==-1)
		{
			alert("Invalid Image file");
		}else if(image_size > 500000)
		{
			alert("Your image is too large");
		}
*/
		if(user=="" || pass=="" || cpass=="" || name ==""||contact==""||email==""||address==""||
				city=="" || state =="" || pin=="" || country=="" || aadhar=="" ||intrest=="")
		{	
			alert("Fill all the fields.");
		}
		else{
			if(pass==cpass)
			{	
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
			else{
				alert("Password is not matched")
			}	
		}
}
