import 'package:flutter/material.dart';

class VideoPlatform extends StatefulWidget {
  const VideoPlatform({super.key});

  @override
  State<VideoPlatform> createState() => _VideoPlatformState();
}

class _VideoPlatformState extends State<VideoPlatform> {
  Map<String, int> videos = {
    "Curso de Flutter": 20,
    "Introducción a Dart": 15,
  };

  int suscriptores = 100;

  void uploadVideo(String title, int duration) {
    setState(() {
      videos[title] = duration;
    });
  }

  void removeVideo(String title) {
    setState(() {
      videos.remove(title);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Plataforma de Videos")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: videos.entries.map((entry) {
          return ListTile(
            title: Text(entry.key),
            subtitle: Text("${entry.value} minutos"),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => removeVideo(entry.key),
            ),
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          uploadVideo("Nuevo video ${videos.length + 1}", 10);
        },
      ),
    );
  }
}
