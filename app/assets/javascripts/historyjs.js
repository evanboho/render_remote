(function(window, undefined){
	var History = window.History;
	if ( !History.enabled ) {
		return false;
	}
	
	History.Adapter.bind(window, 'statechange', function(){
		var State = History.getState();
		History.log(State.data, State.title, State.url);
	});
})(window);