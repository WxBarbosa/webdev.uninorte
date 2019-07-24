$(function(){
    $('#message').hide()
    $('#form_register').validate({
        rules:{
            email:{
                email:true,
                required:true
            },
            sexy:{
                required:true,
                digits:true
            },name:{
                required:true
            },password:{
                required:true,
                minlength:5
            },passwordRepeat:{
                required:true,
                minlength:5,
                equalTo : "#password"
            },cpf:{
                minlength:11,
                required:true
            }
        },
        submitHandler: function(form) {
            $.ajax({
                type: "POST",
                url: "../customerController/register",
                data: $(form).serialize(),
                success: function (data) {
                    var result = jQuery.parseJSON(data)
                    $('#message').text(result.data)
                        .fadeIn(1500, function () {
                            if(result.data == "Sucesso"){
                                $('#message').addClass('alert alert-success')
                            }else{
                                $('#message').addClass('alert alert-danger')
                            }
                            $('#message').show()
                        })
                    $('#message').hide()
                }
            });
            return false; // required to block normal submit since you used ajax
          }
    });
    
});