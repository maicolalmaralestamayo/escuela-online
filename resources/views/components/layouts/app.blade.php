<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Escuela Online</title>

  <!-- fonts -->
  <link rel="stylesheet" href="admin-lte/dist/fonts/css.css">
  <link rel="stylesheet" href="admin-lte/plugins/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" href="admin-lte/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <link rel="stylesheet" href="admin-lte/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <link rel="stylesheet" href="admin-lte/dist/css/adminlte.min.css">
  <link rel="stylesheet" href="admin-lte/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <link rel="stylesheet" href="admin-lte/plugins/daterangepicker/daterangepicker.css">
  <link rel="stylesheet" href="admin-lte/plugins/summernote/summernote-bs4.min.css">
  <link rel="stylesheet" href="bootstrap/icons/bootstrap-icons.min.css">
  @livewireStyles
</head>

<body class="hold-transition sidebar-mini layout-fixed">

  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src='admin-lte/dist/img/logo.png' height="60" width="60">
  </div>

  <livewire:html />

  <!-- Java Script -->
  <script src="admin-lte/plugins/jquery/jquery.min.js"></script>
  <script src="admin-lte/plugins/jquery-ui/jquery-ui.min.js"></script>
  <script>
    $.widget.bridge('uibutton', $.ui.button)
  </script>
  <script src="admin-lte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="admin-lte/plugins/chart.js/Chart.min.js"></script>
  <script src="admin-lte/plugins/sparklines/sparkline.js"></script>
  <script src="admin-lte/plugins/jquery-knob/jquery.knob.min.js"></script>
  <script src="admin-lte/plugins/moment/moment.min.js"></script>
  <script src="admin-lte/plugins/daterangepicker/daterangepicker.js"></script>
  <script src="admin-lte/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
  <script src="admin-lte/plugins/summernote/summernote-bs4.min.js"></script>
  <script src="admin-lte/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
  <script src="admin-lte/dist/js/adminlte.js"></script>
  {{-- activar solo cuantdo se utilice este tipo de componente --}}
  {{-- <script src="admin-lte/dist/js/pages/dashboard.js"></script> --}}
  {{-- <script src="admin-lte/plugins/jqvmap/jquery.vmap.min.js"></script> --}}
  {{-- <script src="admin-lte/plugins/jqvmap/maps/jquery.vmap.usa.js"></script> --}}
  @livewireScripts
</body>

</html>