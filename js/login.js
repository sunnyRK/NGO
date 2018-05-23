function login()
{
		var user=document.getElementById("username").value;
		var pass=document.getElementById("password").value;

		$.post('../php/loginpage.php',{user:user,pass:pass},function(data){
			if(data.localeCompare("available")){
				alert("verified");
			}
			else{
				alert(data + "not");
			}
		}); 
}