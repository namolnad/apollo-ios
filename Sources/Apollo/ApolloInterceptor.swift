/// A protocol to set up a chainable unit of networking work.
public protocol ApolloInterceptor: class {
  
  /// Called when this interceptor should do its work.
  ///
  /// - Parameters:
  ///   - chain: The chain the interceptor is a part of.
  ///   - request: The request, as far as it has been constructed
  ///   - response: The response, as far as it has been constructed
  ///   - completion: The completion block to fire when data needs to be returned to the UI.
  func interceptAsync<Operation: GraphQLOperation, TypedError: Error>(
    chain: RequestChain,
    request: HTTPRequest<Operation>,
    response: HTTPResponse<Operation>,
    completion: @escaping (Result<GraphQLResult<Operation.Data>, TypedError>) -> Void)
}
