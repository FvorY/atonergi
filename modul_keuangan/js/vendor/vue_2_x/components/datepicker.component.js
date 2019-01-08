Vue.component('vue-datepicker', {

  props: ['name', 'id', 'title', 'value', 'disabled', 'readonly'],

    mounted: function(){
      var vm = this;
        this.$datePicker = $(this.$el).datepicker({autoHide: true, format: 'dd/mm/yyyy'})
        .on('change', function(e){
            vm.$emit('input', $(e.target).val())
        });
    },

    watch: {
      value: function(e){
        alert('datepicker value change '+e);
      }
    },

    template: `
        <input type="text" :value="value" class="form-control form-control-sm" :name="name" :id="id" :title="title" :disabled="disabled" :readonly="readonly" style="cursor: pointer; background: white;">
    `,
});