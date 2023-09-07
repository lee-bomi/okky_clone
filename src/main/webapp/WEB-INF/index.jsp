<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<>
<p>p1</p>
    <p class="my-class">data1 : ${data1}</p>
    <p class="my-class">data2 : ${data2}</p>
    <p class="my-class">p4</p>
    <p class="my-class">p5</p>
    <button id="changeBtn">바꾸기</button>
    <button id="changeBtn2">바꾸기2</button>

<input type="button" onclick="test()" name="버튼" />

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
    //바꾸기 버튼을 눌렀을때 모든 p요소의 글자색을 빨간색으로 바꿔보세요.
    document.querySelector("#changeBtn").addEventListener("click",function(){
        //모든 p 요소의 참조값을 배열에 담아오기
        let ps=document.querySelectorAll("p");
        //반복문 돌면서
        for(let i=0;i<ps.length;i++){
            //각각의 p요소 글자색을 red로 바꾸기
            ps[i].style.color="red";
        }
    });

    // $("#changeBtn2").on("click",function(){
    //     $("p").css("color","red");
    // });

    function test(){
        var param = {
            test : "안녕하세요"
        }

        $.ajax({
            type : "GET",
            url : "test",
            dataType : 'json',
            contentType : 'application/json',
            data : param,
        });
    }
</script>
</body>
</html>