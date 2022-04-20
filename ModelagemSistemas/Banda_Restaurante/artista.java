public class Artista extends Pessoa {

 private boolean iniciante;
 private boolean solo;
 private String genero_musical;
  private float valor_show;
  private String rede_social;
  private String contato;
  private float gorgeta;


  public Artista (String nome, String data_nasc, String endereco, String cpf, char genero, boolean iniciante, boolean solo, String genero_musical, float valor_show, String rede_social, String contato, float 
 gorgeta){

    super( nome, data_nasc, endereco, cpf, genero);
    
  }

  public boolean receberCache (float valor_show){
    return false; 
  }

  public boolean receberGorgeta (float gorgeta){
    return true;
  }

  public void avaliar_estabelecimento (String nome, String avaliacao){
    
  }
}
