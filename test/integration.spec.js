const expect = require('chai').expect;
const MongoClient = require('mongodb').MongoClient;

const url = 'mongodb://database:27017';

it('should connect to mongo', (done) => {
    return MongoClient.connect(url, {useNewUrlParser: true}, (err, client) => {
        expect(err).to.be.null;
        client.close();
        done();
    });
});