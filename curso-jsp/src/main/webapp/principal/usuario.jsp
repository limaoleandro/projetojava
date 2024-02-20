<%@page import="model.ModelLogin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">


<jsp:include page="head.jsp"></jsp:include>

<body>
	<!-- Pre-loader start -->

	<jsp:include page="theme-loader.jsp"></jsp:include>

	<!-- Pre-loader end -->
	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">

			<jsp:include page="navbar.jsp"></jsp:include>

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">

					<jsp:include page="navbarmainmenu.jsp"></jsp:include>

					<div class="pcoded-content">
						<!-- Page-header start -->

						<jsp:include page="page-header.jsp"></jsp:include>

						<!-- Page-header end -->
						<div class="pcoded-inner-content">
							<!-- Main-body start -->
							<div class="main-body">
								<div class="page-wrapper">
									<!-- Page-body start -->
									<div class="page-body">

										<div class="row">
											<div class="col-sm-12">
												<!-- Basic Form Inputs card start -->
												<div class="card">
													<div class="card-block">
														<h4 class="sub-title">Cad. Usuário</h4>


														<form class="form-material" enctype="multipart/form-data"
															action="<%=request.getContextPath()%>/ServletUsuarioController"
															method="post" id="formUser">

															<input type="hidden" name="acao" id="acao" value="">

															<div class="form-group form-default form-static-label">
																<input type="text" name="id" id="id"
																	class="form-control" readonly="readonly"
																	value="${modolLogin.id}"> <span
																	class="form-bar"></span> <label class="float-label">ID:</label>
															</div>

															<div class="form-group form-default input-group mb-4">
																<div class="input-group-prepend">
																	<c:if
																		test="${modolLogin.fotouser != '' && modolLogin.fotouser != null}">
																		<a
																			href="<%= request.getContextPath()%>/ServletUsuarioController?acao=downloadFoto&id=${modolLogin.id}">
																			<img alt="Imagem User" id="fotoembase64"
																			src="${modolLogin.fotouser}" width="70px">
																		</a>
																	</c:if>

																	<c:if
																		test="${modolLogin.fotouser == '' || modolLogin.fotouser == null}">
																		<img alt="Imagem User" id="fotoembase64"
																			src="assets/images/user.png" width="70px">
																	</c:if>

																</div>
																<input type="file" id="fileFoto" name="fileFoto"
																	accept="image/*"
																	onchange="visualizarImg('fotoembase64', 'fileFoto');"
																	class="form-control-file"
																	style="margin-top: 15px; margin-left: 5px;">
															</div>


															<div class="form-group form-default form-static-label">
																<input type="text" name="nome" id="nome"
																	class="form-control campo-obrigatorio"
																	required="required" value="${modolLogin.nome}">
																<span class="form-bar"></span> <label
																	class="float-label">Nome:</label>
															</div>


															<div class="form-group form-default form-static-label">
																<input type="text" name="cpf" id="cpf"
																	class="form-control campo-obrigatorio"
																	required="required" value="${modolLogin.cpf}">
																<span class="form-bar"></span> <label
																	class="float-label">CPF:</label> <span
																	id="cpf-error-msg" class="error-message"></span>
															</div>




															<div class="form-group form-default form-static-label">
																<input type="text" name="dataNascimento"
																	id="dataNascimento"
																	class="form-control campo-obrigatorio"
																	required="required"
																	value="${modolLogin.dataNascimento}"
																	onblur="formatarDataNascimento()"> <span
																	class="form-bar"></span> <label class="float-label">Dat.
																	Nascimento:</label>
															</div>


															<div class="form-group form-default form-static-label">
																<input type="text" name="rendamensal" id="rendamensal"
																	class="form-control campo-obrigatorio"
																	required="required" value="${modolLogin.rendamensal}">
																<span class="form-bar"></span> <label
																	class="float-label">Renda Mensal:</label>
															</div>


															<div class="form-group form-default form-static-label">
																<input type="email" name="email" id="email"
																	class="form-control campo-obrigatorio"
																	required="required" autocomplete="off"
																	value="${modolLogin.email}"> <span
																	class="form-bar"></span> <label class="float-label">E-mail:</label>
															</div>



															<div class="form-group form-default form-static-label">
																<select class="form-control campo-obrigatorio"
																	aria-label="Default select example" name="perfil">
																	<option disabled="disabled">[Selecione o
																		Perfil]</option>

																	<option value="ADMIN"
																		<%ModelLogin modelLogin = (ModelLogin) request.getAttribute("modolLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("ADMIN")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Admin</option>

																	<option value="SECRETARIA"
																		<%modelLogin = (ModelLogin) request.getAttribute("modolLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("SECRETARIA")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");

}%>>Secretária</option>

																	<option value="AUXILIAR"
																		<%modelLogin = (ModelLogin) request.getAttribute("modolLogin");

