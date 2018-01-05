const fs = require('fs');
const util = require('util');

const parser = require('./parser');

const file = fs.readFileSync('./test.rnd', 'utf-8');

fs.writeFileSync('ast.json', JSON.stringify(parser.parse(file), null, 2));
