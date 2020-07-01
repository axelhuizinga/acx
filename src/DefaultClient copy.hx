package src;
import apollo.client.ApolloClient;
import apollo.cache.inmemory.InMemoryCache;
import apollo.link.ApolloLink;
import apollo.link.http.HttpLink;
import apollo.link.error.ErrorLink;
import apollo.link.error.ErrorResponse;

class DefaultClient extends ApolloClient<Any> {
	public function new(uri:String) {
		super({
			queryDeduplication: false,
			link: ApolloLink.from([
				new ErrorLink(function(errors:ErrorResponse) {
					if (errors.graphQLErrors != null) {
						for (err in errors.graphQLErrors) {
							// Handle error
						}
					}

					if (errors.networkError != null) {
						// Handle error
					}
				}),
				//new HttpLink({uri: uri, credentials: 'same-origin'})
				/**
				 * fetchOptions: {
					mode: 'no-cors',
				  },
				 */
				new HttpLink({uri: uri, credentials: 'include',
					headers: {
					    'Content-Type': 'application/json',
						'Access-Control-Allow-Origin': '*',
						'Access-Control-Allow-Credentials': true,
					}/*
					fetchOptions: {
						mode: 'no-cors',
					  },*/
				})
			]),
			fetchOptions: {
				mode: 'no-cors',
			  },
		/*	,defaultOptions: {
				watchQuery: {
					fetchPolicy: 'cache-and-network',
				},
			},*/
			cache: new InMemoryCache(),
			#if debug connectToDevTools: true #end
		});
	}
}