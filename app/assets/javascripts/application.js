//= require semantic-ui

const scroll_bottom = () => {
    if ($('#messages').length > 0) {
        $('#messages').scrollTop($('#messages')[0].scrollHeight);
    }
};

const clear_message = () => {
    $("form.ui.reply.form").on("ajax:success", () => {
        $('#message_body').val('');
    });
};

$(document).on('turbolinks:load', function () {
    $('.ui.dropdown').dropdown();

    $('.message .close').on('click', function () {
        $(this).closest('.message').transition('fade');
    });

    scroll_bottom();

    clear_message();
})
