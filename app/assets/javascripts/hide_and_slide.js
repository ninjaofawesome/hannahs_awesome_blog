$(document).ready(function(){
  console.log('hide and slide loaded');


function InOut( elem ) {
 elem.delay(5000)
     .fadeIn(10000)
     .delay(5000)
     .fadeOut(10000, function(){ 
                   if(elem.next().length > 0){
                    InOut( elem.next() );
                  } else
                   {InOut( elem.siblings(':first'));}
                         
                 });
}

$(function(){
  $('.hideMe li').hide();
  InOut( $('.hideMe li:first') );

});
 
});