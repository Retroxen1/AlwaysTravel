package model;

public class Triangulo {
	private int num1; 
	private int num2; 
	private int resultadoA;
	private int resultadoP;

	public Triangulo(String b, String h) {
		this.setNum1(Integer.parseInt(b));
		this.setNum2(Integer.parseInt(h));
	}


	public void sacarArea() {

		int a = (this.getNum1()*this.getNum2())/2; 
		this.setResultadoA(a);
	}

	public void sacarPerimetro() {

		int p = this.getNum2()*3; 
		this.setResultadoP(p);
	}
	

	public int getNum1() {
		return num1;
	}
	public void setNum1 (int num1) { 
		this.num1 = num1;
	}
	
	
	public int getNum2() {
		return num2;
	}
	public void setNum2 (int num2) { 
		this.num2 = num2;
	}
	
	

	public int getResultadoA() {
		return resultadoA;
	}
	public int getResultadoP() {
		return resultadoP;
	}
	
	

	public void setResultadoA(int resultado) { 
		this.resultadoA = resultado;
	}
	public void setResultadoP(int resultado) { 
		this.resultadoP = resultado;
	}
		
}
