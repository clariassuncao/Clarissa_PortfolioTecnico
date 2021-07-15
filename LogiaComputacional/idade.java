import javax.swing.JOptionPane;

class Main{
  String nome = "nome";

  public static void main(String[]args) {
   Main n = new Main();
    n.avaliacao();
 }

public void avaliacao(){
 
  nome =  JOptionPane.showInputDialog("Qual seu nome?");
    int ano_nasc = Integer.parseInt(JOptionPane.showInputDialog(nome+" em que ano você nasceu?"));
   int idade = (2021-ano_nasc);

{
nome = nome+ " sua idade é "+idade; 
JOptionPane.showMessageDialog(null, nome);
}
}
}

