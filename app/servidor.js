const app = require("./componentesServidor/app");
const dotenv = require("dotenv");

dotenv.config();

app.listen(process.env.portaServidor, () => {
    console.log(`\n[Url do Servidor] http://localhost:${process.env.portaServidor}/\n`);
});