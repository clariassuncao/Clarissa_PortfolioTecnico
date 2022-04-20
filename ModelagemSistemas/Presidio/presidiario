public class Presidiario extends Pessoa{
  private int codigo;
  private String crime;
  private int numCela;
  private String advogado;
  private int tempoSentencaEmMeses;
  private boolean julgamento;
  private boolean fianca;
  

  public Presidiario (String nome, String cpf, String data_nasc, String contato, String genero, String endereco, int codigo, String crime, int numCela, String advogado){
    super(nome, cpf, data_nasc, contato, genero, endereco);
    this.codigo = codigo;
    this.crime = crime;
    this.numCela = numCela;
    this.advogado = advogado;
  }
  
  public void tatuar (String tatuagem){

  }
  
  public boolean receberVisita (String nome, String codigo, String numCela){
    // nome: nome de quem está visitando o preso
    // codigo: codigo do preso que está sendo visitado
    // numCela: número da cela do preso que vai receber a visita
    return true;
  }
  
  
  public boolean receberLigacao (String nome_ligando, String contato , String nome_preso, String numCela){
    // nome_ligando: nome de quem está ligando
    // contato: o contato de quem está ligando para o preso
    // nome_preso: nome do preso que recebeu a ligação
    // numCela: número da cela do preso que recebeu a ligação
    return true;
  }
  
  public boolean fazerLigacao (String nome_preso, int codigo, String nome_ligando, String contato_ligando){
    // nome_preso: nome do preso que está fazendo a ligação
    // codigo: codigo do preso que está fazendo a ligação
    // nome_ligando: nome para quem o preso ligou
    // contato_ligando: o contato de quem o preso ligou
    return true;
  }
  
  public void serLiberado (String nome_preso, String codigo){
    // nome_preso: nome do preso que está sendo liberado
    // codigo: codigo do preso que está sendo liberado
  }

  public boolean serTransferido (int numCela, Pavilhao pavilhao, Funcionario funcionario){
    return true;
  }

  public void sair (String data_saida, String data_volta, String motivo_saida){
    // data_saida: data que o presidiario saiu da prisão
    // data_volta: data que o presidiario tem que voltar para a prisão
  }

  public boolean comparecerAoJulgamento (String cpf, String crime, String advogado, Funcionario funcionario){
    return false;
  }

  public boolean banhoDeSol (){
    return true;
  }

  public boolean recolher (int codigo){
    return true;
  }

  public boolean irParaSolitaria (String motivo, String tempo_solitaria, int codigo){
    return false;
  }
}
