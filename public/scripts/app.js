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
});
