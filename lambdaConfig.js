module.exports = {
    region: 'us-west-2',
    profile: 'dev',
    handler: 'index.handler',
    assumedRole: 'arn:aws:iam::300813158921:role/GroupAccess-Developers-Channels',
    role: 'arn:aws:iam::300813158921:role/ch2-sms-lambda-role',
    functionName: 'ch2-docker-test',
    functionArn: 'arn:aws:lambda:us-west-2:300813158921:function:ch2-docker-test',
    timeout: 30,
    memorySize: 128,
    publish: true, 
    runtime: 'nodejs6.10', 
    vpc: { 
        SecurityGroupIds: ['sg-02c36978'],
        SubnetIds: ['subnet-ee4c6c98','subnet-58141a3c']
    },   
    environment: {
        Variables: {
            DB_DIALECT: 'mysql', 
            NODE_ENV : 'test', 
            DB_DATABASE:'sms', 
            TEST_DB_USER_NAME: 'smsmaster', 
            TEST_DB_PASSWORD: 'F9ou2hiu!', 
            TEST_DB_HOST:'do-sms-proto.c72kfbsop89k.us-west-2.rds.amazonaws.com',
            BOT_MESSAGE_TOPIC: 'ch2-sms-bot-message-topic',
            IC_TOKEN_ENDPOINT: 'InContactAuthorizationServer/Token',
            IC_CHAT_ENDPOINT: 'InContactAPI/services/v9.0/contacts/chats/',
            IC_CHAT_SEND_ENDPOINT: '/send-text',
            IC_CLIENT_SECRET: 'QUE5QkNGRDM3QjE0NERDRjg3RUNDRUNDQjE4NTkzNTc=',
            IC_CLIENT_ID: 'internal@inContact Inc.',
            IC_POC: '8f81cbfb-8cbc-4298-ab53-70f192fd9e3a',
            IC_API_PWD: 'qa',
            IC_API_USER: 'namitha@bu230023.com',
            IC_API_URL: 'https://api-sc1.ucnlabext.com/'
        }
    }   
}