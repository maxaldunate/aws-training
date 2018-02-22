exports.handler = (event, context, callback) => {
    //console.log(JSON.stringify(event, null, 2));
    var net_profit = 0;
    event.Records.forEach(function(record) {
        // Kinesis data is base64 encoded so decode here
        var payload = new Buffer(record.kinesis.data, 'base64').toString('ascii');
        console.log('Decoded payload:', payload);
        var line = payload.split(',');
        if (line.length < 3) { return null; }
        net_profit += line[2] - line[3];
    });
    callback(null, {"net_profit": net_profit});
};
