// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
//You can use CoffeeScript in this file: http://coffeescript.org/

//Jquery js to reorder columns and do searches without needing to press submit
$(function() {
    //Re-order columns through ajax
    $(document).on("click","#parties th a, #parties .pagination a", function() {
        $.getScript(this.href);
        return false;
    });

    //Select search terms using ajax
    $("#parties_search input").keyup(function() {
        $.get($("#parties_search").attr("action"), $("#parties_search").serialize(), null, "script");
        return false;
    });
});