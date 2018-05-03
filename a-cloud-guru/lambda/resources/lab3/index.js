var AWS = require('aws-sdk');

var docClient = new AWS.DynamoDB.DocumentClient();
var table = "cloudguru-table";

exports.handler = (event, context, callback) => {
    // event comes in is the full DynamoDB record
    console.log(JSON.stringify(event, null, 2));

    event.Records.forEach(function(record) {
        // this function only operates on new data, not modified data
        if (record.eventName !== "INSERT") { return null; }

        net = record.dynamodb.NewImage.gross.N - record.dynamodb.NewImage.costs.N;

        docClient.put({
            TableName: table,
            Item: {
                "txid": record.dynamodb.Keys.txid.S,
                "costs": record.dynamodb.NewImage.costs.N,
                "gross": record.dynamodb.NewImage.gross.N,
                "net": net,
                "timestamp": (new Date()).toISOString(),
            }
        }, function(err, data) {
            if (err) console.log(err);
            else console.log("DynamoDB write succeeded with: ", data);
        });
    });
    callback(null, {});
};
