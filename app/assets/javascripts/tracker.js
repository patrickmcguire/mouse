var sequence = 0;
var queue = [];
var session = Math.random();

$(document).ready(function() {
    $('body').on('mousemove', function(event) {
        push_queue({
            x: event.pageX,
            y: event.pageY,
            sequence: sequence,
            session: session
        });
    });
});

function push_queue(ob) {
    queue.push(ob);
    if (queue.size > 1000) {
        var queueback = queue;
        queue = [];
        $.ajax({
            method: 'POST',
            url: '/movements'
            data: JSON.stringify(queueback);
        });
    }
}
