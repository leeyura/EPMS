 $(function(){
	 	var path = $('#path').val();
    	$('#newProduct').on('click', function(){
    		
    		var epNmPattern = /^[가-힣\s]+$/;
    	    var epPricePattern = /^[0-9]*$/; 
    		
    		
    		if($('#epType').val() == ""){
    			swal("비품분류를 선택해주세요",  "비품분류는 필수요소입니다.","error");
    			$('#epType').focus();
    			return false;
    		}
    		if($('#epName').val() == ""){
    			swal("비품명을 입력해주세요",  "비품명은 필수요소입니다.","error");
    			$('#epName').focus();
    			return false;
    		}else if(!epNmPattern.test($('#epName').val())){
    			swal("비품명을 확인해주세요",  "한글로 한자리 이상 입력해주세요.","error");
    			$('#epName').focus();
    			return false;
    		}
    		
    		if($('#epPrice').val() == ""){
    			swal("비품가격을 입력해주세요",  "비품명가격 필수요소입니다.","error");
    			$('#epPrice').focus();
    			return false;
    		}else if(!epPricePattern.test($('#epPrice').val())){
    			swal("비품가격을 확인해주세요",  "숫자로 입력해주세요.","error");
    			$('#epPrice').focus();
    			return false;
    		}
    		$('#epFrm').submit();
    	});
    	
    	 
      });

 
 function getList(){
	 var path = $('#path').val();
 	var type =$('#type option:selected').val();
    window.location.href =path+"/product/list?type="+type;
 }
 function getCards(){
	 var path = $('#path').val();
	 var type =$('#type option:selected').val();
	 window.location.href = path+"/product/card?type="+type;
 }

 
 function removeProduct(epId){
	 var path = $('#path').val();
	 swal({   title: "삭제하시겠습니까?",   
         text: "비품이 목록에서 삭제됩니다!",   
         type: "warning",   
         showCancelButton: true,   
         confirmButtonColor: "#DD6B55",   
         confirmButtonText: "OK!",   
         cancelButtonText: "Cancel!",   
         closeOnConfirm: false,   
         closeOnCancel: false }, 
         function(isConfirm){   
             if (isConfirm) {     
            	 
            	   $.ajax({
                       url: path+"/product/deleteProduct",
                       data: {
                    	   epId : epId
                       },
                       error:function(error){
                    	   swal("Cancelled", "삭제에 실패하였습니다. :)", "error");   
                       },
                       success:function(data){
                    	   swal({   title: "Deleted",   
                               text: "비품이 삭제되었습니다",   
                               type: "success",   showCancelButton: true,   
                               closeOnConfirm: false,   
                               showLoaderOnConfirm: true, }, 
                               function(){   
                                   setTimeout(function(){     swal("Ajax request finished!");   }, 2000);
                                   location.reload();
                          });
                       }
                   })
            	 
         }else {
                 swal("Cancelled", "삭제에 실패하였습니다. :)", "error");   } 
        });
 }
 