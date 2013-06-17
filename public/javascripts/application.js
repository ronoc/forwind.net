// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
    function toggle_visibility(id) {
       hide_all()
       var e = document.getElementById(id);
       e.style.display = 'block';   
       document.getElementById('form_image_container').style.display = 'block';
    }
    function hide_all(){
        document.getElementById('parallel_1').style.display = 'none';      
        document.getElementById('parallel_2').style.display = 'none';      
        document.getElementById('parallel_3').style.display = 'none';           
        document.getElementById('parallel_4').style.display = 'none';         
        document.getElementById('parallel_5').style.display = 'none';         
        document.getElementById('parallel_6').style.display = 'none';         
        document.getElementById('parallel_7').style.display = 'none';             
        document.getElementById('parallel_8').style.display = 'none';                  
        document.getElementById('parallel_9').style.display = 'none';         
        document.getElementById('parallel_10').style.display = 'none';             
        document.getElementById('parallel_11').style.display = 'none';   
        document.getElementById('parallel_12').style.display = 'none';           
    }   
    function activate_thumb(id){
        document.getElementById(id).style.CSS_property_to_change = "active_thumb";
    } 
    function hide_all_long(){
        var one = document.getElementById('parallel_1');
        if(one.style.display == 'block') one.style.display = 'none';
        
        var two = document.getElementById('parallel_2');
        if(two.style.display == 'block') two.style.display = 'none';        
        
        var three = document.getElementById('parallel_3');    
        if(three.style.display == 'block')three.style.display = 'none';   
        
        var four = document.getElementById('parallel_4');    
        if(four.style.display == 'block')four.style.display = 'none';     
        
        var five = document.getElementById('parallel_5');    
        if(five.style.display == 'block')five.style.display = 'none';    
        
        var six = document.getElementById('parallel_6');    
        if(six.style.display == 'block')six.style.display = 'none';           
        
        var seven = document.getElementById('parallel_7');    
        if(seven.style.display == 'block')seven.style.display = 'none'; 
        
        var eight = document.getElementById('parallel_8');    
        if(eight.style.display == 'block')eight.style.display = 'none'; 
        
        var nine = document.getElementById('parallel_9');    
        if(nine.style.display == 'block')nine.style.display = 'none'; 
        
        var ten = document.getElementById('parallel_10');    
        if(ten.style.display == 'block')ten.style.display = 'none'; 
        
        var eleven = document.getElementById('parallel_11');    
        if(eleven.style.display == 'block')eleven.style.display = 'none';                                                 
        
    }