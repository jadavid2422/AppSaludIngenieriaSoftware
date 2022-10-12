import 'package:flutter/material.dart';

class MenuBarraLateral extends StatelessWidget {
  const MenuBarraLateral({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
        children: [
          const _DrawerHeader(),
          agregarOpcionBarraLateral(context, Icons.account_circle_rounded, 'Mi perfil'),//, UsuarioPrueba.routerName),
          agregarOpcionBarraLateral(context, Icons.account_tree_outlined , 'Configurar'),//, BdMovimientosView.routerName),
          agregarOpcionBarraLateral(context, Icons.privacy_tip_rounded , 'Privacidad'),//, EstadisticasEmpresaView.routerName),
          agregarOpcionBarraLateral(context, Icons.circle_notifications_rounded, 'Alertas'),//, TableroMovimientosView.routerName),
          agregarOpcionBarraLateral(context, Icons.help, 'Ayuda'),//, GastosView.routerName),   
        ],
      ),
    );
  }
  
  ListTile agregarOpcionBarraLateral(BuildContext context, IconData icono, String nombreOpcion){//], String vista){
    return
    ListTile(
            leading: Icon(icono),
            title: Text(nombreOpcion,style: const TextStyle(fontSize: 18),),
            onTap: () {
              Navigator.pop(context);
              //Navigator.restorablePushNamed(context, vista);
            },
          );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/familia.png'), fit: BoxFit.cover)),
      child: Container(),
    );
  }
}
