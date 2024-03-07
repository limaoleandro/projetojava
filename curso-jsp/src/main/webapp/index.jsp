<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Página Leandro Lima</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<style>
body {
	background-color: #f8f9fa;
	font-family: Arial, sans-serif;
}

.container {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	height: 100vh;
}

.form-container {
	background-color: #ffffff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
	width: 300px;
}

.form-container h5 {
	color: #007bff;
	margin-bottom: 20px;
}

.footer {
	text-align: center;
	margin-top: 20px;
	font-size: 12px;
	color: #6c757d;
}
</style>
</head>
<body>

	<div class="container">
		<div class="form-container">
			<h5>Sistema Web</h5>
			<h7>Entre e teste: senha "admin" usuário "admin"</h7>
			<form action="<%=request.getContextPath()%>/ServletLogin"
				method="post" class="needs-validation" novalidate>
				<input type="hidden" value="<%=request.getParameter("url")%>"
					name="url">
				<div class="mb-3">
					<label class="form-label" for="login">Login</label> <input
						class="form-control" id="login" name="login" type="text" required>
					<div class="invalid-feedback">Obrigatório</div>
					<div class="valid-feedback">ok</div>
				</div>
				<div class="mb-3">
					<label class="form-label" for="senha">Senha</label> <input
						class="form-control" id="senha" name="senha" type="password"
						required>
					<div class="invalid-feedback">Obrigatório</div>
					<div class="valid-feedback">ok</div>
				</div>
				<input type="submit" value="Acessar" class="btn btn-primary">
			</form>
			<h5 class="msg">${msg}</h5>
		</div>
		<div class="footer">
			<p>© 2024 - LEANDRO DE OLIVEIRA LIMA - Todos os direitos
				reservados</p>
		</div>
	</div>
	

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>
	<script>
		(function() {
			'use strict';
			var forms = document.querySelectorAll('.needs-validation');
			Array.prototype.slice.call(forms).forEach(function(form) {
				form.addEventListener('submit', function(event) {
					if (!form.checkValidity()) {
						event.preventDefault();
						event.stopPropagation();
					}
					form.classList.add('was-validated');
				}, false);
			});
		})();
	</script>

</body>
</html>
