import 'package:burc_app1/model/burc.dart';
import 'package:flutter/material.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({super.key, required this.secilenBurc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        primary: true,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 250,
              pinned: true,
              //floating: true,
              flexibleSpace: FlexibleSpaceBar(
                  title: Text(secilenBurc.burcAdi),
                  centerTitle: true,
                  background: Image.asset(
                    "images/" + secilenBurc.burcBuyukResim,
                    fit: BoxFit.cover,
                  )),
              title: Text(secilenBurc.burcAdi),
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: Text(secilenBurc.burcDetayi,
                    style: Theme.of(context).textTheme.subtitle1),
              ),
            )
          ],
        ));
  }
}
