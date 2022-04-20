public class Gerente extends Pessoa {

public Gerente(String nome, String data_nasc, String endereco, String cpf, char genero){
  
  super(nome, data_nasc, endereco, cpf, genero);
  }

  public void buscarBandas (String nome, String genero_musical){
    
  }
  public boolean contatarBandas (String nome, String contato){
    return false;
  }
  public boolean contatarArtista (String nome, String contato){
    return true;
  }
public boolean comunicarEstabelecimento(){
  return true;
}
  public void delegarFuncao (String nome, String cargo){
    
  }
  
}
