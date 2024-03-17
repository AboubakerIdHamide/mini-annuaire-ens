package models;

public class Etudiant {
	private int CNE;
	private String nom;
	private String prenom;
	private String telephone;
	private int departement;
	private int filiere;
	
	public int getCNE() {
		return CNE;
	}
	
	public void setCNE(int cNE) {
		CNE = cNE;
	}
	
	public String getNom() {
		return nom;
	}
	
	public void setNom(String nom) {
		this.nom = nom;
	}
	
	public String getPrenom() {
		return prenom;
	}
	
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	
	public String getTelephone() {
		return telephone;
	}
	
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	
	public int getDepartement() {
		return departement;
	}
	
	public void setDepartement(int departement) {
		this.departement = departement;
	}
	
	public int getFiliere() {
		return filiere;
	}
	
	public void setFiliere(int filiere) {
		this.filiere = filiere;
	}
}
