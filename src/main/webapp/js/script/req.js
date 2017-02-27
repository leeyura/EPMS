 $(function(){
    	

 });
 
 
 function getReqList(){
	 var path = $('#path').val();
	 var mt =$('#mt option:selected').val();
	 var state =$('#state option:selected').val();
	 window.location.href = path+"/admin/reqEpCard?mt="+mt+"&state="+state;
 }
 
function listUpdateState(epId){
	var changeState = $('#state'+epId).val();
	var cause = "";
	if(changeState == 2){
		goChangeNo(epId,changeState);
	}else{
		goChange(epId,changeState, cause);
	}
}
function cardOkState(epId){
	var changeState =  $('#stateOk')[0].dataset.id;
	var cause = "";
	goChange(epId,changeState, cause);
}
function cardNoState(epId){
	var changeState = $('#stateNO')[0].dataset.id;
	goChangeNo(epId,changeState);
}

function goChange(epId,changeState, cause){
	var path = $('#path').val();
	
	   $.ajax({
           url: path+"/admin/changeState",
           data: {
        	   epId : epId,
        	   changeState : changeState,
        	   cause: cause
           },
           error:function(error){
        	   swal("Failed", "승인에 실패하였습니다. :)", "error");   
        	   location.reload();
           },
           success:function(data){
        	   swal({   title: "승인",   
                   text: "해당 비품을 승인하였습니다.",   
                   type: "success",   showCancelButton: true,   
                   closeOnConfirm: false,   
                   showLoaderOnConfirm: true, }, 
                   function(){   
                       setTimeout(function(){     swal("Ajax request finished!");   }, 2000);
                       location.reload();
              });
           }
       })
}

function goChangeNo(epId,changeState){
	swal({   title: "반려!",   
        text: "반려사유를 한줄로 간략히 입력해주세요",   
        type: "input",   showCancelButton: true,   
        closeOnConfirm: false,   
        animation: "slide-from-top",   
        inputPlaceholder: "반려사유" }, 
        function(inputValue){   
            if (inputValue === false) return false;      
            if (inputValue === "") {     
            swal.showInputError("You need to write something!");     
            return false   
            }      
       var cause = inputValue;
       goChange(epId,changeState, cause);
   });
}