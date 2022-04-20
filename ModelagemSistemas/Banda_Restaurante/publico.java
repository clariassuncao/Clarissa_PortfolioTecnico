public class Publico extends Pessoa{
  private String gosto_musical;
  private String gosto_paladar;
  private boolean primeira_vez;
  private int horario_ida;
  private int duracao_local;
  private String rede_social;
  private String pedido;
  private float pgto;

  public Publico(String nome, String data_nasc, String endereco, String cpf, char genero, String gosto_musical, String gosto_paladar, boolean primeira_vez, int horario_ida, int duracao_local, String rede_social, String pedido){

    super (nome,data_nasc, endereco, cpf, genero);
    
  }
  public void fazerAvaliacaoRest(String avaliacao){
    
  }
  public void fazeraAvaliacaoMusi(String avaliacao){
    
  }
  public void levarVisita (String nome, int qtd){
    
  }
public boolean fazerPgto (float pgto, String nome, String pedido){
  return true;
}
  public boolean gorgetaBanda (float pgto, String nome){
    return true;
  }

  public boolean fazerReserva (String nome, int qtd) {
    return false;
  }
}
