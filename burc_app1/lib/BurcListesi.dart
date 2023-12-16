import 'package:burc_app1/burcItem.dart';
import 'package:burc_app1/model/burc.dart';
import 'package:burc_app1/strings.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;
  BurcListesi() {
    tumBurclar = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burç listesi"),
      ),
      body: Center(
          child: ListView.builder(
        itemCount: tumBurclar.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return BurcItem(listelenenBurc: tumBurclar[index]);
        },
      )),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarih = Strings.BURC_TARIHLERI[i];
      var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
      var burcKucuk =
          Strings.BURC_ADLARI[i].toLowerCase() + (i + 1).toString() + '.png';
      var burcBuyuk =
          Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk${i + 1}.png';
      Burc eklenecek =
          Burc(burcAdi, burcTarih, burcDetay, burcKucuk, burcBuyuk);
      gecici.add(eklenecek);
    }
    return gecici;
  }
}
