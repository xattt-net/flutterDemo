import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName:
                Text('王志正', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('admin@xattt.net'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://resources.ninghao.org/images/wanghao.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image: NetworkImage(
                    'https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.yellow[400].withOpacity(0.6), BlendMode.hardLight),
              ),
            ),
          ),
          ListTile(
            title: Text('信息', textAlign: TextAlign.right),
            trailing: Icon(Icons.message, color: Colors.green, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('收藏', textAlign: TextAlign.right),
            trailing: Icon(Icons.favorite, color: Colors.pink, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('设置', textAlign: TextAlign.right),
            trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
