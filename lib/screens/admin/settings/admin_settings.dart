import 'package:flutter/material.dart';
import 'package:skolwa/models/settings.dart';

class AdminSettings extends StatelessWidget {
  const AdminSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _settings = [
      Settings(name: 'School Information', link: '/school_info'),
      Settings(name: 'Polls', link: '/polls'),
      Settings(name: 'School Terms', link: '/school_terms'),
      Settings(name: 'Administrators', link: '/administrators'),
      Settings(name: 'Contact Developers', link: '/contact_developers'),
      Settings(name: 'About Application', link: '')
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView.separated(
        itemCount: _settings.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, _settings[index].link);
            },
            child: ListTile(
              title: Text(_settings[index].name),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(),
      ),
    );
  }
}
