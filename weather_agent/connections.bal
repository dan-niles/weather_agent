import ballerinax/ai.anthropic;

final anthropic:ModelProvider anthropicModelprovider = check new (ampAnthropicProviderAgentManagerKey, "claude-opus-4-1-20250805", ampAnthropicProviderAgentManagerUrl + "/v1");
final PixelgustMcpToolkit pixelgustMcp = check new (pixelgustMcpUrl, auth = {tokenUrl: agentIdTokenUrl, clientId: agentIdClientId, clientSecret: agentIdClientSecret, scopes: agentIdScopes, optionalParams: {"resource": pixelgustMcpUrl}});
