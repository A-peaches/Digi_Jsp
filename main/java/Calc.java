
public class Calc {
	private int num1,num2;
	private int result;
	private String op;

	public Calc(int num1, int num2, String op) {
		this.num1 = num1;
		this.num2 = num2;
		this.op = op;
		this.result = calc(num1,num2,op);
	}


	
	
	public int getNum1() {
		return num1;
	}



	public void setNum1(int num1) {
		this.num1 = num1;
	}



	public int getNum2() {
		return num2;
	}



	public void setNum2(int num2) {
		this.num2 = num2;
	}



	public String getOp() {
		return op;
	}



	public void setOp(String op) {
		this.op = op;
	}


	public int getResult() {
		return result;
	}


	public void setResult(int result) {
		this.result = result;
	}




	private int calc(int num1, int num2, String op) {
		int result = 0;
		switch (op) {
		case "+":
			result = num1 + num2;
			break;
		case "-":
			result = num1 - num2;
			break;
		case "*":
			result = num1 * num2;
			break;
		case "/":
			result = num1 / num2;
			break;
		}

		return result;
}
}
