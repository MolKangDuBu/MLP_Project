<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"
        type="text/css" />

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet"
        type="text/css" />


</head>

<body>

    <nav style="background-color: bisque;">
        <div class="container">
            <ul class="nav justify-content-end">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">공지사항</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">고객센터</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">로그인</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="w3-content w3-container w3-margin-top">
        <div class="w3-container w3-card-4">
            <div class="w3-center w3-large w3-margin-top">
                <h3>회원가입</h3>
            </div>
            <div>
                <form id="joinForm" action="./member/join_member.do" method="post">
                    <p>
                        <label>ID</label>
                        <input class="w3-input" type="text" id="id" name="id" required>
                        <span id="id_check" class="w3-text-red"></span>
                    </p>
                    <p>
                        <label>Password</label>
                        <input class="w3-input" id="pw" name="pw" type="password" required>
                    </p>
                    <p>
                        <label>Name</label>
                        <input class="w3-input" id="pw2" type="password" required>
                    </p>
                    <p>
                        <label>Phone</label>
                        <input class="w3-input" id="pw2" type="password" required>
                    </p>
                    <p>
                        <label>Email</label>
                        <input type="text" id="email" name="email" class="w3-input" required
                            placeholder="이메일 인증 후 로그인이 가능합니다.">
                        <span id="email_check" class="w3-text-red"></span>
                    </p>

                    <p class="w3-center">
                        <button type="submit" id="joinBtn"
                            class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">Join</button>
                        <button type="button" onclick="history.go(-1);"
                            class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round">Cancel</button>
                    </p>
                </form>
            </div>
        </div>
    </div>
</body>

</html>


<script>
    $(function () {
        $("#joinForm").submit(function () {
            if ($("#pw").val() !== $("#pw2").val()) {
                alert("비밀번호가 다릅니다.");
                $("#pw").val("").focus();
                $("#pw2").val("");
                return false;
            } else if ($("#pw").val().length < 8) {
                alert("비밀번호는 8자 이상으로 설정해야 합니다.");
                $("#pw").val("").focus();
                return false;
            } else if ($.trim($("#pw").val()) !== $("#pw").val() || $.trim($("#email").val()) !== $("#email").val() || $.trim($("#id").val()) !== $("#id").val()) {
                alert("공백은 입력이 불가능합니다.");
                return false;
            }
        })

        $("#id").keyup(function () {
            $.ajax({
                url: "../member/check_id.do",
                type: "POST",
                data: {
                    id: $("#id").val()
                },
                success: function (result) {
                    if (result == 1) {
                        $("#id_check").html("중복된 아이디가 있습니다.");
                        $("#joinBtn").attr("disabled", "disabled");
                    } else {
                        $("#id_check").html("");
                        $("#joinBtn").removeAttr("disabled");
                    }
                },
            })
        });

        $("#email").keyup(function () {
            $.ajax({
                url: "./check_email.do",
                type: "POST",
                data: {
                    email: $("#email").val()
                },
                success: function (result) {
                    if (result == 1) {
                        $("#email_check").html("중복된 이메일이 있습니다.");
                    } else {
                        $("#email_check").html("");
                    }
                },
            })
        });
    })
</script>