<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<style>
/* Adiciona espa�o abaixo do link "Clique aqui e agende o seu hor�rio" */
.whatsapp-button {
	margin-bottom: 20px;
}

/* Estilo para o formul�rio de contato */
.content {
	width: 100%;
	max-width: 600px; /* Definir uma largura m�xima para o formul�rio */
	margin: 0 auto; /* Centralizar o formul�rio na tela */
	padding: 20px;
	border-radius: 10px; /* Borda arredondada */
}

/* Estilo para todos os elementos dentro do formul�rio */
.content * {
	margin: 10px 0;
}

/* Estilo para os r�tulos */
.content label {
	display: block;
	font-weight: bold;
}

/* Estilo para os campos de entrada e �rea de texto */
.content input[type="text"], .content input[type="email"], .content textarea
	{
	width: 100%;
	padding: 10px;
	border: 1px solid #cccccc;
	border-radius: 5px;
	font-size: 16px;
}

/* Estilo para o bot�o de envio */
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

/* Alinha o formul�rio completamente � esquerda */
.form-container {
	margin-right: 0;
}

/* Estilo para o bot�o do WhatsApp */
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
																alt="�cone do WhatsApp"> Clique aqui e fale comigo
																- Leandro Lima
															</a>
													</div>
													<div class="form-container">

														<h1>Linguagens e Tecnologias Utilizadas neste Sistema
															Web</h1>
														<h3>Vamos examinar as partes principais do c�digo e
															as linguagens e tecnologias utilizadas:</h3>
														<form class="contact-form">


															<ul>
																<li><strong>Java Servlets:</strong> Este c�digo �
																	baseado na tecnologia de Java Servlets, que � uma
																	especifica��o da plataforma Java para criar aplicativos
																	web. Os Servlets estendem a funcionalidade de
																	servidores web para processar solicita��es HTTP.</li>
																<li><strong>JSP (JavaServer Pages):</strong> O
																	c�digo faz refer�ncia a arquivos JSP, que s�o arquivos
																	de texto com marca��o que cont�m c�digos Java
																	embutidos. Os arquivos JSP s�o usados para criar as
																	visualiza��es da interface do usu�rio web.</li>
																<li><strong>Jasper Reports:</strong> Utilizado para
																	gerar relat�rios no sistema.</li>
																<li><strong>JavaScript:</strong> H� trechos de
																	c�digo JavaScript inclu�dos nas partes de front-end do
																	aplicativo, como a valida��o de formul�rios e
																	manipula��o de eventos do usu�rio.</li>
																<li><strong>HTML e CSS:</strong> Os arquivos JSP
																	geram HTML que � renderizado no navegador do cliente. O
																	CSS tamb�m � utilizado para estilizar a apar�ncia da
																	interface do usu�rio.</li>
																<li><strong>JSON (JavaScript Object
																		Notation):</strong> � usado para transportar dados entre o
																	servidor e o cliente em algumas partes do c�digo. O
																	JSON � um formato leve de troca de dados que �
																	amplamente utilizado em aplicativos web modernos.</li>
																<li><strong>Apache Commons Compress:</strong> Uma
																	biblioteca Java que fornece suporte para a compress�o e
																	descompress�o de arquivos e streams. Ela � utilizada
																	para opera��es de manipula��o de arquivos comprimidos
																	no c�digo.</li>
																<li><strong>Apache Tomcat:</strong> Um servidor web
																	e servlet container que implementa as especifica��es
																	Java Servlet e JavaServer Pages. O c�digo Servlet �
																	implantado e executado em um cont�iner Tomcat.</li>
																<li><strong>jQuery:</strong> Uma biblioteca
																	JavaScript que simplifica a manipula��o do DOM HTML,
																	manipula��o de eventos, e realiza��o de requisi��es
																	AJAX no lado do cliente.</li>
																<li><strong>Bootstrap:</strong> Um framework
																	front-end para desenvolvimento web que fornece
																	componentes e estilos CSS pr�-projetados para a
																	constru��o de interfaces responsivas.</li>
																<li><strong>Integra��o com Banco de Dados:</strong>
																	O sistema interage com um banco de dados para realizar
																	opera��es CRUD (Create, Read, Update, Delete) nos dados
																	dos usu�rios.</li>

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

