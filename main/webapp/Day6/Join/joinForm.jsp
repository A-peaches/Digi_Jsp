<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="styleSheet" type="text/css" href="../../CSS.css">
<title>Join</title>
<style>
	input {
		width : 30%;
	}
	td{
		text-align : left;
	}
</style>
<script>
	function Check(){
        var pw = document.forms["joinForm"]["pw"].value;
        var pw2 = document.forms["joinForm"]["pw2"].value;
        var id = document.forms["joinForm"]["id"].value;
        
        if(id == "" || pw == "" || pw2 == ""){
        	alert("ID와 PW는 필수 입력사항입니다!");
        	return false;
        }
        
        if (pw != pw2) {
            alert("비밀번호가 잘못 입력되었습니다!");
            return false; 
        }
        
        if (id.length < 4 || id.length > 12) {
            alert("ID는 4~12자 사이로 입력해주세요!");
            return false;
        } else {

            for (var i = 0; i < id.length; i++) {
                var charId = id.charCodeAt(i);
                if (!((charId > 47 && charId < 59) ||
                    (charId > 64 && charId < 91) ||
                    (charId > 96 && charId < 123))) {
                    alert("ID는 영문 대소문자와 숫자로만 입력해주세요!");
                    return false;
                }
            }
        }
        
        if (pw.length < 4 || pw.length > 12) {
             alert("PW는 4~12자 사이로 입력해주세요!");
             return false;
           } else {
               for (var i = 0; i < pw.length; i++) {
                   var charPw = pw.charCodeAt(i);
                   if (!((charPw > 47 && charPw < 59) ||
                       (charPw > 64 && charPw < 91) ||
                       (charPw > 96 && charPw < 123))) {
                       alert("pw는 영문 대소문자와 숫자로만 입력해주세요!");
                       return false;
                    }
                }
            }
            
        
        var email = document.getElementById("email").value;


        var idx = email.indexOf("@");
        if (idx == -1 || idx == 0 || idx == email.length - 1) {
            alert("email은 id@domain.com 형식으로 입력해주세요!");
            return false;
        }

        return true;
    }
</script>
</head>
<body>
    <div>
        <h1 align='center'> 👥 회원 가입 </h1>
        <hr><br>
        <div align='center' >
			<form name="joinForm" method=post action="joinProcess.jsp" onsubmit="return Check()">
				<table border="1" style="width: 60%">
					<tr>
						<td class="subtitle" colspan='2'>
							<h3 class="subtitle">회원 기본 정보</h3>
						</td>
					</tr>
					<tr>
						<td>아이디 :</td>
						<td><input type='text' name="id" class='input' class='input'
							size='20' maxlength=20></input>&nbsp;&nbsp;4~12자의 영문 대소문자와 숫자로만 입력
							</td>
					</tr>
					<tr>
						<td>비밀번호 :</td>
						<td><input type='password' name="pw" size='20' class='input'
							maxlength=20></input>&nbsp;&nbsp;4~12자의 영문 대소문자와 숫자로만 입력
						</td>
					</tr>
					<tr>
						<td>비밀번호 확인 :</td>
						<td><input type='password' name="pw2" class='input' size='20'
							maxlength=20></input></td>
					</tr>
					<tr>
						<td>메일 주소:</td>
						<td><input type='text' name="email" class='input' size='20'
							maxlength=20></input>&nbsp;&nbsp;예) id@domain.com
							</td>
					</tr>
					<tr>
						<td>이름:</td>
						<td><input type='text' name='name' class='input' size='20'
							maxlength=20></input></td>
					</tr>
					<tr>
						<td colspan='2' class="subtitle">
							<h3 class="subtitle">개인 신상 정보</h3>
						</td>
					</tr>
					<tr>
						<td>생일 :</td>
						<td><input type='text' name='year' size='20' maxlength=20
							style="height: 26px;">년</input> <select class='input' name='month'
							size=1>
								<option value='1'>1</option>
								<option value='2'>2</option>
								<option value='3'>3</option>
								<option value='4'>4</option>
								<option value='5'>5</option>
								<option value='6'>6</option>
								<option value='7'>7</option>
								<option value='8'>8</option>
								<option value='9'>9</option>
								<option value='10'>10</option>
								<option value='11'>11</option>
								<option value='12'>12</option>
						</select>월 <select class='input' name='day' size=1>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>
						</select>일</td>
					</tr>
					<tr style='height: 45px'>
						<td>관심분야 :</td>
						<td><input type='radio' name='hobby' value='게임'>게임
							<input type='radio' name='hobby' value='맛집탐방'>맛집탐방<br>
							<input type='radio' name='hobby' value='여행'>여행
							<input type='radio' name='hobby' value='운동'>운동<br>
							<input type='radio' name='hobby' value='음악감상'>음악감상
							</td>
					</tr>
					<tr style='height: 65px'>
						<td>자기 소개 :</td>
						<td><textarea name="info" cols='105' rows='6'></textarea> <small>30자이상</small>
						</td>
					</tr>
				</table>
				<div style="margin: 20px;">
					<input type="submit" class="btn" style="width: 10%; text-decoration: none; color: black;" value="제출">
					<input type="reset" class="btn" style="width: 10%;" value="다시 입력">
					<p><a href="/Day6/Join/loginForm.jsp">💫 로그인 창으로 돌아가기</a></p>
				</div>
			</form>
		</div>
    </div>

</body>
</html>