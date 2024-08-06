package model;

public class Cambio {
	private float num1; 
	private float num2; 
	private float resultadoA;

	public Cambio(String num1, String num2) {
		this.setNum1(Float.parseFloat(num1));
		this.setNum2(Float.parseFloat(num2));
	}


	public void sacarCambio() {

		float a = (this.getNum1()*this.getNum2()); 
		this.setCambio(a);
	}


	public float getNum1() {
		return num1;
	}
	public void setNum1 (float num1) { 
		this.num1 = num1;
	}
	
	
	public float getNum2() {
		return num2;
	}
	public void setNum2 (float num2) { 
		this.num2 = num2;
	}
	
	

	public float getCambio() {
		return resultadoA;
	}
	

	public void setCambio(float resultado) { 
		this.resultadoA = resultado;
	}

}
