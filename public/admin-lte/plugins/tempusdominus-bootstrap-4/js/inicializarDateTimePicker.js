window.inicializarDateTimePicker = function(containerId) {
    $(containerId).datetimepicker({
        format: "YYYY-MM-DD HH:mm:ss",
        icons: {
            time: "bi bi-clock",
            date: "bi bi-calendar",
            up: "bi bi-chevron-up",
            down: "bi bi-chevron-down",
            previous: "bi bi-chevron-left",
            next: "bi bi-chevron-right",
            today: "bi bi-check",
            clear: "bi bi-trash",
            close: "bi bi-x",
        }
    });
};