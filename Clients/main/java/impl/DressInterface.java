package impl;

import model.Dress;

import java.sql.SQLException;
import java.util.ArrayList;

public interface DressInterface {

    void addDress(Dress dress);

    Dress getDress(int id) throws SQLException;

    ArrayList<Dress> getDresses() throws SQLException;

    Dress updateDress(int id, Dress dress);

    void removeDress(int id);
}
