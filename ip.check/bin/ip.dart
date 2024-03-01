import 'package:ip/ip.dart' as iplib;

void main(List<String> arguments) async {
  final ip = await iplib.getIp();
  print(ip);
}
//compaia regione codice postale citta