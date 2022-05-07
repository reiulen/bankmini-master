@push('css')
<link rel="stylesheet" href="{{ asset('assets/plugins/highcharts/css/highcharts.css') }}">
@endpush

@push('script')
<script src="{{ asset('/assets/plugins/highcharts/highstock.js') }}"></script>
<script src="{{ asset('/assets/plugins/highcharts/modules/exporting.js') }}"></script>
<script src="{{ asset('/assets/plugins/highcharts/modules/export-data.js') }}"></script>
@endpush
