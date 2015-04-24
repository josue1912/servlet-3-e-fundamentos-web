<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
Bem vindo ao nosso gerenciador de empresas!<br/>

<c:if test="${not empty usuarioLogado}">
	Voce esta logado como ${usuarioLogado.email}
</c:if>

	<form action="executa" method="POST">
		Nome: <input type="text" name="nome"/>
		<input type="hidden" value="NovaEmpresa" name="tarefa" />
		<input type="submit" value="Enviar" />
	</form>
	
	<form action="executa" method="POST">
		<input type="hidden" value="Login" name="tarefa" />
		Email: <input type="email" name="email" />
		Senha: <input type="password" name="senha" />
		<input type="submit" value="Enviar" />
	</form>
	
	<form action="executa" method="POST">
		<input type="hidden" value="Logout" name="tarefa">
		<input type="submit" value="Logout" />
	</form>
</body>
</html>