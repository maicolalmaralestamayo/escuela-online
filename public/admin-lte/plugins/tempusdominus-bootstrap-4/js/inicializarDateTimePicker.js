window.inicializarDateTimePicker = function(groupSelector) {
    const $group = $(groupSelector); // Esto apunta al input-group (el contenedor)
    const $input = $group.find('input').get(0); // El campo de texto real dentro del grupo

    $group.datetimepicker({
        format: "YYYY-MM-DD HH:mm:ss",
        locale: 'es',
        icons: {
            time: "bi bi-clock",
            date: "bi bi-calendar4-week",
            up: "bi bi-chevron-up",
            down: "bi bi-chevron-down",
            previous: "bi bi-chevron-left",
            next: "bi bi-chevron-right",
            today: "bi bi-check",
            clear: "bi bi-trash",
            close: "bi bi-x",
        },
        // inline: true,
        sideBySide: true,
    });

    $group.on('hide.datetimepicker', function () {
        $input.dispatchEvent(new Event('input'));
    });
};