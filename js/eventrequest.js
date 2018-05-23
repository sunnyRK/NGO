function request()
{
	//alert("hi");
		var user=document.getElementById("username").value;
		var contact=document.getElementById("contact").value;
		var email=document.getElementById("email").value;
		var address=document.getElementById("address").value;
		var category=document.getElementById("category").value;
		var eventinfo=document.getElementById("eventinfo").value;
		var volunters=document.getElementById("volunters").value;
		var datefrom=document.getElementById("datefrom").value;
		var dateto=document.getElementById("dateto").value;
		var timefrom=document.getElementById("timefrom").value;
		var timeto=document.getElementById("timeto").value;
		//var image=document.getElementById("image").value;
		var otherreq=document.getElementById("otherreq").value;
		$.post('php/eventrequest.php',{user:user,contact:contact,email:email,address:address,category:category,
			eventinfo:eventinfo,volunters:volunters,datefrom:datefrom,dateto:dateto,timefrom:timefrom,timeto:timeto,
			otherreq:otherreq
		},function(data){
			if(data=="available"){
				alert("verified");
			}
			else{
				alert(data + "not");
			}
		}); 
}
