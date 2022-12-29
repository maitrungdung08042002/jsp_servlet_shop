function Validator(options){

    var selectorRules =  {};
    function validate(inputElement, rule){
        var errorMessage ;
        var errorElement = inputElement.parentElement.querySelector(options.errorSelector);

        var rules = selectorRules[rule.selector];

        for(var i = 0 ; i < rules.length; i++){
            errorMessage =  rules[i](inputElement.value);
            if(errorMessage) break; 
        }

        if(errorMessage){
            errorElement.innerText = errorMessage;
            inputElement.parentElement.classList.add('error');
        }else{
            errorElement.innerText =''
            inputElement.parentElement.classList.remove('error');
        }
        return !errorMessage;
    }
    var formElement = document.querySelector(options.form);
    if(formElement){
        
        options.rules.forEach(function (rule){

            
            if(Array.isArray(selectorRules[rule.selector])){
                selectorRules[rule.selector].push(rule.test);
            }else{
                selectorRules[rule.selector] = [rule.test];
            }
            

            var inputElement = formElement.querySelector(rule.selector);

            if(inputElement){
                inputElement.oninput = function(){
                    var errorElement = inputElement.parentElement.querySelector(options.errorSelector);
                    errorElement.innerText =''
                    inputElement.parentElement.classList.remove('error');
                }

                inputElement.onblur = function(){
                    validate(inputElement, rule)
                }
            }
        });
		formElement.onsubmit = function(e){
            e.preventDefault();

            var isValidForm = true;
            options.rules.forEach(function(rule){
                var inputElement  = formElement.querySelector(rule.selector);
                var isValid = validate(inputElement, rule);
                if(!isValid){
                    isValidForm = false;
                }
            });
            
            if(isValidForm ){
               
            }
        }
    }
}

Validator.isRequired = function(selector ,message){
    return{
        selector: selector,
        test: function(value){
            return value.trim() ? undefined : message || "Vui lòng nhập " 
        }
    };
}

Validator.isEmail = function(selector, message){
    return{
        selector: selector,
        test: function(value){
            var regex = /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/;
            return regex.test(value)? undefined : message||"Vui lòng nhập email"
        }
    };
}

Validator.minLength = function(selector, min,message){
    return{
        selector: selector,
        test: function(value){
            
            return value.length >= min ? undefined : message|| `Mật khẩu tối thiểu ${min} kí tự`;
        }
    };
}

Validator.isMatch = function(selector, getConfirm,message){
    return{
        selector: selector,
        test: function(value){
            return value === getConfirm()? undefined: message|| 'Mật khẩu không khớp'
        }
    };
}

