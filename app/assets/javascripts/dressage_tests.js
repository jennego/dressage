 $(function() {
     console.log( "ready!" );
    $("#to").select2({
      ajax: {
       url: 'http://localhost:3000/dressage_tests.json',
       dataType: 'json',
       delay: 500,
       processResults:(data, params) ->
         {
           results: _.map(data, (el) ->
             {
               id: el.id
               name: el.name
             }
           )
         }
       cache: true
     }
     });
 });
