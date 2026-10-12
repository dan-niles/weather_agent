import ballerina/ai;

final ai:Wso2ModelProvider weatherModel = check ai:getDefaultModelProvider();

final ai:Agent weatherAgent = check new (
    systemPrompt = {
        role: string `Weather Assistant`,
        instructions: string `You are a helpful weather assistant.
Use the tools available to you to fetch current weather, forecasts, or other weather related data when asked.
If no weather tools are available, let the user know that weather data access has not been configured yet.
Answer clearly and concisely, including relevant details such as location, temperature, and conditions when available.`
    },
    model = weatherModel,
    tools = []
);
