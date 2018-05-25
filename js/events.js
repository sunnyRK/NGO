function addevent()
{
	//alert("hi");
		var eventid=document.getElementById("eventid").value;
		var eventname=document.getElementById("eventname").value;
		
		$.post('php/addupcomingevent.php',{eventid:eventid,eventname:eventname
		},function(data){
			if(data=="available"){
				alert("verified");
			}
			else{
				alert(data + "not");
			}
		}); 
}

function showevent()
{

	// $.post('',{},function(data){
	// 	if(data=="available"){
	// 			alert("verified");
	// 		}
	// 		else{
	// 			alert(data + "not");
	// 		}
	// });

	  $.get("php/showupcomingevent.php", function(data, status){
        
        var results = data.split(",");
       // alert(results);
        for(i=0;i<results.length;i++)
        {
        	$('#events').append("<h4>"+results[i]+"</h4>");
        }
    });
}