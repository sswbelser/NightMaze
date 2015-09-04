// jQuery Validate
$(function() {

	$("#new_user").validate({
		rules: {
			"user[username]": {
				required: true,
				minlength: 2
			},
			"user[email]": {
				required: true,
				email: true,
			},
			"user[password]": {
				required: true,
				minlength: 6
			}
		},
		messages: {
			"user[username]": {
				required: "Please enter a username",
				minlength: "Username must be longer than 2 characters"
			},
			"user[email]": {
				required: "Please enter an email",
				email: "Please enter a valid email"
			},
			"user[password]": {
				required: "Please enter a password",
				minlength: "Your password must be at least 6 characters"
			}
		}
	});

	$("#login_form").validate({
		rules: {
			"user[email]": {
				required: true,
				email: true
			},
			"user[password]": {
				required: true,
				minlength: 6
			}
		},
		messages: {
			"user[email]": {
				required: "Please enter an email",
				email: "Please enter a valid email"
			},
			"user[password]": {
				required: "Please enter a password",
				minlength: "Your password must be at least 6 characters"
			},
		}
	});

	$("#new_post").validate({
		rules: {
			"post[text]": {
				required: true,
				minlength: 2,
				maxlength: 200
			}
		},
		messages: {
			"post[text]": {
				required: "Please enter a post",
				minlength: "Your post must be at least 2 characters",
				maxlength: "Your post must be shorter than 200 characters"
			}
		}
	});

});