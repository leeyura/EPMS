 $(function(){
	 	var path = $('#path').val();
	 	var epNmPattern = /^[가-힣\s]+$/;
	 	var epPricePattern = /^[0-9]*$/; 
	 	var epImgPattern =' \.(bmp|gif|jpg|jpeg|png)$'; 

	 	$('#newProduct').on('click', function(){
    	    var fNm = $('#file').val();
    	    var vsFNm = fNm.substring(fNm.length-4, fNm.length);
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
    		if(fNm!= null && fNm != ""){
    			if(vsFNm!= ".png" && vsFNm!= ".gif" && vsFNm!= ".jpg" && vsFNm!= "jpeg" && vsFNm!= ".png" ){
    				swal("첨부이미지를 확인해주세요",  "이미지파일만 업로드할수 있습니다.","error");
    				$('#file').focus();
    				return false;
    			}
    		}
    		$('#epFrm').submit();
    	});

	 	$('#editProduct').on('click', function(){
	 		var fNm = $('#editEpFile').val();
	 		var vsFNm = fNm.substring(fNm.length-4, fNm.length);
	 		if($('#editEpType').val() == ""){
	 			swal("비품분류를 선택해주세요",  "비품분류는 필수요소입니다.","error");
	 			$('#editEpType').focus();
	 			return false;
	 		}
	 		if($('#editEpName').val() == ""){
	 			swal("비품명을 입력해주세요",  "비품명은 필수요소입니다.","error");
	 			$('#editEpName').focus();
	 			return false;
	 		}else if(!epNmPattern.test($('#editEpName').val())){
	 			swal("비품명을 확인해주세요",  "한글로 한자리 이상 입력해주세요.","error");
	 			$('#editEpName').focus();
	 			return false;
	 		}
	 		
	 		if($('#editEpPrice').val() == ""){
	 			swal("비품가격을 입력해주세요",  "비품명가격 필수요소입니다.","error");
	 			$('#editEpPrice').focus();
	 			return false;
	 		}else if(!epPricePattern.test($('#editEpPrice').val())){
	 			swal("비품가격을 확인해주세요",  "숫자로 입력해주세요.","error");
	 			$('#editEpPrice').focus();
	 			return false;
	 		}
	 		if(fNm!= null && fNm != ""){
	 			if(vsFNm!= ".png" && vsFNm!= ".gif" && vsFNm!= ".jpg" && vsFNm!= "jpeg" && vsFNm!= ".png" ){
	 				swal("첨부이미지를 확인해주세요",  "이미지파일만 업로드할수 있습니다.","error");
	 				$('#editEpFile').focus();
	 				return false;
	 			}
	 		}
	 		$('#epEditFrm').submit();
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
 
 
function updateProduct(epId){
	 var path = $('#path').val();
	 // 수정창 초기화
	 $('#editEpType').val("");
	 $('#epId').val("");
	 $('#editEpName').val("");
	 $('#editEpPrice').val("");
	 $('#editFileNm').val("");
	 $('#fileId').val("");

	 // AJAX  해당 비품 정보 가져와서 뿌리기
	 $.ajax({
         url: path+"/product/editProduct",
         method: "GET",
         data: {
      	   epId : epId
         },
         error:function(error){
      	   swal("Cancelled", "정보를 가져오는데 실패하였습니다. :)", "error");   
         },
         success:function(data){
        	 if(data != null){
        		 console.log(data);
        		 if(data.fileId != 0){
        			 $('#editFileNm').val(data.realNm);
        			 $('#fileId').val(data.fileId);
        		 }
        		 $('#editEpType').val(data.epType);
        		 $('#epId').val(data.epId);
        		 $('#editEpName').val(data.epNm);
        		 $('#editEpPrice').val(data.epPrice);
        		 
        		 $(".modal").openModal();
        	 }else{
        		 swal("Cancelled", "정보를 가져오는데 실패하였습니다. :)", "error");   
        	 }
         }
     })
 }
 /*$(".modal").openModal()
 $('#editEpName').val('hi');*/
 