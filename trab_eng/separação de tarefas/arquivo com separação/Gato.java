package exer_4;

public class Gato extends Animal {

	public String mia(){
		if (this.raca == "viralatas") {
		System.out.println("Voc� ouve o miado do gato: ");
		System.out.println("'Meow' � o que ele diz");
		} else {
			System.out.println("Voc� ouve o miado de " + this.nome);
			System.out.println("'Meow' � o que ele diz");
		}
		return "";
	}
	
	public String defineNome(){
		if (this.raca == "viralatas") {
			System.out.println("Voc� examina o pesco�o do felino e nota aus�ncia de coleira.");
			System.out.println("Ele n�o parece ter um nome");
		} else {
			System.out.println("Voc� examina o pesco�o do felino e olha sua coleira.");
			System.out.println(this.nome + " � o nome dele");
		}
		return "";
	}
}
