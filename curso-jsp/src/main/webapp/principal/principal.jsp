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
											<h1>Apresentação do Sistema Web</h1>
											<p>Este código Java Servlet controla as requisições e
												respostas relacionadas à entidade de usuário em um sistema
												web.</p>
										</div>
									</div>

									<div class="page-body">
										<h1>Linguagens e Tecnologias Utilizadas em um Sistema Web</h1>
										<p>Vamos examinar as partes principais do código e as
											linguagens e tecnologias utilizadas:</p>
										<ul>
											<li><strong>Java Servlets:</strong> Este código é
												baseado na tecnologia de Java Servlets, que é uma
												especificação da plataforma Java para criar aplicativos web.
												Os Servlets estendem a funcionalidade de servidores web para
												processar solicitações HTTP.</li>
											<li><strong>JSP (JavaServer Pages):</strong> O código
												faz referência a arquivos JSP, que são arquivos de texto com
												marcação que contêm códigos Java embutidos. Os arquivos JSP
												são usados para criar as visualizações da interface do
												usuário web.</li>
											<li><strong>Jasper Reports:</strong> Utilizado para
												gerar relatórios no sistema.</li>
											<li><strong>JavaScript:</strong> Há trechos de código
												JavaScript incluídos nas partes de front-end do aplicativo,
												como a validação de formulários e manipulação de eventos do
												usuário.</li>
											<li><strong>HTML e CSS:</strong> Os arquivos JSP geram
												HTML que é renderizado no navegador do cliente. O CSS também
												é utilizado para estilizar a aparência da interface do
												usuário.</li>
											<li><strong>JSON (JavaScript Object Notation):</strong>
												É usado para transportar dados entre o servidor e o cliente
												em algumas partes do código. O JSON é um formato leve de
												troca de dados que é amplamente utilizado em aplicativos web
												modernos.</li>
											<li><strong>Apache Commons Compress:</strong> Uma
												biblioteca Java que fornece suporte para a compressão e
												descompressão de arquivos e streams. Ela é utilizada para
												operações de manipulação de arquivos comprimidos no código.</li>
											<li><strong>Apache Tomcat:</strong> Um servidor web e
												servlet container que implementa as especificações Java
												Servlet e JavaServer Pages. O código Servlet é implantado e
												executado em um contêiner Tomcat.</li>
											<li><strong>jQuery:</strong> Uma biblioteca JavaScript
												que simplifica a manipulação do DOM HTML, manipulação de
												eventos, e realização de requisições AJAX no lado do
												cliente.</li>
											<li><strong>Bootstrap:</strong> Um framework front-end
												para desenvolvimento web que fornece componentes e estilos
												CSS pré-projetados para a construção de interfaces
												responsivas.</li>
											<li><strong>Integração com Banco de Dados:</strong> O
												sistema interage com um banco de dados para realizar
												operações CRUD (Create, Read, Update, Delete) nos dados dos
												usuários.</li>
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

