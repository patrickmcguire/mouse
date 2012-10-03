var sequence = 0;
var queue = [];
var session = Math.floor(Math.random()*9007199254740992)

$(document).ready(function() {
    $(document).on('mousemove', function(event) {
        push_queue({
            x: event.pageX,
            y: event.pageY,
            sequence: sequence,
            session: session,
        });
        sequence++;
    });
    window.onbeforeunload = post_queue;
});

function push_queue(ob) {
    queue.push(ob);
    $('#queuesize').html(queue.length);
    if (queue.length > 100) {
        post_queue();
    }
}

function post_queue() {
    var queueback = queue;
    queue = [];
    $.ajax({
        type: 'POST',
        url: '/positions',
        data: {
            positions: JSON.stringify(queueback),
        },
        dataType: 'json',
    });
}
