 $(function(){
	    	$('#login').on('click', function(){
	    		
	    		if($('#email').val()==""){
	    			swal("이메일(ID)을 입력해주세요",  "이메일을 입력하지 않을시 로그인할수 없습니다.","error");
	    			$('#email').focus();
	    			return false;
	    		}
	    		
	    		if($('#password').val() == ""){
	    			swal("비밀번호를 입력해주세요",  "비밀번호를 입력하지 않을시 로그인할수 없습니다.","error");
	    			$('#password').focus();
	    			return false;
	    		}
	    		/*swal("확인",  "check 완료.","success");*/
	    		$('#loginFrm').submit();
	    	});
	    })