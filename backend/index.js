const express = require('express');
const cors = require('cors');
const app = express();

app.use(cors());
app.use(express.json());

const links = [
    { title: "Instagram", url: "https://instagram.com" },
    { title: "LinkedIn", url: "https://linkedin.com" }
];

app.get('/api/links', (req, res) => {
    res.json(links);
});

app.listen(3000, () => console.log('Server running on port 3000'));