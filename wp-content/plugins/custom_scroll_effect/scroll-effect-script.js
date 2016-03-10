
jQuery(document).ready(function($){
    
    //this clone will keep the title formatting so I can reapply later
    var clone = $('.site-title').clone();
    
     //wait this many milliseconds after document is loaded before executing
    setTimeout(function(){
         
         //get the site title text
        var string = $('.site-title').html();
     
        
        var start = string.indexOf('>') + 1;
        var end = string.indexOf("</a>");
        
        // extract actual title from html
        var title = string.slice(start, end);
        
        //create array of words for update text function
        var words = title.split('  ');
        
        //create new html string and insert div for scroll
        var magicDiv = "<div id = 'magic'>&nbsp;</div>";
        var newHTML = string.substring(0,start) + magicDiv + string.substring(end, string.length);
        
        //replace innerHTML of cloned title with new html string
        clone[0].innerHTML = newHTML;
     
        //replace site title with updated clone
        $('.site-title').replaceWith(clone);
        
        // select newly inserted magic div
        var	el = document.getElementById('magic');
            word_counter = 0;
            character_counter = 0;
            
        function updateText()
        {
            // get each new character from words array              
            var newChar = words[word_counter][character_counter++];
            
            //if new character is a space then insert non-breaking space for fluidity
            if (newChar == ' ')
            {
                newChar = '&nbsp;';
            }
            //update magic div with new character
            el.innerHTML = el.innerHTML+newChar;
            
            //if you come to a new word
            if(character_counter > words[word_counter].length)
            {
                word_counter++; 	//choose a different word
                character_counter = 0;	//start over with the first character of the word
                el.innerHTML = '&nbsp';  //set the html to be blank
                
                //once you reach the last word, go back to the first word
                if(word_counter == words.length)
                {
                    word_counter = 0;
                }
            }//new word
        }//update text function
        
        setInterval(updateText,200); //rate of text scroll speed
    
    }, 1000); //wait this many milliseconds after document is loaded before executing
  
});//document ready

  
