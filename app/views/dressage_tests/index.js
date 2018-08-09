
<% js = escape_javascript(
  render(partial: 'dressage_tests/list', locals: { dressage_tests: @dressage_tests })
) %>
$("#filterrific_results").html("<%= js %>");
