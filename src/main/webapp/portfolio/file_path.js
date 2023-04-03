//이미지 미리보기
function setThumbnail(event) {
	var reader = new FileReader();
	var fileInput = document.getElementById("file");
	var uploadNameInput = document.querySelector(".upload-name");

	reader.onload = function(event) {
    	var img = document.createElement("img");
    	img.setAttribute("src", event.target.result);
    	img.setAttribute("class", "col-lg-6");
    	document.querySelector("div#image_container").appendChild(img);

    	// 파일명을 인풋 필드에 추가
    	var fileName = fileInput.value.split("\\").pop();
    	uploadNameInput.value = fileName;
	};
	
	reader.readAsDataURL(event.target.files[0]);
}
$("#file").on('change',function(){
	var fileName = $("#file").val();
	$(".upload-name").val(fileName);
});