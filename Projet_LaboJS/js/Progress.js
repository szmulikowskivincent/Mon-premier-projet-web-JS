  
var gvalue=1;  
function abc(){  
 var progressExample = document.getElementById ('progress-javascript-example');  
     setInterval (function ()  
    {   
                 if(gvalue<250){  
                    gvalue++;  
                    progressExample.value =gvalue;   
                  }
                  else alert('Test finished!')  
                 abc();              
      }, 1000);  
} 
 
