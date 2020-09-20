//= require fullcalendar

$('#calendar').fullCalendar({
  events: {
    url: "#{member_visits_path(@member, format: :json)}"
  }
});
