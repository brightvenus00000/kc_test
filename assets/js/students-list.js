var students = null;
var current_page = 1;

$(document).ready(function () {
	$.ajax({
		type: "GET",
		url: "./api/users.php"
	}).done(data => {
		if (data.status == 200) {
			students = data.students;
			showPage(1);
		} else {
			window.location.href = 'login.html';
		}
	}).fail(() => {

	});
});

function showPage(page) {
	var start = (page - 1) * 5;
	var end = page * 5;
	var html = '';

	for (var i = start; i < end; i++) {
		if (students[i]) {
			html += `<tr>
					<td><i class="fa fa-check-circle"></i></td>
					<td>
						${students[i].description}
						<span>${students[i].name}</span>
					</td>
					<td>...<span>${students[i].group_name}</span></td>
				</tr>`;
		}
	}
	$('tbody').html(html);
}

function showPrev() {
	if (current_page > 1) {
		current_page--;
		showPage(current_page);
		$('.current-page').html(current_page);
		updateButtons();
	}
}

function showNext() {
	if (current_page * 5 < students.length) {
		current_page++;
		showPage(current_page);
		$('.current-page').html(current_page);
		updateButtons();
	}
}

function updateButtons() {
	if (current_page == 1) {
		$('.page-prev').css('cursor', 'not-allowed');
	} else {
		$('.page-prev').css('cursor', 'pointer');
	}
	if (current_page * 5 < students.length) {
		$('.page-next').css('cursor', 'pointer');
	} else {
		$('.page-next').css('cursor', 'not-allowed');
	}
}

function logout() {
	$.ajax({
		type: "DELETE",
		url: "./api/auth.php"
	}).done(data => {
		if (data.status == 200) {
			localStorage.authenticated = '';
			window.location.href = 'login.html';
		}
	}).fail(() => {

	});
}