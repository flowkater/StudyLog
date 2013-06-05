// js/models/todo.js

var app = app || {};

// Todo 모델
// ---------
// 기본 **Todo** 모델은 'title' 과 'completed' 속성을 갖는다.

app.Todo = Backbone.Model.extend({
	// 할일에 대한 기본 속성
	// 생성된 각 할일은 'title'과 'completed' 키를 갖게 한다.
	defaults: {
		title: '',
		completed: false
	},

	// 할일 항목의 'completed' 상태를 전환한다.
	toggle: function() {
		this.save({
			completed: !this.get('completed')
		});
	}
});