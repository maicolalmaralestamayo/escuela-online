window.inicializarSelect2 = function(id) {
    const $select = $(id);
    $select.select2({
        dropdownParent: $select.closest('.modal')
    });

    $select.on("select2:select", function () {
        $select.trigger('change.select2');
        $select.get(0).dispatchEvent(new Event('change'));
    });
};

