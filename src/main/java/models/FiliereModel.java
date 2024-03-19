package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import classes.Filiere;


public class FiliereModel {
	private static Connection connection = DatabaseConnection.getConnection();
	
	public static int save(Filiere filiere) {
		int status = 0;
		try {
			String sql = "INSERT INTO filiere(nom, departement) VALUES (?,?)";
			PreparedStatement prepared = connection.prepareStatement(sql);
			prepared.setString(1, filiere.getNom());
			prepared.setInt(2, filiere.getDepartement());
			status = prepared.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public static List<Filiere> all() {
		List<Filiere> filieres = new ArrayList<Filiere>();
		try {
			String sql = "SELECT * FROM filiere";
			PreparedStatement prepared = connection.prepareStatement(sql);
			ResultSet result = prepared.executeQuery();
			while(result.next()) {
				Filiere filiere = new Filiere();
				filiere.setId(result.getInt(1));
				filiere.setNom(result.getString(2));
				filiere.setDepartement(result.getInt(3));
				filieres.add(filiere);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return filieres;
	}
	
}
