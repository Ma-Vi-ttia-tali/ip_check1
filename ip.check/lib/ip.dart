import "dart:convert";
import "package:http/http.dart" as http;

const stringUrl = "https://ipapi.co/json/";
//api con cui ottieni ip pubblico
Future<Ip> getIp() async {
  //con async la cimata diventa asincrona --> non devi aspettare che sia eseguita l'azione precedente per farla
  final uri = Uri.parse(stringUrl);
  // gli passiamo la variabile alla classe
  // la convertiamo in un oggetto
  final res = await http.get(uri);
  //tramite await ti dice che aspetta esecuzione azione precedente
  //tramite metodo get fai request ip
  final Map<String, dynamic> data = json.decode(res.body);
  return Ip(
      ip: data['ip'],
      region: data['region'],
      postal: data['postal'],
      city: data["city"]);
  //per far restituire variabili dall'elenco json
}

class Ip {
  String ip, region, postal, city;
  Ip(
      {required this.ip,
      required this.region,
      required this.postal,
      required this.city});
  @override
  String toString() {
    return "$ip $region $postal $city";
  }
}
