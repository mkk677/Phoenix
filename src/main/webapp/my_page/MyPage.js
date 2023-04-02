$('#email3').change(function(){
    $("#email3 option:selected").each(function () {
            
            if($(this).val()== "직접 입력"){ //직접입력일 경우
                $("#email2").val('직접 입력');                        //값 초기화
                $("#email2").attr("disabled",false); //활성화
                $("#email2").click("#email2".val(''));
            }else{ //직접입력이 아닐경우
                $("#email2").val($(this).text());      //선택값 입력
                $("#email2").attr("disabled",true); //비활성화
            }
    });
});

function isNumberKey(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        alert("숫자를 입력해주세요.");
        return false;
    }
    return true;
}

function DaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailAddress").focus();
            }
        }).open();
}

function clickpostcode(){
    alert("'우편번호 찾기'를 눌러주세요")
}

function phonevali(e){
     if( e.keyCode > 31 && (e.keyCode < 48 || e.keyCode > 57) && (e.keyCode < 96 || e.keyCode > 105)){
        alert("숫자만 입력하세요")
    }	
}


function sendit(){

	let frm = document.rejoin_form;
	let hp1 = frm.hp1;
	let hp2 = frm.hp2;
	let hp3 = frm.hp3;
	let email = frm.email;
	let email2 = frm.email2;
	let detailAddress = frm.detailAddress;
	
	if( hp1.value == "" ){
		alert("휴대전화 앞자리를 입력하세요");
		hp1.focus();
		return false;
	}
	
	if( hp2.value == "" ){
		alert("휴대전화 중간자리를 입력하세요");
		hp2.focus();
		return false;
	} 
	
	if( hp3.value == "" ){
		alert("휴대전화 끝자리를 입력하세요");
		hp3.focus();
		return false;
	}
	
	if( email.value == "" ){
		alert("이메일을 입력하세요");
		email.focus();
		return false;
	}
	
	if( email2.value == "" ){
		alert("이메일을 뒷부분까지 입력하세요");
		email.focus();
		return false;
	}
	
	if( detailAddress.value == "" ){
		alert("상세주소를 입력하세요");
		detailAddress.focus();
		return false;
	}
		
	frm.submit();

}



	