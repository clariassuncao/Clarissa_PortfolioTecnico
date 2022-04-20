public class Funcionario extends Pessoa{
  private String cargo;
  private int cargaHoraria;
  private boolean bateuPonto;
  private String pis;
  private float salario;
  private float vt;
  private float va;

  public Funcionario (String nome, String cpf, String data_nasc, String contato, String genero, String endereco, String cargo, int cargaHoraria, boolean bateuPonto, String pis, float salario, float vt, float va){
    super(nome, cpf, data_nasc, contato, genero, endereco);
  }
  public boolean baterPonto (){
    return true;
  }

  public boolean aumentarSalario (float salario, String  nome, int cargaHoraria){
  return true;
    
  }

  public boolean aumentarSalario (float salario, String nome){
  return true;
 
  } 

  public boolean receberSalario (){
  return true;

  }

  public boolean receberVale (String pis) {
  return true;
 
  }

  public boolean terFerias (String pis){
  return true;

    }

  public void trabalhar (){
    
  }

  public int fazerHoraExtra () {
    
  }

  public boolean serTransferido (Pavilhao pavilhao){   
    return true;
    
  }

  public void serDemitido (String pis){
    
  } 

  public void pedirDemissao (String nome, String pis, String cargo ) {
    
  }
  
}
