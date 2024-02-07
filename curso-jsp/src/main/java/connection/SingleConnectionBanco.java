package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class SingleConnectionBanco {
	
	private static String banco = "jdbc:postgresql://localhost:5432/wwwdevle_projetojspservlet?autoReconnect=true";
	private static String user = "wwwdevle";
	private static String senha = "R7fzicmy9T72XKQ";
	private static Connection connection = null;
	
	
	/*dddfdfdd*/
	public static Connection getConnection() {
		return connection;
	}
	
	static {
		conectar();
	}
	
	
	public SingleConnectionBanco() {/*quando tiver um instancia vai conectar*/
		conectar();
	}
	
	
	private static void conectar() {
		
		try {
			
			if(connection == null) {
				Class.forName("org.postgresql.Driver"); /*Carrega o driver de conexão do banco*/
				connection = DriverManager.getConnection(banco, user, senha);
				connection.setAutoCommit(false); /*para nao efetuar alteracoes no banco sem nosso comando*/
			}
			
		}catch (Exception e) {
			e.printStackTrace();/*Mostrar qualquer erro no momento de conectar*/
		}
	}

}
