 $(function(){
	    	$('#topMore').on('click', function(){
	    		var srcUrl = $('#more')[0].src;
	    		if(srcUrl == 'http://localhost:3000/DAIMS_EPMS/images/right.png'){
	    			$('#more')[0].src =  'http://localhost:3000/DAIMS_EPMS/images/down.png';
	    		}else{
	    			$('#more')[0].src =  'http://localhost:3000/DAIMS_EPMS/images/right.png';
	    		}
	    	});
	    })