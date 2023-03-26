import 'package:projeto_enumswitch/projeto_enumswitch.dart' as projeto_enumswitch;

void main() {

  escolherSorveteEnum(Sabores.morango);
  escolherSorveteEnum(Sabores.limao);
  escolherSorveteEnum(Sabores.uva);
  escolherSorveteEnum(Sabores.qualquer);

  print("///////////////////////////////////////////////////////////");

  escolherSorveteSwitch(Sabores.morango);
  escolherSorveteSwitch(Sabores.limao);
  escolherSorveteSwitch(Sabores.uva);
  escolherSorveteSwitch(Sabores.qualquer);

  Set<String> registrosVisitadas = <String>{};
  registrosVisitadas = regitrarSorveteria("Sorveteria Sabores", registrosVisitadas);
  registrosVisitadas = regitrarSorveteria("Sorveteria Orlando", registrosVisitadas);
  registrosVisitadas = regitrarSorveteria("Sorveteria Brasil", registrosVisitadas);
  registrosVisitadas = regitrarSorveteria("Sorveteria Sabores", registrosVisitadas);
  print(registrosVisitadas);


  //////////MAP///////////////
  Map<String, double> registrarPrecoSorvetes = {};

  registrarPrecoSorvetes["Sorveteria Sabores"] = 5;
  registrarPrecoSorvetes["Sorveteria Orlando"] = 6;
  registrarPrecoSorvetes["Sorveteria Brasil"] = 7;

  print("Preços unitarios de sorvete: $registrarPrecoSorvetes");
}

////SET//////////////Sem repetir o nome da sorveteria;

Set<String>regitrarSorveteria(String sorveteria, Set<String> banco){

  banco.add(sorveteria);
  return banco;

}

//Else if///////////////////////////////////////////////

void escolherSorveteEnum(Sabores sabor){
  if(sabor == Sabores.morango){
    print("Sabor morango/if");
  }else if(sabor == Sabores.limao){
    print("Sabor limão/else if");
  }else if(sabor == Sabores.uva){
    print("Sabor uva/else if");
  }else{
    print("Qualquer sabor/else");
  }
}


////Switch Case////


void escolherSorveteSwitch(Sabores sabor) {
  switch (sabor) {
    case Sabores.morango:
      print("Sabor morango/switch");
      break;
    case Sabores.limao:
      print("Sabor limão/switch");
      break;
    case Sabores.uva:
      print("Sabor uva/switch");
      break;
    default:
      print("Qualquer sabor/switch");
  }
}


////ENUM///////////////
enum Sabores{

  morango,
  uva,
  limao,
  qualquer,

}
///////////////////////


