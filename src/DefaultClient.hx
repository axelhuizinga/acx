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
			link: new HttpLink({
				uri: uri, //credentials: 'include',
				fetchOptions: {					
					mode: 'cors',
					credentials: 'omit',
					method:"POST"
				}
			}),
			cache: new InMemoryCache(),
			#if debug connectToDevTools: true #end
		});
	}
}