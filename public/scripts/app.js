console.log('hooked up and working');


$.ajax({
	type: 'GET',
	url: '/home/jeeps',
	dataType: 'json',
	success: function(data) {
		console.log(data);
		for (var i = 0; i < data.length; i++){
			$('body').append("<div>" + "<h1>" + data[i].name + "</h1>" + "<p>" + "The model is : " + data[i].model + "<br>" + "The color is : " + data[i].color + "<br>" + "The interior is : " + data[i].interior + "</p>" + "<button class='patch' id='patch'>" + "Update" + "</button>" + "<button class='delete' id='delete'>" + "Delete" + "</button>" + "</div>")
		}
	},
  failure: function(err) {
    console.log(err)
  }
});


$('.delete').on('click', function(e) {
	var $info = $(e.target).parent().parent();
	var id = $info.data('id')
	$.ajax({
		url: '/home/' + id,
		type: 'DELETE',
		success: function(res) {
			console.log(res)
		},
    failure: function(err) {
      console.log(err)
    }
	})
});