if (modelLogin != null && modelLogin.getPerfil().equals("AUXILIAR")) {
	out.print(" ");
	out.print("selected=\"selected\"");
	out.print(" ");
}%>>Auxiliar</option>

																</select> <span class="form-bar"></span> <label
																	class="float-label">Perfil:</label>
															</div>


															<div class="form-group form-default form-static-label">
																<input onblur="pesquisaCep();" type="text" name="cep"
																	id="cep" class="form-control campo-obrigatorio"
																	required="required" autocomplete="off"
																	value="${modolLogin.cep}"> <span
																	class="form-bar"></span> <label class="float-label">Cep</label>
															</div>

															<div class="form-group form-default form-static-label">
																<input type="text" name="logradouro" id="logradouro"
																	class="form-control campo-obrigatorio"
																	required="required" autocomplete="off"
																	value="${modolLogin.logradouro}"> <span
																	class="form-bar"></span> <label class="float-label">Logradouro</label>
															</div>

															<div class="form-group form-default form-static-label">
																<input type="text" name="bairro" id="bairro"
																	class="form-control campo-obrigatorio"
																	required="required" autocomplete="off"
																	value="${modolLogin.bairro}"> <span
																	class="form-bar"></span> <label class="float-label">Bairro</label>
															</div>

															<div class="form-group form-default form-static-label">
																<input type="text" name="localidade" id="localidade"
																	class="form-control campo-obrigatorio"
																	required="required" autocomplete="off"
																	value="${modolLogin.localidade}"> <span
																	class="form-bar"></span> <label class="float-label">Localidade</label>
															</div>

															<div class="form-group form-default form-static-label">
																<input type="text" name="uf" id="uf"
																	class="form-control campo-obrigatorio"
																	required="required" autocomplete="off"
																	value="${modolLogin.uf}"> <span
																	class="form-bar"></span> <label class="float-label">Estado</label>
															</div>

															<div class="form-group form-default form-static-label">
																<input type="text" name="numero" id="numero"
																	class="form-control campo-obrigatorio"
																	required="required" autocomplete="off"
																	value="${modolLogin.numero}"> <span
																	class="form-bar"></span> <label class="float-label">Número</label>
															</div>

															<div class="form-group form-default form-static-label">
																<input type="text" name="complemento" id="complemento"
																	class="form-control campo-obrigatorio"
																	required="required" autocomplete="off"
																	value="${modolLogin.complemento}"> <span
																	class="form-bar"></span> <label class="float-label">Complemento</label>
															</div>

															<div class="form-group form-default form-static-label">
																<input type="text" name="login" id="login"
																	class="form-control campo-obrigatorio"
																	required="required" autocomplete="off"
																	value="${modolLogin.login}"> <span
																	class="form-bar"></span> <label class="float-label">Login</label>
															</div>

															<div class="form-group form-default form-static-label">
																<input type="password" name="senha" id="senha"
																	class="form-control campo-obrigatorio"
																	required="required" autocomplete="off"
																	value="${modolLogin.senha}"> <span
																	class="form-bar"></span> <label class="float-label">Senha</label>
															</div>


															<div>
																<input type="radio" name="sexo" id="masculino"
																	value="MASCULINO"
																	<%modelLogin = (ModelLogin) request.getAttribute("modolLogin");
