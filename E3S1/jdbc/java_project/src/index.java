import java.sql.*;
public class index {
    public static void main(String[] args) {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/joins","root","Mahesh@kola123"
            );
            Statement stmt = con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from products");
            while(rs.next())
            System.out.println(rs.getString(2));
            con.close();
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
}
