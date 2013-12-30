/**
 * Created with JetBrains RubyMine.
 * User: administrator
 * Date: 12/27/13
 * Time: 3:35 PM
 * To change this template use File | Settings | File Templates.
 */
Person = Backbone.Model.extend({
    initialize: function(){
        alert("Welcome to this world");
    }
});

var person = new Person;

var HomeModel = Backbone.Model.extend({
    urlRoot: '/homes',
    defaults: {
        name: '',
        age: 0
    }
});

var home = new HomeModel();
var homeDetail = {
    name: 'hihi',
    age: 1
};

home.save(homeDetail, {
    headers: {'X-CSRF-Token': $("meta[name='csrf-token']").attr("content")},
    success: function(home) {
        console.log(home['attributes']['age']);
        console.log(home['attributes']['name']);
        console.log(home['attributes']['id']);
    },

    error: function(q) {
        console.log(q);
    }
})