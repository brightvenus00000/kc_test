if (localStorage.authenticated) {
    window.location.href = 'students-list.html';
}

if (localStorage.remember) {
    document.getElementById('username').value = localStorage.username;
    document.getElementById('password').value = localStorage.password;
    document.getElementById('rememberMe').setAttribute('checked', 'checked');
}

function login() {
    if ($('#username').val() && $("#password").val()) {
        var data = {
            username: $('#username').val(), 
            password: $("#password").val()
        };
        rememberData(data);

        $.ajax({
            type: 'POST',
            url: './api/auth.php',
            data: data
        }).done(data => {
            if (data.status == 200) {
                localStorage.authenticated = true;
                window.location.href = 'students-list.html';
            } else {
                $('#error_message').html(data.message);
            }
        }).fail(() => {
            $('#error_message').html('Something went wrong. Please try again');
        });
    } else {
        $('#error_message').html('Username and password are required.');
    }
};

function rememberData(data) {
    if ($('#rememberMe').prop('checked')) {
        localStorage.remember = true;
        localStorage.username = data.username;
        localStorage.password = data.password;
    } else {
        localStorage.remember = '';
        localStorage.username = '';
        localStorage.password = '';
    }
}