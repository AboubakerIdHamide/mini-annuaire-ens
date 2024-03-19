package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import classes.Departement;


public class DepartementModel {
	private static Connection connection = DatabaseConnection.getConnection();
	
	public static int save(Departement departement) {
		int status = 0;
		try {
			String sql = "INSERT INTO departement(nom) VALUES (?)";
			PreparedStatement prepared = connection.prepareStatement(sql);
			prepared.setString(1, departement.getNom());
			status = prepared.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public static List<Departement> all() {
		List<Departement> departements = new ArrayList<Departement>();
		try {
			String sql = "SELECT * FROM departement";
			PreparedStatement prepared = connection.prepareStatement(sql);
			ResultSet result = prepared.executeQuery();
			while(result.next()) {
				Departement departement = new Departement();
				departement.setId(result.getInt(1));
				departement.setNom(result.getString(2));
				departements.add(departement);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return departements;
	}
	
	public static  List<Departement> search(String searchTerm) {
		List<Departement> departements = new ArrayList<Departement>();
		try {
			String sql = "SELECT * FROM departement WHERE nom LIKE ?";
			PreparedStatement prepared = connection.prepareStatement(sql);
			prepared.setString(1, "%"+searchTerm+"%");
			ResultSet result = prepared.executeQuery();
			while(result.next()) {
				Departement departement = new Departement();
				departement.setId(result.getInt(1));
				departement.setNom(result.getString(2));
				departements.add(departement);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return departements;
	}
}
