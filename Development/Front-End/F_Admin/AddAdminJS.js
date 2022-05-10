
//verifying that the passwords match
function Validate(pass , conf) {
        var pass1 = pass;
        var confirmPassword = conf;
        if (pass1 != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        else 
		{
			let saveAdmin = () => {
    	
        // Get the data from each element on the form.
    	const fullname = document.getElementById('FullName');
        const username = document.getElementById('Username');
        const email = document.getElementById('email');
        const passwordd = document.getElementById('pwd');
        const cpasswordd = document.getElementById('cpwd');
		const address = document.getElementById('address');
		const phone = document.getElementById('phone');
        
        // This variable stores all the data.
        let data = 
            '\r fullname: ' + fullname.value + ' \r\n ' + 
            'username: ' +username.value + ' \r\n ' + 
            'Email: ' + email.value + ' \r\n ' + 
            'email: ' + email.value + ' \r\n ' + 
            'passwordd: ' + passwordd.value + ' \r\n ' + 
            'cpasswordd: ' + cpasswordd.value + ' \r\n ' + 
            'address: ' + address.value + ' \r\n ' + 
            'phone: ' + phone.value;
        
        // Convert the text to BLOB.
        const textToBLOB = new Blob([data], { type: 'text/plain' });
        const sFileName = '../Back-End/admins.txt';	   // The file to save the data.

        let newLink = document.createElement("a");
        newLink.download = sFileName;

        if (window.webkitURL != null) {
            newLink.href = window.webkitURL.createObjectURL(textToBLOB);
        }
        else {
            newLink.href = window.URL.createObjectURL(textToBLOB);
            newLink.style.display = "none";
            document.body.appendChild(newLink);
        }

        newLink.click(); 
    }
    }
		}
    } 
	
	
	
	