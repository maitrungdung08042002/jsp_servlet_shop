
Validator({
    form: '#RegForm',
    errorSelector: '#message',
    rules: [
        Validator.isRequired('#username','Vui lòng nhập username'),
        Validator.isRequired('#password','Vui lòng nhập mật khẩu'),
        Validator.isRequired('#email','Vui lòng nhập email'),
        Validator.isRequired('#confirm-password','Vui lòng nhập lại mật khẩu'),          
        Validator.minLength('#password',6,'Mật khẩu tối thiểu 6 kí tự'),
        Validator.minLength('#confirm-password',6,'Mật khẩu tối thiểu 6 kí tự'),
        Validator.isMatch('#confirm-password', function(){
            return document.querySelector('#RegForm #password').value;
        }),
        Validator.isEmail('#email','Nhập đúng định đang email abc@xyz.eg'),
    ],
    onSubmit: function(data){
        console.log(data);
    }
});

Validator({
    form: '#LoginForm',
    errorSelector: '#message',
    rules: [
        Validator.isRequired('#username','Vui lòng nhập username'),
        Validator.isRequired('#password','Vui lòng nhập mật khẩu'),
        Validator.minLength('#password',6,'Mật khẩu tối thiểu 6 kí tự'),
              			
    ],
    onSubmit: function(data){ 	
        console.log(data);
    }
});

var LoginForm = document.getElementById("LoginForm");
var RegForm = document.getElementById("RegForm");
var user = document.getElementById("username");
var pass = document.getElementById("password");


function reg(){
    RegForm.style.transform= "translateY(-670px)";
    LoginForm.style.transform = "translateY(-670px)";
}
function login(){
    RegForm.style.transform= "translateY(10px)";
    LoginForm.style.transform = "translateY(10px)";
}
function log(){
	console.log(user.value);
	console.log(pass.value);
	if(user.value=='maitrungdung' && pass.value == 'dungdeptrai'){
		 window.location.href="https://github.com/maitrungdung08042002"
	}else{
		
	}
}