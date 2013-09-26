// js/collections/todos.js

var app = app || {};

// Todo 컬렉션
// ---------------

// 외부의 서버 대신에 *localStorage*에 의해 저장되는
// 할일들의 컬력션.
var TodoList = Backbone.Collection.extend({

  // 이 컬렉션의 모델을 가리킨다.
  model: app.Todo,

  // `"todos-backbone"` 이름 공간의 할일 항목 모두를 저장한다.
  localStorage: new Backbone.LocalStorage('todos-backbone'),

  // 완료된 모든 할일 함목 목록을 필터링한다.
  completed: function() {
    return this.filter(function( todo ) {
      return todo.get('completed');
    });
  },

  // 완료되지 않은 할일 항목 목록을 필터링한다.
  remaining: function() {
    return this.without.apply( this, this.completed() );
  },

  // Todos는 데이타베이스에 정렬되지 않은 GUID순서로 저장될 지라도
  // 일련의 순서로 유지된다. 이것은 새로운 아이템의 다음 순서값을 생성한다.
  nextOrder: function() {
    if ( !this.length ) {
      return 1;
    }
    return this.last().get('order') + 1;
  },

  // Todos는 원래의 입력 순서대로 정렬한다.
  comparator: function( todo ) {
    return todo.get('order');
  }
});

// **Todos**의 전역 컬력션을 생성한다.
app.Todos = new TodoList();