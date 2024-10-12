// javascript function to create JSON object
function fn()
{
    var config = {
        name : "Kitkat",
        baseURL : 'https://reqres.in/api'
    };

    var env = karate.env
    karate.log('The value of env is : ',env);

    //dummy values
    if (env == 'qa')
    {
        config.baseURL = 'https://reqres.in/api/qa'
    }
    else if (env == 'dev')
    {
        config.baseURL = 'https://reqres.in/api/dev'
    }
    else
    {
        config.baseURL = 'https://reqres.in/api'
    }

    // karate.configure('connectionTimeout',5000);
    // karate.configure('readTimeout',5000);   
    return config
}