public class Funcionario extends Pessoa{
  private String cargo;
  private float salario;
  private int carga_horaria;
  private String pis;
  private float vt;
  private float va;

  public Funcionario(String nome, String data_nasc, String endereco, String cpf, char genero, String cargo, float salario, int carga_horaria, String pis, float vt, float va){
   
    super(nome, data_nasc, endereco, cpf, genero); 
  }
  public boolean receberSalario(){
    return true;
  }
  public boolean receberVa(){
    return false;
  }
  public boolean receberVt(){
    return true;
  }
  public void tirarFerias(String pis, int tempo){
    
  }
  public boolean baterPonto(int carga_horaria){
    return true;
  }
  public void trabalhar(String cargo){
    
  }
  public void pedirDemissao(String pis){
    
  }
  
  }
