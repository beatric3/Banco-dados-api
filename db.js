const mysql = require('mysql2/promise');
const client = mysql.createPool(process.env.CONNECTION_STRING);
async function selectCustomers() {
    const res = await client.query('SELECT * FROM usuarios');
    return res[0];
}
 
module.exports = { selectCustomers }

 
app.get('/usuarios', async (req, res) => {
    const results = await db.selectCustomers();
    res.json(results);
})
