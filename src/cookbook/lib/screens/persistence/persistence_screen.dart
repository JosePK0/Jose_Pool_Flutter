import 'package:flutter/material.dart';
import 'sqlite_example.dart';
import 'read_write_files_example.dart';
import 'key_value_storage_example.dart';

class PersistenceScreen extends StatelessWidget {
  const PersistenceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Persistence Examples'),
          bottom: const TabBar(
            indicatorColor: Colors.orange,
            indicatorWeight: 3.0,
            tabs: [
              Tab(
                icon: Icon(Icons.storage),
                text: 'SQLite',
              ),
              Tab(
                icon: Icon(Icons.file_copy),
                text: 'Read/Write Files',
              ),
              Tab(
                icon: Icon(Icons.vpn_key),
                text: 'Key-Value Storage',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            SQLiteExample(),
            ReadWriteFilesExample(),
            KeyValueStorageExample(),
          ],
        ),
      ),
    );
  }
}