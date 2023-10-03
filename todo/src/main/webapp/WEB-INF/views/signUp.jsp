<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SignUp</title>
    <link rel="stylesheet" href="/css/signUp.css">
</head>
<body>
    <section class="SignUpPage">
        <section class="SignUpBox">
            <section class="signUp">
                <h1 style="color: white; font-size: 45px; margin:0; font-weight: normal;">SignUp</h1>
            </section>
            <form action="/signUp" id="signupForm">
	            <section class="id">
	                <h1 id="HH">아이디</h1>
	                <input type="text" id="userId" name="userId" placeholder="ID">
	            	<span id="userIdMessage">아이디</span>
	            </section>
	            <section class="pw">
	                <h1 id="HH">비밀번호</h1>
	                <input type="text" id="password" name="password" placeholder="PW">
	           		<span id="passwordMessage">비밀번호</span>
	            </section>
	            <section class="pwRe">
	                <h1 id="HH">비밀번호 확인</h1>
	                <input type="text" id="confirmPassword" name="confirmPassword"  placeholder="PW">
	            	<span id="confirmPasswordMessage">비밀번호 확인</span>
	            </section>
	            <section class="Nname">
	                <h1 id="HH">닉네임</h1>
	                <input type="text" id="name" name="name" placeholder="Nickname">
	            	<span id="nameMessage">닉네임</span>
	            </section>
	            <section class="UP">
	                <div class="up">
	                    <a href="#" id="signupButton">
	                        <h1>가입하기</h1>
	                    </a>        
	                </div>
	            </section>
            </form>
        </section>
    </section>
    
    <script>
    document.getElementById('signupButton').addEventListener('click', function (event) {
        event.preventDefault();
        
      
        const userId = document.getElementById('userId').value;
        const userIdMessage = document.getElementById('userIdMessage');
        const userIdPattern = /^[a-z][a-zA-Z0-9]{5,13}$/;

        if (userIdPattern.test(userId)) {
            userIdMessage.textContent = '정상입력';
            userIdMessage.style.color = 'green';
        } else {
            userIdMessage.textContent = '영어 소문자로 시작하는 6~14자 이내의 아이디를 입력하세요.';
            userIdMessage.style.color = 'red';
            return; 
        }

      
        const password = document.getElementById('password').value;
        const confirmPassword = document.getElementById('confirmPassword').value;
        const passwordMessage = document.getElementById('passwordMessage');
        
        if (password === confirmPassword) {
            passwordMessage.textContent = '비밀번호 일치';
            passwordMessage.style.color = 'green';
        } else {
            passwordMessage.textContent = '비밀번호가 일치하지 않습니다.';
            passwordMessage.style.color = 'red';
            return; 
        }

     
        const name = document.getElementById('name').value;
        const nameMessage = document.getElementById('nameMessage');
        const namePattern = /^[가-힣]{2,5}$/;

        if (namePattern.test(name)) {
            nameMessage.textContent = '정상입력';
            nameMessage.style.color = 'green';
        } else {
            nameMessage.textContent = '한글 2~5자 사이로 입력하세요.';
            nameMessage.style.color = 'red';
            return; 
        }

        // 폼 제출 코드
        document.getElementById('signupForm').submit();
    });
    </script>
    
</body>
</html>