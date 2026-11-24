const express = require('express');
const app = express();
app.use(express.json());

app.get('/', (req, res) => {
    res.status(200).json({
        message: 'Hello! Welcome to our DevOps CI/CD project.',
        environment: process.env.APP_ENV || 'local',
        status: 'running'
    });
});

app.get('/health', (req, res) => {
    res.status(200).json({
        status: 'healthy'
    });
});

module.exports = app;