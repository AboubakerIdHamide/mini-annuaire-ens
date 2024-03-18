package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import classes.Etudiant;

public class EtudiantModel {
	private static Connection connection = DatabaseConnection.getConnection();
	
	public static int save(Etudiant etudiant) {
		int status = 0;
		try {
			String sql = "INSERT INTO etudiant(CNE, nom, prenom, telephone, departement, filiere) VALUES (?,?,?,?,?,?)";
			PreparedStatement prepared = connection.prepareStatement(sql);
			prepared.setInt(1, etudiant.getCNE());
			prepared.setString(2, etudiant.getNom());
			prepared.setString(3, etudiant.getPrenom());
			prepared.setString(4, etudiant.getTelephone());
			prepared.setInt(5, etudiant.getDepartement());
			prepared.setInt(6, etudiant.getFiliere());
			status = prepared.executeUpdate();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
	
	public static List<Etudiant> all() {
		List<Etudiant> etudiants = new ArrayList<Etudiant>();
		try {
			String sql = "SELECT * FROM etudiant";
			PreparedStatement prepared = connection.prepareStatement(sql);
			ResultSet result = prepared.executeQuery();
			while(result.next()) {
				Etudiant etudiant = new Etudiant();
				etudiant.setCNE(result.getInt(1));
				etudiant.setNom(result.getString(2));
				etudiant.setPrenom(result.getString(3));
				etudiant.setTelephone(result.getString(4));
				etudiant.setDepartement(result.getInt(5));
				etudiant.setFiliere(result.getInt(6));
				etudiants.add(etudiant);
			}
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return etudiants;
	}
	
	public static  List<Etudiant> search(String searchTerm) {
		List<Etudiant> etudiants = new ArrayList<Etudiant>();
		try {
			String sql = "SELECT * FROM etudiant WHERE nom LIKE %?% OR prenom LIKE %?% OR telephone LIKE %?%";
			PreparedStatement prepared = connection.prepareStatement(sql);
			prepared.setString(1, searchTerm);
			prepared.setString(2, searchTerm);
			prepared.setString(3, searchTerm);
			
			ResultSet result = prepared.executeQuery();
			while(result.next()) {
				Etudiant etudiant = new Etudiant();
				etudiant.setCNE(result.getInt(1));
				etudiant.setNom(result.getString(2));
				etudiant.setPrenom(result.getString(3));
				etudiant.setTelephone(result.getString(4));
				etudiant.setDepartement(result.getInt(5));
				etudiant.setFiliere(result.getInt(6));
				etudiants.add(etudiant);
			}
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return etudiants;
	}
}
