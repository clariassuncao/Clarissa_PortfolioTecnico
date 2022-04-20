import java.util.ArrayList;

public class Visitante extends Pessoa{
  private String dataVisita;
  private int minVisita;
  private int horaVisita;
  private int horaSaida;
  private int minSaida;
  private ArrayList<String> pertences;
  private String tipoVisita;
  private ArrayList<String> presente;
  private String relacao;
  

  public Visitante(String nome, String cpf, String data_nasc, String contato, String genero, String endereco, String 
   dataVisita, int minVisita, int horaVisita, int horaSaida, int minSaida, String tipoVisita, String relacao){
    super(nome, cpf, data_nasc, contato, genero, endereco);
  
  }

  public String revistar (String pertences, String presente){
  
  }
  
  public boolean agendarVisita (String dataVisita, String tipoVisita, String presente, String relacao, int horaVisita,   
  int minVisita, String nome, String nome){
    return true;
  }

  public boolean presentear (String presente){
    return true;
  }
  
}
