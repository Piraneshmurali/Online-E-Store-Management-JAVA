package database;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import impl.DressInterface;
import model.Dress;

public class DressImpl implements DressInterface {
    
    private static final String SELECT_DRESS_BY_ID = "SELECT * FROM dresses WHERE dress_id = ?";
    private static final String INSERT_DRESS_SQL = "INSERT INTO dresses (name, price, photo, quantity, description) VALUES (?, ?, ?, ?, ?)";
    private static final String SELECT_ALL_DRESSES = "SELECT * FROM dresses";
    private static final String UPDATE_DRESS = "UPDATE dresses SET name = ?, price = ?, quantity = ?, description = ? WHERE dress_id = ?";
    private static final String DELETE_DRESS = "DELETE FROM dresses WHERE dress_id = ?";
    private static final String COUNT_DRESSES = "SELECT COUNT(*) FROM dresses";

    @Override
    public void addDress(Dress dress) {
        try (Connection connection = Dbconnection.getDbConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_DRESS_SQL)) {
            preparedStatement.setString(1, dress.getName());
            preparedStatement.setFloat(2, dress.getPrice());
            preparedStatement.setBytes(3, dress.getPhoto());
            preparedStatement.setInt(4, dress.getQuantity());
            preparedStatement.setString(5, dress.getDesc());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    @Override
    public Dress getDress(int id) throws SQLException {
        Dress dress = null;
        try (Connection connection = Dbconnection.getDbConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_DRESS_BY_ID)) {
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                dress = new Dress();
                dress.setDressId(resultSet.getInt("dress_id"));
                dress.setName(resultSet.getString("name"));
                dress.setPrice(resultSet.getFloat("price"));
                dress.setQuantity(resultSet.getInt("quantity"));
                dress.setDesc(resultSet.getString("description"));
                Blob photoBlob = resultSet.getBlob("photo");
                if (photoBlob != null) {
                    byte[] photoBytes = photoBlob.getBytes(1, (int) photoBlob.length());
                    dress.setPhoto(photoBytes);
                }
            }
        }
        return dress;
    }

    @Override
    public ArrayList<Dress> getDresses() throws SQLException {
        ArrayList<Dress> dresses = new ArrayList<>();
        try (Connection connection = Dbconnection.getDbConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_DRESSES)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Dress dress = new Dress();
                dress.setDressId(resultSet.getInt("dress_id"));
                dress.setName(resultSet.getString("name"));
                dress.setPrice(resultSet.getFloat("price"));
                dress.setQuantity(resultSet.getInt("quantity"));
                dress.setDesc(resultSet.getString("description"));
                Blob photoBlob = resultSet.getBlob("photo");
                if (photoBlob != null) {
                    byte[] photoBytes = photoBlob.getBytes(1, (int) photoBlob.length());
                    dress.setPhoto(photoBytes);
                }
                dresses.add(dress);
            }
        }
        return dresses;
    }

    @Override
    public Dress updateDress(int id, Dress dress) {
        try (Connection connection = Dbconnection.getDbConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_DRESS)) {
            preparedStatement.setString(1, dress.getName());
            preparedStatement.setFloat(2, dress.getPrice());
			
            preparedStatement.setInt(3, dress.getQuantity());
            preparedStatement.setString(4, dress.getDesc());
            preparedStatement.setInt(5, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
        return dress;
    }

    @Override
    public void removeDress(int id) {
        try (Connection connection = Dbconnection.getDbConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_DRESS)) {
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

    public static int printCount() {
        int count = 0;
        try (Connection connection = Dbconnection.getDbConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(COUNT_DRESSES);
             ResultSet resultSet = preparedStatement.executeQuery()) {
            if (resultSet.next()) {
                count = resultSet.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }
}
