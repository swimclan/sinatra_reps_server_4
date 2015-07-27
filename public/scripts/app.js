$(document).ready(function() {
  //Get the donors list from API
  $.ajax({
    url: '/api/donors',
    type: 'GET',
    dataType: 'json',
    success: function(data) {
      data.forEach(function(donorName) {
        console.log(donorName);
        $('.thanks ul').append('<li>' + donorName.name + '<li>');
      });
    }
  });

  $.ajax({
    url: '/api/spaceships',
    type: 'GET',
    dataType: 'json',
    success: function(data) {
      data.forEach(function(ship) {
        console.log(ship);
        $('.ships').append('<article class="ship"></article>');
        $('.ship').append('<h3>' + ship.name + '</h3>');
        $('.ship').append('<img src="' + ship.image + '" />');
      });
    }
  });
});
