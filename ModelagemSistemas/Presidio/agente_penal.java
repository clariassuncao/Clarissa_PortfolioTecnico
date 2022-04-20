public AgentePenal extends Pessoa{
  

  public AgentePenal(String nome, String cpf, String data_nasc, String contato, String genero, String endereco){
    super (nome, cpf, data,nasc, contato, genero, endereco);
  }
  public boolean vigiar(Pavilhao pavilhao){
    return true;
  }
  public boolean acompanharPreso(Presidiario presidiario){
    return true;
  }
  public boolean transferenciaPresodiario(Presidiario presidiario){
     return true;
   } 
  public void advertir(Presidiario presidiario, String motivo){
    
  }
  public void advertir(Visitante visitante, String motivo){
    
  }
  public void advertir(Presidiario presidiario, Visitante visitante, String motivo){
    
  }
  public boolean conferir(Presidiario presidiario){
    return true;
  }
  public boolean conferir(Pavilhao p){
    return true;
  }
  public boolean revistar(Presidiario pre){
    return true;
  } 
  public boolean revistar(Visitante p){
    return true;
  }
 }
