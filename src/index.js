'use strict';
let sms= new (require("./Sms"))();

function dispatch(event, callback) {

    try {        
        sms.handleSession('3097501417').then(r=> callback(r));	

    } catch (e) {
        console.log('error in orchestration new message');
        throw e;
    }
};

module.exports.handler = (event, context, callback) => {

    if (context)
        context.callbackWaitsForEmptyEventLoop = false;

    try {
        dispatch(event,
            (response) => {
                callback(null, response);

                console.log(event);
            });
    } catch (err) {
        callback(err);
    }

}
