<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<style>
/* Adiciona espaço abaixo do link "Clique aqui e agende o seu horário" */
.whatsapp-button {
	margin-bottom: 20px;
}

/* Estilo para o formulário de contato */
.content {
	width: 100%;
	max-width: 600px; /* Definir uma largura máxima para o formulário */
	margin: 0 auto; /* Centralizar o formulário na tela */
	padding: 20px;
	border-radius: 10px; /* Borda arredondada */
}

/* Estilo para todos os elementos dentro do formulário */
.content * {
	margin: 10px 0;
}

/* Estilo para os rótulos */
.content label {
	display: block;
	font-weight: bold;
}

/* Estilo para os campos de entrada e área de texto */
.content input[type="text"], .content input[type="email"], .content textarea
	{
	width: 100%;
	padding: 10px;
	border: 1px solid #cccccc;
	border-radius: 5px;
	font-size: 16px;
}

/* Estilo para o botão de envio */
.content .submit-button {
	padding: 10px 20px;
	background-color: #4caf50;
	color: #ffffff;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

/* Estilo para o link do Google Maps */
.content a {
	color: #090e09;
	text-decoration: none;
}

/* Estilo para o link do Google Maps ao passar o mouse sobre ele */
.content a:hover {
	text-decoration: underline;
}

/* Alinha o formulário completamente à esquerda */
.form-container {
	margin-right: 0;
}

/* Estilo para o botão do WhatsApp */
.whatsapp-button {
	font-family: Montserrat;
	background-color: #25d366;
	color: #cccccc;
	padding: 10px 20px;
	border-radius: 5px;
	text-decoration: none;
	display: inline-flex;
	align-items: center;
}

.whatsapp-icon {
	margin-right: 5px;
}
</style>
<head>
<jsp:include page="head.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="theme-loader.jsp"></jsp:include>

	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">
			<jsp:include page="navbar.jsp"></jsp:include>

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">
					<jsp:include page="navbarmainmenu.jsp"></jsp:include>

					<div class="pcoded-content">
						<jsp:include page="page-header.jsp"></jsp:include>

						<div class="pcoded-inner-content">
							<div class="main-body">
								<div class="page-wrapper">
									<div class="page-body">
										<div class="row">

											<div class="content">
												<section>

													<div>
														<p style="margin-top: 20px; margin-bottom: 0;">
															<a class="border-bottom whatsapp-button"
																style="background-color: #25D366; color: #fff; padding: 10px 20px; border-radius: 20px; text-decoration: none;"
																href="https://api.whatsapp.com/send?phone=5561996063170">
																<img class="whatsapp-icon"
																style="width: 20px; height: 20px; margin-right: 5px; vertical-align: middle;"
																src="https://upload.wikimedia.org/wikipedia/commons/6/6b/WhatsApp.svg"
																alt="Ícone do WhatsApp"> Clique aqui e fale comigo
																- Leandro Lima
															</a>
													</div>
													<div class="form-container">

														<h1>Linguagens e Tecnologias Utilizadas neste Sistema
															Web</h1>
														<h3>Vamos examinar as partes principais do código e
															as linguagens e tecnologias utilizadas:</h3>
														<form class="contact-form">


															<ul>
																<li><strong>Java Servlets:</strong> Este código é
																	baseado na tecnologia de Java Servlets, que é uma
																	especificação da plataforma Java para criar aplicativos
																	web. Os Servlets estendem a funcionalidade de
																	servidores web para processar solicitações HTTP.</li>
																<li><strong>JSP (JavaServer Pages):</strong> O
																	código faz referência a arquivos JSP, que são arquivos
																	de texto com marcação que contêm códigos Java
																	embutidos. Os arquivos JSP são usados para criar as
																	visualizações da interface do usuário web.</li>
																<li><strong>Jasper Reports:</strong> Utilizado para
																	gerar relatórios no sistema.</li>
																<li><strong>JavaScript:</strong> Há trechos de
																	código JavaScript incluídos nas partes de front-end do
																	aplicativo, como a validação de formulários e
																	manipulação de eventos do usuário.</li>
																<li><strong>HTML e CSS:</strong> Os arquivos JSP
																	geram HTML que é renderizado no navegador do cliente. O
																	CSS também é utilizado para estilizar a aparência da
																	interface do usuário.</li>
																<li><strong>JSON (JavaScript Object
																		Notation):</strong> É usado para transportar dados entre o
																	servidor e o cliente em algumas partes do código. O
																	JSON é um formato leve de troca de dados que é
																	amplamente utilizado em aplicativos web modernos.</li>
																<li><strong>Apache Commons Compress:</strong> Uma
																	biblioteca Java que fornece suporte para a compressão e
																	descompressão de arquivos e streams. Ela é utilizada
																	para operações de manipulação de arquivos comprimidos
																	no código.</li>
																<li><strong>Apache Tomcat:</strong> Um servidor web
																	e servlet container que implementa as especificações
																	Java Servlet e JavaServer Pages. O código Servlet é
																	implantado e executado em um contêiner Tomcat.</li>
																<li><strong>jQuery:</strong> Uma biblioteca
																	JavaScript que simplifica a manipulação do DOM HTML,
																	manipulação de eventos, e realização de requisições
																	AJAX no lado do cliente.</li>
																<li><strong>Bootstrap:</strong> Um framework
																	front-end para desenvolvimento web que fornece
																	componentes e estilos CSS pré-projetados para a
																	construção de interfaces responsivas.</li>
																<li><strong>Integração com Banco de Dados:</strong>
																	O sistema interage com um banco de dados para realizar
																	operações CRUD (Create, Read, Update, Delete) nos dados
																	dos usuários.</li>

																<p>Este conjunto de tecnologias forma a base de
																	muitos aplicativos web modernos e permite o
																	desenvolvimento de sistemas robustos e interativos.</p>
															</ul>

														</form>
													</div>


												</section>




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
</body>
</html>

