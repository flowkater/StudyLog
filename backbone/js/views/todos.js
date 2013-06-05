// js/view/todos.js

// 할일 항목 뷰
// --------------

// 할일 항목에 대한 DOM 요소...
app.TodoView = Backbone.View.extend({

  //... li 태그
  tagName:  'li',

  // 단일 아이템에 대한 템플릿 함수를 캐쉬한다.
  template: _.template( $('#item-template').html() ),

  // 항목에 지정된 DOM 이벤트
  events: {
    'click .toggle':  'toggleCompleted',
    'dblclick label': 'edit',
    'click .destroy': 'clear',
    'keypress .edit': 'updateOnEnter',
    'blur .edit':   'close'
  },

  // TodoView는 다시 렌더링하기 위해서 모델의 변경을 감시한다.
  // 이 앱에서는 **Todo**와 **TodoView** 사이에 일대일 대응이 있기 때문에,
  // 편의상 모델에 직접적인 참조를 설정할 수 있다.
  initialize: function() {
    this.model.on( 'change', this.render, this );
    this.model.on( 'destroy', this.remove, this );
    this.model.on( 'visible', this.toggleVisible, this );
  },

  // 할일 항목의 제목을 다시 그린다.
  render: function() {
    this.$el.html( this.template( this.model.toJSON() ) );
    this.$el.toggleClass( 'completed', this.model.get('completed') );

    this.toggleVisible();
    this.input = this.$('.edit');
    return this;
  },

  toggleVisible: function() {
    this.$el.toggleClass( 'hidden',  this.isHidden());
  },

  isHidden: function() {
    var isCompleted = this.model.get('completed');
    return ( // hidden cases only
      (!isCompleted && app.TodoFilter === 'completed')
      || (isCompleted && app.TodoFilter === 'active')
    );
  },

  // 모델의 `"completed"` 상태를 전환한다.
  toggleCompleted: function() {
    this.model.toggle();
  },

  // 이 뷰를 입력 필드를 보여주기 위해 `"editing"` 모드로 전환한다.
  edit: function() {
    this.$el.addClass('editing');
    this.input.focus();
  },

  // 할일에 대한 변경을 저장하기 위해 `"editing"` 모드를 끝낸다.
  close: function() {
    var value = this.input.val().trim();

    if ( value ) {
      this.model.save({ title: value });
    } else {
      this.clear();
    }

    this.$el.removeClass('editing');
  },

  // 항목을 수정하는 동안 `enter`를 누르면
  updateOnEnter: function( e ) {
    if ( e.which === ENTER_KEY ) {
      this.close();
    }
  },

  // 항목을 제거하고, *localStorage*에서 모델을 삭제하고, 그 뷰를 제거한다.
  clear: function() {
    this.model.destroy();
  }
});