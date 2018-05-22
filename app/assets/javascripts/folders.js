// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

// using normal ecmascript
// code from https://stackoverflow.com/questions/4901481/jquery-select-li-value-in-keydown-up
// alert("js connected2");

// var $listItems = $('li');
$(document).ready(function() {
    $(document).keydown(function(){
        alert("hello");
    });
});

// $('input').keydown(function(e)
// {
//     var key = e.keyCode,
//         $selected = $listItems.filter('.selected'),
//         $current;
//
//     if ( key != 40 && key != 38 ) return;
//
//     $listItems.removeClass('selected');
//
//     if ( key == 40 ) // Down key
//     {
//         if ( ! $selected.length || $selected.is(':last-child') ) {
//             $current = $listItems.eq(0);
//         }
//         else {
//             $current = $selected.next();
//         }
//     }
//     else if ( key == 38 ) // Up key
//     {
//         if ( ! $selected.length || $selected.is(':first-child') ) {
//             $current = $listItems.last();
//         }
//         else {
//             $current = $selected.prev();
//         }
//     }

    // $current.addClass('selected');
// });​

var popper = new Popper(referenceElement, onPopper, {
    placement: 'right'
});