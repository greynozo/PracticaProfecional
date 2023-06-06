<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PracticaProfecional.Login" %>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Sign up / Login Form</title>
  <link rel="stylesheet" href="Estilos/css/Login-style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<!DOCTYPE html>
<html>
<head>
	<title>Slide Navbar</title>
	<link rel="stylesheet" type="text/css" href="slide navbar style.css">
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
</head>
<body>
	<div class="main">  	
		<input type="checkbox" id="chk" aria-hidden="true">

			<div class="signup">
				<form>
					<label for="chk" aria-hidden="true">Sign up</label>
					<input type="text" name="txt" placeholder="User name" required="">
					<input type="email" name="email" placeholder="Email" required="">
					<input type="password" name="pswd" placeholder="Password" required="">
					<button>Sign up</button>
				</form>
			</div>

			<div class="login">
				<form runat="server">
					<label for="chk" aria-hidden="true">Login</label>
					<%--<input type="email" name="email" placeholder="Email" required="">--%>
					<asp:TextBox ID="txtEmail" runat="server" />
					<asp:TextBox TextMode="Password" ID="txtPassword" runat="server" />	
					<%--<input type="password" name="pswd" placeholder="Password" required="">--%>
					<%--<button>Login</button>--%>
					<asp:Button Text="Login" CssClass=".button" ID="btnLogin" runat="server" OnClick="btnLogin_Click" />
				</form>
			</div>
	</div>
</body>
</html>
<!-- partial -->
  
</body>
</html>
