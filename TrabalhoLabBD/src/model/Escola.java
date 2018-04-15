package model;

import java.io.Serializable;

public class Escola implements Serializable {

	private static final long serialVersionUID = 1L;
	private String escola;
	private float total;
	
	public String getEscola() {
		return escola;
	}
	public void setEscola(String escola) {
		this.escola = escola;
	}
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
}
