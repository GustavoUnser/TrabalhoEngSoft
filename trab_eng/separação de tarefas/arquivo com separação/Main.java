package exer_4;

public class Main {

	public static void main(String[] args) {
	
		Cachorro c1 = new Cachorro();
		c1.raca = "Pastor Alemão";
		c1.nome = "Fido";
		System.out.println("Você encontra um cachorro");
		System.out.println(c1.caminha());
		System.out.println(c1.defineNome());
		System.out.println(c1.late());

		Gato g1 = new Gato(); 
		g1.raca = "viralatas";
		System.out.println("Você encontra um gato");
		System.out.println(g1.caminha());
		System.out.println(g1.defineNome());
		System.out.println(g1.mia());
		
	}

}
