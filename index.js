const express = require('express');
const app = express();
const port = 3000;

// Ruta principal para validar que el contenedor funciona
app.get('/', (req, res) => {
  res.send('<h1>TechMaster LTDA - Pipeline Funcionando</h1><p>Estado: Validado</p>');
});

// Ruta de salud para monitoreo (opcional pero profesional)
app.get('/health', (req, res) => {
  res.status(200).send('OK');
});

app.listen(port, () => {
  console.log(`Servidor corriendo exitosamente en http://localhost:${port}`);
});