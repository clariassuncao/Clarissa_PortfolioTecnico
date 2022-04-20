public class Estabelecimento {
  private String hoarario_funci;
  private String dias_funci;
  private String nome_local;
  private String contato;
  private String rede_social;
  private Funcionario funcionario;
  private Publico publico;
  private boolean estrutura_banda;
  private boolean aceita_pet;
  private String tipo_comida;
  private String enderecoe;
  private String cnpj;
  private boolean abre24_horas;
  private int datas_disponiveis;

  public Estabelecimento(String horario_funci, String dias_funci, String nome_local, String contato, String rede_social, Funcionario funcionario, Publico publico, boolean estrutura_banda, boolean aceita_pet, String tipo_comida, String enderecoe, String cnpj, boolean abre24_horas, int datas_disponiveis){    
  }
  public boolean abrirEstabelecimento(){
    return true;
  }
  public void contratarFuncionario(Funcionario funcionario){
    
  }
  public void demitirFuncionario(Funcionario funcionario){
    
  }
  public void cadastrarCliente(Publico publico){
    
  }
  public void darDescontoCliente(String nome, float valor){
    
  }
  
  
}
