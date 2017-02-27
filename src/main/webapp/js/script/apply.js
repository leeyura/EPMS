 $(function(){
    	
    	 // $('#epNm option:selected')[0].dataset.id
	 var epCntPattern = /^[0-9]*$/; 
	 $('#addBtn').on('click', function(){
		 if($('#type').val() == ""){
			 swal("비품분류를 선택해주세요",  "비품분류는 필수요소입니다.","error");
			 $('#epType').focus();
			 return false;
		 }
		 if($('#epNm').val() == ""){
			 swal("비품명을 선택해주세요",  "비품명은 필수요소입니다.","error");
			 $('#epName').focus();
			 return false;
		 }
		 if($('#epCnt').val() == ""){
			 swal("비품수량을 입력해주세요",  "비품수량은 필수요소입니다.","error");
			 $('#epCnt').focus();
			 return false;
		 }else if(!epCntPattern.test($('#epCnt').val())){
			 swal("비품수량을 확인해주세요",  "숫자로 입력해주세요.","error");
			 $('#epCnt').focus();
			 return false;
		 }
		 var epId = $('#epNm').val();
		
		 checkApply(epId);
		 
	 })
	 
	 $('#editBtn').on('click', function(){
		 if($('#editEpCnt').val() == ""){
			 swal("비품수량을 입력해주세요",  "비품수량은 필수요소입니다.","error");
			 $('#editEpCnt').focus();
			 return false;
		 }else if(!epCntPattern.test($('#editEpCnt').val())){
			 swal("비품수량을 확인해주세요",  "숫자로 입력해주세요.","error");
			 $('#editEpCnt').focus();
			 return false;
		 }
		 	
		 goEditApply();
	 });
 });

 function checkApply(epId){
	 var path = $('#path').val();
	 var mt = $('#mt').val();
	 var d = new Date;
	 if(mt == ""){
		 mt = d.getMonth()+1;
		 if(mt <10){
			 mt = "0"+mt;
		 }
	 }
	 
	 $.ajax({
           url: path+"/apply/checkProduct",
           data: {
        	   epId : epId,
        	   mt : mt
           },
           method: 'GET',
           error:function(error){
        	   swal("Cancelled", "비품신청에 실패하였습니다.", "error");   
           },
           success:function(data){
        	   if(data == "no"){
        		   swal("Cancelled", "이미 신청이 되어있는 비품입니다. 다른비품을 신청해주세요.", "error");   
        	   }else{
        		   var type = $('#type').val();
        		   var epId = $('#epNm').val();
        		   var epCnt =  $('#epCnt').val();
        		   var price = $('#epNm option:selected')[0].dataset.id;
        		   $('#epPrice').val(price);
        			addApply(type, epId, epCnt, price);
        	   }
           }
       })
 }
 

 function getProductList(add){
	 if(add !="add" && add == undefined){
		 var type =$('#type option:selected').val();
	 }else{
		 type = "";
	 }
	 var path = $('#path').val();
    /*window.location.href =path+"/product/list?type="+type;*/
	   $.ajax({
           url: path+"/apply/getProduct",
           data: {
        	   type : type
           },
           error:function(error){
        	   swal("Cancelled", "비품목록이 없습니다.", "error");   
           },
           success:function(data){
        	   console.log(data);
        	   var products = "";
        	   $('#productDivSelect').empty();
	        	if(data != "" && data!=null){
	        			products += '	<div class="input-field col s12" id="productDiv">      '
	        			products += '		<div class="select-wrapper initialized">           '
	        			products += '			<select class="browser-default" id="epNm">'
	        		$.each(data, function(i,v){
						products += '				<option value="'+v.epId+'" data-id="'+v.epPrice+'">'+v.epNm+'</option>           '
	        		});
	        			products += '			</select>                                      '
	        			products += '		</div>                                             '
	        			products += '	</div>                                                 '
        				$('#productDivSelect').html(products);
	        	}else{
    					products += '	<div class="input-field col s12" id="productDiv">      '
    					products += '		<div class="select-wrapper initialized">           '
    					products += '			<select class="browser-default" id="epNm">'
						products += '				<option value="">비품명</option>           '
						products += '			</select>                                      '
	        			products += '		</div>                                             '
        				products += '	</div>                                                 '
    					$('#productDivSelect').html(products);
	        	}
           }
       })
 }
 
 function addApply(type, epId, epCnt, price){
	 var path = $('#path').val();
	 $.ajax({
         url: path+"/apply/addApply",
         method: "POST",
         data: {
      	   type : type,
      	   epId : epId,
           epCnt : epCnt,
           price : price
         },
         error:function(error){
      	   swal("Cancelled", "신청실패", "error");   
         },
         success:function(data){
        	 swal("Cancelled", "신청완료", "success");   
        	 swal({   title: "다른 비품을 더 신청하시겠습니까??",   
                 text: "다른비품을 신청해보세요!!",   
                 type: "info",   
                 showCancelButton: true,   
                 confirmButtonColor: "#DD6B55",   
                 confirmButtonText: "Yes!",   
                 cancelButtonText: "No!",   
                 closeOnConfirm: true,   
                 closeOnCancel: true }, 
                 function(isConfirm){   
                     if (isConfirm) {     
                    	 getProductList("add");
                		 $('#epCnt').val("");
                     }else {
                    	 swal({title:"비품신청을 끝냅니다.", timer:3000});
                    	 location.reload();
                     } 
                });
         }
     })
	 
 }
 
 function goEditApply(){
	 var path = $('#path').val();
	 $.ajax({
         url: path+"/apply/editApply",
         method: "POST",
         data: {
      	   epId : $('#editEpId').val(),
           epCnt : $('#editEpCnt').val(),
           price : $('#editEpPrice').val()
         },
         error:function(error){
      	   swal("Cancelled", "수정에 실패하였습니다", "error");   
         },
         success:function(data){
        	 if(data == "ok"){
        	 	   swal({   title: "수정",   
                       text: "수정이 완료되었습니다",   
                       type: "success",   showCancelButton: true,   
                       closeOnConfirm: false,   
                       showLoaderOnConfirm: true, }, 
                       function(){   
                           setTimeout(function(){     swal("Ajax request finished!");   }, 2000);
                           location.reload();
                  });
        		 /*
        		 swal("수정", "수정이 완료되었습니다.", "success");   
        		 $(".modal").closeModal();*/
        	 }else{
        		 swal("Cancelled", "수정에 실패하였습니다.", "error");   
        	 }
         }
     })
 }
 
 function getApplyList(){
	 var path = $('#path').val();
	 var mt =$('#mt option:selected').val();
	 var state =$('#state option:selected').val();
	 window.location.href = path+"/apply/list?mt="+mt+"&state="+state;
 }
 
 function cancelApply(epId){

	 var path = $('#path').val();
	 swal({   title: "취소하시겠습니까?",   
         text: "비품이 신청목록에서 삭제됩니다!",   
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
                       url: path+"/apply/cancelApply",
                       data: {
                    	   epId : epId
                       },
                       error:function(error){
                    	   swal("Fail", "신청 비품취소에 실패하였습니다. :)", "error");   
                       },
                       success:function(data){
                    	   swal({   title: "Cancelled",   
                               text: "신청비품이 취소되었습니다",   
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
                 swal("Fail", "삭제에 실패하였습니다. :)", "error");   } 
        });
 }

function editApply(epId){
	 var path = $('#path').val();
	 // 수정창 초기화
	$('#editEpType').val("");
	$('#editEpNm').val("");
	$('#editEpCnt').val("");
	$('#editEpPrice').val("");
	$('#editEpId').val("");
	
	 $.ajax({
         url: path+"/apply/editApply",
         method: "GET",
         data: {
      	   epId : epId
         },
         error:function(error){
      	   swal("Cancelled", "정보를 가져오는데 실패하였습니다. :)", "error");   
         },
         success:function(data){
        	 if(data != null){
        		 $('#editEpType').val(data.epType);
        		 $('#editEpNm').val(data.epNm);
        		 $('#editEpCnt').val(data.epCnt);
        		 $('#editEpPrice').val(data.epPrice);
        		 $('#editEpId').val(data.epId);
        		 
        		 $(".modal").openModal(); $('#addApplyModal').hide(); 
        	 }else{
        		 swal("Cancelled", "정보를 가져오는데 실패하였습니다. :)", "error");   
        	 }
         }
     })
	
	
} 