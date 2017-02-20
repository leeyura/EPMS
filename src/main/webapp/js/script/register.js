 $(function(){
	    	$('#register').on('click', function(){
	    		var nmPattern = /^[가-힣]{2,4}$/;
	    		var mailPattern = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	    		var pwdPattern = /^.*(?=.{6,12})(?=.*[0-9])(?=.*[a-zA-Z]).*$/; //영문, 숫자 혼용해서 6~12자 이내
	    		
	    		if($('#username').val() == ""){
	    			swal("이름을 입력해주세요",  "이름 입력은 필수요소입니다.","error");
	    			$('#username').focus();
	    			return false;
	    		}else if(!nmPattern.test($('#username').val())){
	    			swal("이름을 확인해주세요",  "2~4자리의 한글 이름을 입력해주세요.","error");
	    			$('#username').focus("");
	    			return false;
	    		}
	    		
	    		if($('#email').val()==""){
	    			swal("이메일을 입력해주세요",  "이메일 입력은 필수요소입니다.","error");
	    			$('#email').focus();
	    			return false;
	    		}else if(!mailPattern.test($('#email').val())){
	    			swal("이메일을 확인해주세요",  "이메일 형식에 맞게 입력해주세요.","error");
	    			$('#email').focus();
	    			return false;
	    		}
	    		
	    		if($('#password').val() == ""){
	    			swal("비밀번호를 입력해주세요",  "비밀번호는 필수요소 입니다.","error");
	    			$('#password').focus();
	    			return false;
	    		}else if($('#password-again').val() == ""){
	    			$('#password-again').focus();
	    			swal("비밀번호 확인을 입력해주세요",  "비밀번호 확인은 필수요소 입니다.","error");
	    			return false;
	    		}else if($('#password').val() != $('#password-again').val()){
	    			swal("비밀번호를 확인해주세요",  "비밀번호와 비밀번호 확인이 일치하지 않습니다.","error");
	    			$('#password-again').focus();
	    			return false;
	    		}else if(!pwdPattern.test($('#password').val())){
	    			swal("비밀번호를 확인해주세요",  "영문, 숫자 혼용해서 6~12자 이내로 입력해주세요.","error");
	    			$('#password').focus();
	    			return false;
	    		}else if(!pwdPattern.test($('#password-again').val())){
	    			swal("비밀번호를 확인해주세요",  "영문, 숫자 혼용해서 6~12자 이내로 입력해주세요.","error");
	    			$('#password-again').focus();
	    			return false;
	    		}
	    		/*swal("확인",  "check 완료.","success");*/
	    		$('#registerFrm').submit();
	    	});
	    })