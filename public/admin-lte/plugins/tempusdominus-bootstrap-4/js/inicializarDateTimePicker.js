window.inicializarDateTimePicker = function () {
    $(".inicializar").datetimepicker({
        format: "YYYY-MM-DD HH:mm:ss",
        icons: {
            time: "bi bi-clock",
            date: "bi bi-calendar",
            up: "bi bi-chevron-double-up",
            down: "bi bi-chevron-double-down",
            previous: "bi bi-chevron-double-left",
            next: "bi bi-chevron-double-right",
            today: "bi bi-check",
            clear: "bi bi-trash",
            close: "bi bi-x-lg",
        },
    });
};