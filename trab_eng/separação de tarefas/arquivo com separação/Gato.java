package exer_4;

public class Gato extends Animal {

	public String mia(){
		if (this.raca == "viralatas") {
		System.out.println("Você ouve o miado do gato: ");
		System.out.println("'Meow' é o que ele diz");
		} else {
			System.out.println("Você ouve o miado de " + this.nome);
			System.out.println("'Meow' é o que ele diz");
		}
		return "";
	}
	
	public String defineNome(){
		if (this.raca == "viralatas") {
			System.out.println("Você examina o pescoço do felino e nota ausência de coleira.");
			System.out.println("Ele não parece ter um nome");
		} else {
			System.out.println("Você examina o pescoço do felino e olha sua coleira.");
			System.out.println(this.nome + " é o nome dele");
		}
		return "";
	}
}
