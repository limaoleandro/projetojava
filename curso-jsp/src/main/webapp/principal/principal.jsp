<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
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
											<h1>Apresenta��o do Sistema Web</h1>
											<p>Este c�digo Java Servlet controla as requisi��es e
												respostas relacionadas � entidade de usu�rio em um sistema
												web.</p>
										</div>
									</div>

									<div class="page-body">
										<h1>Linguagens e Tecnologias Utilizadas em um Sistema Web</h1>
										<p>Vamos examinar as partes principais do c�digo e as
											linguagens e tecnologias utilizadas:</p>
										<ul>
											<li><strong>Java Servlets:</strong> Este c�digo �
												baseado na tecnologia de Java Servlets, que � uma
												especifica��o da plataforma Java para criar aplicativos web.
												Os Servlets estendem a funcionalidade de servidores web para
												processar solicita��es HTTP.</li>
											<li><strong>JSP (JavaServer Pages):</strong> O c�digo
												faz refer�ncia a arquivos JSP, que s�o arquivos de texto com
												marca��o que cont�m c�digos Java embutidos. Os arquivos JSP
												s�o usados para criar as visualiza��es da interface do
												usu�rio web.</li>
											<li><strong>Jasper Reports:</strong> Utilizado para
												gerar relat�rios no sistema.</li>
											<li><strong>JavaScript:</strong> H� trechos de c�digo
												JavaScript inclu�dos nas partes de front-end do aplicativo,
												como a valida��o de formul�rios e manipula��o de eventos do
												usu�rio.</li>
											<li><strong>HTML e CSS:</strong> Os arquivos JSP geram
												HTML que � renderizado no navegador do cliente. O CSS tamb�m
												� utilizado para estilizar a apar�ncia da interface do
												usu�rio.</li>
											<li><strong>JSON (JavaScript Object Notation):</strong>
												� usado para transportar dados entre o servidor e o cliente
												em algumas partes do c�digo. O JSON � um formato leve de
												troca de dados que � amplamente utilizado em aplicativos web
												modernos.</li>
											<li><strong>Apache Commons Compress:</strong> Uma
												biblioteca Java que fornece suporte para a compress�o e
												descompress�o de arquivos e streams. Ela � utilizada para
												opera��es de manipula��o de arquivos comprimidos no c�digo.</li>
											<li><strong>Apache Tomcat:</strong> Um servidor web e
												servlet container que implementa as especifica��es Java
												Servlet e JavaServer Pages. O c�digo Servlet � implantado e
												executado em um cont�iner Tomcat.</li>
											<li><strong>jQuery:</strong> Uma biblioteca JavaScript
												que simplifica a manipula��o do DOM HTML, manipula��o de
												eventos, e realiza��o de requisi��es AJAX no lado do
												cliente.</li>
											<li><strong>Bootstrap:</strong> Um framework front-end
												para desenvolvimento web que fornece componentes e estilos
												CSS pr�-projetados para a constru��o de interfaces
												responsivas.</li>
											<li><strong>Integra��o com Banco de Dados:</strong> O
												sistema interage com um banco de dados para realizar
												opera��es CRUD (Create, Read, Update, Delete) nos dados dos
												usu�rios.</li>
										</ul>
										<p>Este conjunto de tecnologias forma a base de muitos
											aplicativos web modernos e permite o desenvolvimento de
											sistemas robustos e interativos.</p>
									</div>

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

