import 'package:burc_app1/burc_detay.dart';
import 'package:burc_app1/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({super.key, required this.listelenenBurc});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => BurcDetay(secilenBurc: listelenenBurc)));
        },
        leading: Image.asset("images/" + listelenenBurc.burcKucukResim),
        title: Text(listelenenBurc.burcAdi),
        subtitle: Text(listelenenBurc.burcTarihi),
      ),
    );
  }
}
