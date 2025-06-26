import 'package:flutter/material.dart';

class CompanyHolding extends StatefulWidget {
  const CompanyHolding({super.key});

  @override
  State<CompanyHolding> createState() => _CompanyHoldingState();
}

class _CompanyHoldingState extends State<CompanyHolding> {
  Map<String, String> empresas = {
    "TechCorp": "Tecnología",
    "GreenLife": "Salud",
  };

  double ingresosTotales = 0.0;

  void addCompany(String name, String sector) {
    setState(() {
      empresas[name] = sector;
    });
  }

  void calculateTotalRevenue(Map<String, double> revenues) {
    setState(() {
      ingresosTotales = revenues.values.fold(0.0, (a, b) => a + b);
    });
  }

  @override
  void initState() {
    super.initState();
    // Simulamos ingresos iniciales
    calculateTotalRevenue({
      "TechCorp": 1200000.0,
      "GreenLife": 800000.0,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Empresas del Holding")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Ingresos Totales: \$${ingresosTotales.toStringAsFixed(2)}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: empresas.entries.map((entry) {
                  return ListTile(
                    title: Text(entry.key),
                    subtitle: Text("Sector: ${entry.value}"),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        setState(() {
                          empresas.remove(entry.key);
                          calculateTotalRevenue({}); // Reiniciar ingresos si deseas
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                addCompany("NewCo ${empresas.length + 1}", "Finanzas");
              },
              child: Text("Agregar Empresa"),
            ),
          ],
        ),
      ),
    );
  }
}
