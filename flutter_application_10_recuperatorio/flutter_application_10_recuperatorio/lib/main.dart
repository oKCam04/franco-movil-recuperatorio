import 'package:flutter/material.dart';
import 'package:flutter_application_10_recuperatorio/views/empresa.dart';
import 'package:flutter_application_10_recuperatorio/views/video.dart';

void main() {
  runApp(ChessApp());
}

class ChessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChessBoardScreen(),
    );
  }
}

// Clase lógica del tablero
class ChessBoard {
  final int size;
  final List<String> pieces; 
  final String color1;
  final String color2;

  ChessBoard({
    this.size = 8,
    this.color1 = "white",
    this.color2 = "black",
  }) : pieces = [];

  void addPiece(String piece, String position) {
    pieces.removeWhere((p) => p.endsWith("@$position")); 
    pieces.add("$piece@$position");
  }

  void removePiece(String position) {
    pieces.removeWhere((p) => p.endsWith("@$position"));
  }

  String? getPieceAt(String position) {
    try {
      return pieces.firstWhere((p) => p.endsWith("@$position")).split("@")[0];
    } catch (e) {
      return null;
    }
  }
}

// Pantalla del tablero
class ChessBoardScreen extends StatefulWidget {
  @override
  _ChessBoardScreenState createState() => _ChessBoardScreenState();
}

class _ChessBoardScreenState extends State<ChessBoardScreen> {
  final ChessBoard board = ChessBoard();

  @override
  void initState() {
    super.initState();
    board.addPiece("♜", "A8");
    board.addPiece("♞", "B8");
    board.addPiece("♛", "D8");
    board.addPiece("♚", "E8");
    board.addPiece("♙", "E2");
  }

  Color _getSquareColor(int row, int col) {
    return (row + col) % 2 == 0 ? Colors.white : Colors.grey.shade800;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chess Board")),
      body: Column(
  children: [
    Expanded(
      flex: 4,
      child: GridView.builder(
        itemCount: 64,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 8,
        ),
        itemBuilder: (context, index) {
          int row = 8 - index ~/ 8;
          int col = index % 8;
          String position = "${String.fromCharCode(65 + col)}$row";
          String? piece = board.getPieceAt(position);

          return Container(
            decoration: BoxDecoration(
              color: _getSquareColor(row, col),
              border: Border.all(color: Colors.black26),
            ),
            child: Center(
              child: Text(
                piece ?? "",
                style: TextStyle(fontSize: 24),
              ),
            ),
          );
        },
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> VideoPlatform()));
            },
            child: Text("Videos"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> CompanyHolding()));
            },
            child: Text("Plataforma"),
          ),
        ],
      ),
    ),
  ],
),

    );
  }
}