if (modelLogin != null && modelLogin.getSexo().equals("MASCULINO")) {
	out.print("checked=\"checked\"");
}%>
																	onchange="atualizarBotaoSalvar()">Masculino <input
																	type="radio" name="sexo" id="feminino" value="FEMININO"
																	<%modelLogin = (ModelLogin) request.getAttribute("modolLogin");
if (modelLogin != null && modelLogin.getSexo().equals("FEMININO")) {
	out.print("checked=\"checked\"");
}%>
																	onchange="atualizarBotaoSalvar()">Feminino
															</div>
															<button type="button"
																class="btn btn-primary waves-effect waves-light"
																onclick="limparForm();">Novo</button>
															<button id="btnSalvar"
																class="btn btn-success waves-effect waves-light"
																onclick="salvarFormulario()" disabled>Salvar</button>
															<button type="button"
																class="btn btn-info waves-effect waves-light"
																onclick="criarDeleteComAjax();">Excluir</button>

															<c:if test="${modolLogin.id > 0}">
																<a
																	href="<%= request.getContextPath() %>/SertvletTelefone?iduser=${modolLogin.id}"
																	class="btn btn-primary waves-effect waves-light">Telefone</a>
															</c:if>
															<button type="button" class="btn btn-secondary"
																data-toggle="modal" data-target="#exampleModalUsuario">Pesquisar</button>
														</form>



													</div>
												</div>
											</div>
										</div>
										<span id="msg">${msg}</span>

										<div style="height: 300px; overflow: scroll;">
											<table class="table" id="tabelaresultadosview">
												<thead>
													<tr>
														<th scope="col">ID</th>
														<th scope="col">Nome</th>
														<th scope="col">Ver</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items='${modelLogins}' var='ml'>
														<tr>
															<td><c:out value="${ml.id}"></c:out></td>
															<td><c:out value="${ml.nome}"></c:out></td>
															<td><a class="btn btn-success"
																href="<%= request.getContextPath() %>/ServletUsuarioController?acao=buscarEditar&id=${ml.id}">Ver</a></td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>


										<nav aria-label="Page navigation example">
											<ul class="pagination">

												<%
												int totalPagina = (int) request.getAttribute("totalPagina");

												for (int p = 0; p < totalPagina; p++) {
													String url = request.getContextPath() + "/ServletUsuarioController?acao=paginar&pagina=" + (p * 5);
													out.print("<li class=\"page-item\"><a class=\"page-link\" href=\"" + url + "\">" + (p + 1) + "</a></li>");
												}
												%>


											</ul>
										</nav>



									</div>
									<!-- Page-body end -->
								</div>
								<div id="styleSelector"></div>
							</div>
						</div>



					</div>
				</div>
			</div>
		</div>
	</div>




	<jsp:include page="javascripfile.jsp"></jsp:include>



	<!-- Modal -->
	<div class="modal fade" id="exampleModalUsuario" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Pesquisa de
						usuário</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="Nome"
							aria-label="nome" id="nomeBusca" aria-describedby="basic-addon2">
						<div class="input-group-append">
							<button class="btn btn-success" type="button"
								onclick="buscarUsuario();">Buscar</button>
						</div>
					</div>

					<div style="height: 300px; overflow: scroll;">
						<table class="table" id="tabelaresultados">
							<thead>
								<tr>
									<th scope="col">ID</th>
									<th scope="col">Nome</th>
									<th scope="col">Ver</th>
								</tr>
							</thead>
							<tbody>

							</tbody>
						</table>
					</div>


					<nav aria-label="Page navigation example">
						<ul class="pagination" id="ulPaginacaoUserAjax">

						</ul>
					</nav>

					<span id="totalResultados"></span>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Fechar</button>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript">
		// Função para verificar se todos os campos obrigatórios foram preenchidos
		function verificarCamposPreenchidos() {
			var camposObrigatorios = document
					.querySelectorAll('.campo-obrigatorio');
			for (var i = 0; i < camposObrigatorios.length; i++) {
				if (!camposObrigatorios[i].value.trim()) {
					return false; // Retorna falso se algum campo obrigatório estiver vazio
				}
			}
			return true; // Retorna verdadeiro se todos os campos obrigatórios estiverem preenchidos
		}

		// Função para habilitar ou desabilitar o botão de salvar com base no preenchimento dos campos
		function atualizarBotaoSalvar() {
			var btnSalvar = document.getElementById('btnSalvar');
			// Verifica se todos os campos obrigatórios estão preenchidos e se um dos botões de rádio está selecionado
			if (verificarCamposPreenchidos()
					&& (document.getElementById('masculino').checked || document
							.getElementById('feminino').checked)) {
				btnSalvar.removeAttribute('disabled'); // Remove o atributo disabled se todos os campos estiverem preenchidos e um dos botões de rádio estiver selecionado
			} else {
				btnSalvar.setAttribute('disabled', 'disabled'); // Adiciona o atributo disabled se algum campo estiver vazio ou nenhum botão de rádio estiver selecionado
			}
		}

		// Adiciona um event listener para cada campo do formulário e para a mudança nos botões de rádio
		var camposFormulario = document.querySelectorAll('.campo-obrigatorio');
		camposFormulario.forEach(function(campo) {
			campo.addEventListener('input', atualizarBotaoSalvar); // Atualiza o estado do botão sempre que um campo for preenchido
		});
		// Adiciona um event listener para a mudança nos botões de rádio
		document.getElementById('masculino').addEventListener('change',
				atualizarBotaoSalvar);
		document.getElementById('feminino').addEventListener('change',
				atualizarBotaoSalvar);

		// Função para salvar o formulário
		function salvarFormulario() {
			if (verificarCamposPreenchidos()) {
				// Se todos os campos obrigatórios estiverem preenchidos, execute a ação de salvar
				document.getElementById('formUser').submit();
			} else {
				alert('Por favor, preencha todos os campos obrigatórios.');
			}
		}

		function validarFormulario() {
			// Verifica se todos os campos obrigatórios estão preenchidos
			var nome = document.getElementById('nome').value.trim();
			var cpf = document.getElementById('cpf').value.trim();
			var dataNascimento = document.getElementById('dataNascimento').value
					.trim();
			var rendaMensal = document.getElementById('rendamensal').value
					.trim();
			var email = document.getElementById('email').value.trim();
			var perfil = document.getElementById('perfil').value.trim();
			var cep = document.getElementById('cep').value.trim();
			var logradouro = document.getElementById('logradouro').value.trim();
			var bairro = document.getElementById('bairro').value.trim();
			var localidade = document.getElementById('localidade').value.trim();
			var uf = document.getElementById('uf').value.trim();
			var numero = document.getElementById('numero').value.trim();
			var complemento = document.getElementById('complemento').value
					.trim();
			var login = document.getElementById('login').value.trim();
			var senha = document.getElementById('senha').value.trim();
			var sexo = document.querySelector('input[name="sexo"]:checked');

			if (!nome || !cpf || !dataNascimento || !rendaMensal || !email
					|| !perfil || !cep || !logradouro || !bairro || !localidade
					|| !uf || !numero || !complemento || !login || !senha
					|| !sexo) {
				alert('Por favor, preencha todos os campos obrigatórios.');
				return false;
			}

			return true;
		}

		function salvarFormulario() {
			// Verifica se o formulário é válido antes de enviar
			if (validarFormulario()) {
				document.getElementById('formUser').submit();
			}
		}

		function salvarFormulario() {
			// Verifica se algum dos botões de rádio foi marcado
			var masculinoChecked = document.getElementById('masculino').checked;
			var femininoChecked = document.getElementById('feminino').checked;

			if (!masculinoChecked && !femininoChecked) {
				alert('Por favor, selecione uma opção para o sexo.');
				return; // Impede o envio do formulário se nenhum botão de rádio estiver marcado
			}

			// Se algum botão de rádio estiver marcado, continua com o envio do formulário
			document.getElementById('formUser').submit();
		}

		function formatarDataNascimento() {
			var dataNascimentoInput = document.getElementById('dataNascimento');
			var dataNascimento = dataNascimentoInput.value;

			// Verifica se a dataNascimento está vazia
			if (dataNascimento === '') {
				return; // Se estiver vazio, não é necessário fazer nada
			}

			// Remove todos os caracteres não numéricos
			var digits = dataNascimento.replace(/\D/g, '');

			// Verifica se a dataNascimento possui exatamente 8 dígitos
			if (digits.length === 8) {
				// Formata a data como "dd/mm/aaaa"
				var formattedDate = digits.replace(/(\d{2})(\d{2})(\d{4})/,
						'$1/$2/$3');
				// Atualiza o valor do campo de data de nascimento com a data formatada
				dataNascimentoInput.value = formattedDate;
			}
		}

		function limparForm() {
			var elementos = document.getElementById("formUser").elements;

			for (var i = 0; i < elementos.length; i++) {
				var element = elementos[i];

				// Limpa todos os campos, exceto os campos do tipo radio
				if (element.type !== 'radio') {
					element.value = '';
				} else {
					// Para os campos do tipo radio, desmarca todas as opções
					element.checked = false;
				}
			}
		}

		function validateCPF(cpf) {
			cpf = cpf.replace(/[^\d]+/g, ''); // Remove caracteres não numéricos

			if (cpf === '' || cpf.length !== 11) {
				return false;
			}

			// Validação dos dígitos verificadores
			let soma = 0;
			for (let i = 0; i < 9; i++) {
				soma += parseInt(cpf.charAt(i)) * (10 - i);
			}

			let resto = soma % 11;
			let digitoVerificador1 = (resto < 2) ? 0 : 11 - resto;

			soma = 0;
			for (let i = 0; i < 10; i++) {
				soma += parseInt(cpf.charAt(i)) * (11 - i);
			}

			resto = soma % 11;
			let digitoVerificador2 = (resto < 2) ? 0 : 11 - resto;

			return (parseInt(cpf.charAt(9)) === digitoVerificador1 && parseInt(cpf
					.charAt(10)) === digitoVerificador2);
		}

		const cpfInput = document.getElementById('cpf');
		const cpfErrorMsg = document.getElementById('cpf-error-msg');

		cpfInput
				.addEventListener(
						'blur',
						function() {
							const cpf = cpfInput.value;
							if (!validateCPF(cpf)) {
								cpfErrorMsg.textContent = 'CPF inválido. Por favor, verifique o CPF inserido.';
							} else {
								cpfErrorMsg.textContent = ''; // Limpar a mensagem de erro quando o CPF for válido
							}
						});

		document.getElementById('email').addEventListener('change', function() {
			var emailInput = this;
			var emailValue = emailInput.value;

			if (!isValidEmail(emailValue)) {
				alert('Certifique-se de que o e-mail é válido!');
				emailInput.value = ''; // Limpar o valor do campo
			}
		});

		function isValidEmail(email) {
			// Expressão regular para validar e-mails que não contêm apenas uma letra ou número após o "@"
			var emailPattern = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;

			return emailPattern.test(email);
		}

		$("#rendamensal").maskMoney({
			showSymbol : true,
			symbol : "R$ ",
			decimal : ",",
			thousands : "."
		});

		const formatter = new Intl.NumberFormat('pt-BR', {
			currency : 'BRL',
			minimumFractionDigits : 2
		});

		$("#rendamensal").val(formatter.format($("#rendamensal").val()));

		$("#rendamensal").focus();

		var dataNascimento = $("#dataNascimento").val();

		if (dataNascimento != null && dataNascimento != '') {

			var dateFormat = new Date(dataNascimento);

			$("#dataNascimento").val(dateFormat.toLocaleDateString('pt-BR', {
				timeZone : 'UTC'
			}));

		}

		$("#nome").focus();

		$(function() {

			$("#dataNascimento")
					.datepicker(
							{
								dateFormat : 'dd/mm/yy',
								dayNames : [ 'Domingo', 'Segunda', 'Terça',
										'Quarta', 'Quinta', 'Sexta', 'Sábado' ],
								dayNamesMin : [ 'D', 'S', 'T', 'Q', 'Q', 'S',
										'S', 'D' ],
								dayNamesShort : [ 'Dom', 'Seg', 'Ter', 'Qua',
										'Qui', 'Sex', 'Sáb', 'Dom' ],
								monthNames : [ 'Janeiro', 'Fevereiro', 'Março',
										'Abril', 'Maio', 'Junho', 'Julho',
										'Agosto', 'Setembro', 'Outubro',
										'Novembro', 'Dezembro' ],
								monthNamesShort : [ 'Jan', 'Fev', 'Mar', 'Abr',
										'Mai', 'Jun', 'Jul', 'Ago', 'Set',
										'Out', 'Nov', 'Dez' ],
								nextText : 'Próximo',
								prevText : 'Anterior'
							});
		});

		$("#numero").keypress(function(event) {
			if (!/[0-9]/.test(String.fromCharCode(event.keyCode))) {
				event.preventDefault();
			}

			var valor = $("#numero").val();
			if (valor.length >= 11) {
				event.preventDefault();
			}
		});

		$("#cep").keypress(function(event) {
			if (!/[0-9]/.test(String.fromCharCode(event.keyCode))) {
				event.preventDefault();
			}

			var valor = $("#cep").val();
			if (valor.length >= 9) {
				event.preventDefault();
			}
		});

		function pesquisaCep() {
			var cep = $("#cep").val();

			$.getJSON("https://viacep.com.br/ws/" + cep + "/json/?callback=?",
					function(dados) {

						if (!("erro" in dados)) {
							$("#cep").val(dados.cep);
							$("#logradouro").val(dados.logradouro);
							$("#bairro").val(dados.bairro);
							$("#localidade").val(dados.localidade);
							$("#uf").val(dados.uf);
						}

					});
		}

		function visualizarImg(fotoembase64, filefoto) {

			var preview = document.getElementById(fotoembase64); // campo IMG html
			var fileUser = document.getElementById(filefoto).files[0];
			var reader = new FileReader();

			reader.onloadend = function() {
				preview.src = reader.result; /*Carrega a foto na tela*/
			};

			if (fileUser) {
				reader.readAsDataURL(fileUser); /*Preview da imagem*/
			} else {
				preview.src = '';
			}

		}

		function verEditar(id) {

			var urlAction = document.getElementById('formUser').action;

			window.location.href = urlAction + '?acao=buscarEditar&id=' + id;

		}

		function buscaUserPagAjax(url) {

			var urlAction = document.getElementById('formUser').action;
			var nomeBusca = document.getElementById('nomeBusca').value;

			$
					.ajax(
							{
								method : "get",
								url : urlAction,
								data : url,
								success : function(response, textStatus, xhr) {

									var json = JSON.parse(response);

									$('#tabelaresultados > tbody > tr')
											.remove();
									$("#ulPaginacaoUserAjax > li").remove();

									for (var p = 0; p < json.length; p++) {
										$('#tabelaresultados > tbody')
												.append(
														'<tr> <td>'
																+ json[p].id
																+ '</td> <td> '
																+ json[p].nome
																+ '</td> <td><button onclick="verEditar('
																+ json[p].id
																+ ')" type="button" class="btn btn-info">Ver</button></td></tr>');
									}

									document.getElementById('totalResultados').textContent = 'Resultados: '
											+ json.length;

									var totalPagina = xhr
											.getResponseHeader("totalPagina");

									for (var p = 0; p < totalPagina; p++) {

										var url = 'nomeBusca='
												+ nomeBusca
												+ '&acao=buscarUserAjaxPage&pagina='
												+ (p * 5);

										$("#ulPaginacaoUserAjax")
												.append(
														'<li class="page-item"><a class="page-link" href="#" onclick="buscaUserPagAjax(\''
																+ url
																+ '\')">'
																+ (p + 1)
																+ '</a></li>');

									}

								}

							}).fail(
							function(xhr, status, errorThrown) {
								alert('Erro ao buscar usuário por nome: '
										+ xhr.responseText);
							});

		}

		function buscarUsuario() {

			var nomeBusca = document.getElementById('nomeBusca').value;

			if (nomeBusca != null && nomeBusca != '' && nomeBusca.trim() != '') { /*Validando que tem que ter valor pra buscar no banco*/

				var urlAction = document.getElementById('formUser').action;

				$
						.ajax(
								{

									method : "get",
									url : urlAction,
									data : "nomeBusca=" + nomeBusca
											+ '&acao=buscarUserAjax',
									success : function(response, textStatus,
											xhr) {

										var json = JSON.parse(response);

										$('#tabelaresultados > tbody > tr')
												.remove();
										$("#ulPaginacaoUserAjax > li").remove();

										for (var p = 0; p < json.length; p++) {
											$('#tabelaresultados > tbody')
													.append(
															'<tr> <td>'
																	+ json[p].id
																	+ '</td> <td> '
																	+ json[p].nome
																	+ '</td> <td><button onclick="verEditar('
																	+ json[p].id
																	+ ')" type="button" class="btn btn-info">Ver</button></td></tr>');
										}

										document
												.getElementById('totalResultados').textContent = 'Resultados: '
												+ json.length;

										var totalPagina = xhr
												.getResponseHeader("totalPagina");

										for (var p = 0; p < totalPagina; p++) {

											var url = 'nomeBusca='
													+ nomeBusca
													+ '&acao=buscarUserAjaxPage&pagina='
													+ (p * 5);

											$("#ulPaginacaoUserAjax")
													.append(
															'<li class="page-item"><a class="page-link" href="#" onclick="buscaUserPagAjax(\''
																	+ url
																	+ '\')">'
																	+ (p + 1)
																	+ '</a></li>');

										}

									}

								}).fail(
								function(xhr, status, errorThrown) {
									alert('Erro ao buscar usuário por nome: '
											+ xhr.responseText);
								});

			}

		}

		function criarDeleteComAjax() {

			if (confirm('Deseja realmente excluir os dados?')) {

				var urlAction = document.getElementById('formUser').action;
				var idUser = document.getElementById('id').value;

				$.ajax({

					method : "get",
					url : urlAction,
					data : "id=" + idUser + '&acao=deletarajax',
					success : function(response) {

						limparForm();
						document.getElementById('msg').textContent = response;
					}

				}).fail(
						function(xhr, status, errorThrown) {
							alert('Erro ao deletar usuário por id: '
									+ xhr.responseText);
						});

			}

		}

		function criarDelete() {

			if (confirm('Deseja realmente excluir os dados?')) {

				document.getElementById("formUser").method = 'get';
				document.getElementById("acao").value = 'deletar';
				document.getElementById("formUser").submit();

			}

		}
	</script>



</body>
</html>



