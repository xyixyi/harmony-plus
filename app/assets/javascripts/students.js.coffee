$ ->
    $('#student_search').typeahead
        name: "student"
        remote: "/manager/autocomplete?query=%QUERY"