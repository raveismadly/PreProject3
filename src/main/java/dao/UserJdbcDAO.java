package dao;

import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserJdbcDAO implements UserDAO {
    Connection connection;

    public UserJdbcDAO(Connection connectionDao) {
        this.connection = connectionDao;
    }

    @Override
    public void addUser(User user) {
        try (PreparedStatement pr = connection.prepareStatement("insert into users(name, surname, age) VALUES " +
                "(?,?,?)")) {
            connection.setAutoCommit(false);
            pr.setString(1, user.getName());
            pr.setString(2, user.getSurname());
            pr.setInt(3, user.getAge());
            pr.executeUpdate();
            connection.commit();
            connection.setAutoCommit(true);
        } catch (SQLException e) {
            e.printStackTrace();
            try {
                connection.rollback();
                connection.setAutoCommit(true);
            } catch (SQLException ignored) {

            }
        }
    }

    @Override
    public Boolean deleteUser(Long id) {
        boolean deleted = false;
        try (PreparedStatement pr = connection.prepareStatement("delete from users where id = ?")) {
            connection.setAutoCommit(false);
            pr.setLong(1, id);
            deleted = pr.executeUpdate() > 0;
            connection.commit();
            connection.setAutoCommit(false);
            return deleted;
        } catch (SQLException e) {
            e.printStackTrace();
            try {
                connection.rollback();
                connection.setAutoCommit(false);
            } catch (SQLException ignored) {

            }
        }
        return deleted;
    }

    @Override
    public Boolean updateUser(User user) {
        boolean updated = false;
        try (PreparedStatement pr = connection.prepareStatement("UPDATE users set name=?,surname=?,age=? where id=?")) {
            connection.setAutoCommit(false);
            pr.setString(1, user.getName());
            pr.setString(2, user.getSurname());
            pr.setInt(3, user.getAge());
            pr.setLong(4, user.getId());
            if (pr.executeUpdate() > 0) {
                updated = true;
                connection.commit();
            } else {
                connection.rollback();
            }
            connection.setAutoCommit(true);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return updated;
    }

    @Override
    public User getUserById(Long id) {
        User user = null;
        try (PreparedStatement pr = connection.prepareStatement("select  id,name, surname, age from users where id=?")) {
            pr.setLong(1, id);
            ResultSet res = pr.executeQuery();
            connection.setAutoCommit(false);
            while (res.next()) {
                String name = res.getString("name");
                String surname = res.getString("surname");
                int age = res.getInt("age");
                user = new User(id, name, surname, age);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public List<User> getAllUsers() {
        List<User> list = new ArrayList<>();
        try (PreparedStatement pr = connection.prepareStatement("select * from users")) {
            ResultSet res = pr.executeQuery();
            while (res.next()) {
                Long id = res.getLong(1);
                String name = res.getString(2);
                String surname = res.getString(3);
                int age = res.getInt(4);
                list.add(new User(id, name, surname, age));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
