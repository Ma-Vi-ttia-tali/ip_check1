import 'package:chuck_norris/chuck_norris.dart' as chuck_norris;

void main(List<String> arguments) {
   final ip = await chuck_norris.getIp();
  print(ip);
}
