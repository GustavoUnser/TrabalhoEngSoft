package exer_4;

public class Cachorro extends Animal{
	
	public String nome = "Tobby";
	
	public String late(){
		if (this.raca == "viralatas") {
		System.out.println("Você ouve o latido do cão: ");
		System.out.println("'Woof' é o que ele diz");
		} else {
			System.out.println("Você ouve o latido de " + this.nome);
			System.out.println("'Woof' é o que ele diz");

		}
		return "";
	}
	
	public String defineNome(){
		if (this.raca == "viralatas") {
			System.out.println("Você olha no pescoço do cachorro e nota ausência de coleira.");
			System.out.println("O cão não parece ter um nome");
		} else {
			System.out.println("Você olha no pescoço do cachorro e olha sua coleira.");
			System.out.println(this.nome + " é o nome dele");
		}
		return "";
	}
}
