package model;

import java.io.Serializable;

public class Escola implements Serializable {

	private static final long serialVersionUID = 1L;
	private long id;
	private String nome_escola = "";
	private String jurado = "";
	private String quesito = "";
	private float nota;
	
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public String getNome_escola() {
		return nome_escola;
	}
	
	public void setNome_escola(String nome_escola) {
		this.nome_escola = nome_escola;
	}
	
	public String getJurado() {
		return jurado;
	}
	
	public void setJurado(String jurado) {
		this.jurado = jurado;
	}
	
	public String getQuesito() {
		return quesito;
	}
	
	public void setQuesito(String quesito) {
		this.quesito = quesito;
	}
	
	public float getNota() {
		return nota;
	}
	
	public void setNota(float nota) {
		this.nota = nota;
	}
	
	@Override
	public String toString() {
		return super.toString();
	}
}
