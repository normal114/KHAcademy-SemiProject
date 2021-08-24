<%@page import="com.login.dto.RegistDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리동네 운동친구∴∵Heath Friends</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>
<%-- 결제페이지인데 추후에 조금더 자세하게 수정해야함! --%>
<% RegistDto Ldto = (RegistDto) session.getAttribute("Ldto"); %>
<%
	int price = 6900;
%>
    <script>
    $(function(){
        var IMP = window.IMP;
        IMP.init('imp30454386');
        var msg;
        
        IMP.request_pay({
            pg : 'kakaopay',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : 'Health Friends Premium',
            amount : <%=price%>,
            member_email : '<%=Ldto.getMember_email()%>',
            member_name : '<%=Ldto.getMember_name()%>',
            member_tel : '<%=Ldto.getMember_phone()%>',
            member_addr : '<%=Ldto.getMember_addr()%>'
        }, function(rsp) {
            if ( rsp.success ) {
                $.ajax({
                    url: 'payment.do?command=paymentUpdate', 
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        imp_uid : rsp.imp_uid,
                        amount : <%=price%>,
                        member_email : '<%=Ldto.getMember_email()%>',
                        member_name : '<%=Ldto.getMember_name()%>',
                        member_tel : '<%=Ldto.getMember_phone()%>',
                        member_addr : '<%=Ldto.getMember_addr()%>'
                    }
                }).done(function(data) {
                    if ( everythings_fine ) {
                        msg = '결제가 완료되었습니다.';
                        msg += '\n고유ID : ' + rsp.imp_uid;
                        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                        msg += '\결제 금액 : ' + rsp.paid_amount;
                        msg += '카드 승인번호 : ' + rsp.apply_num;
                        alert(msg);
                    } else {
                    }
                });
                //성공시 이동할 페이지
                alert('결제가 완료되었습니다.');
                location="mypage.do?command=mypage"
                //window.close();
            } else {
                msg = '결제에 실패하였습니다.\n';
                msg += '에러내용 : ' + rsp.error_msg;
                //실패시 이동할 페이지
                alert(msg);
                location.href="mypage.do?command=paymentGuide";
                //window.close();
            }
        });
        
    });
    </script>
</body>
</html>