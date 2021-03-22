@extends('layouts.master')
@section('title','Home')

@push('page-styles')
<link rel="stylesheet" href="{{asset('modules/chocolat/dist/css/chocolat.css')}}">
<link rel="stylesheet" href="{{asset('modules/datatables/datatables.min.css')}}">
<link rel="stylesheet" href="{{asset('modules/datatables/DataTables-1.10.16/css/dataTables.bootstrap4.min.css')}}">
<link rel="stylesheet" href="{{asset('modules/datatables/Select-1.2.4/css/select.bootstrap4.min.css')}}">
@endpush

@push('page-scripts')
<script src="{{asset('modules/chocolat/dist/js/jquery.chocolat.min.js')}}"></script>
<script src="{{asset('modules/jquery-ui/jquery-ui.min.js')}}"></script>
<script src="{{asset('modules/datatables/datatables.min.js')}}"></script>
<script src="{{asset('modules/datatables/DataTables-1.10.16/js/dataTables.bootstrap4.min.js')}}"></script>
<script src="{{asset('modules/datatables/Select-1.2.4/js/dataTables.select.min.js')}}"></script>
<script src="{{asset('modules/jquery-ui/jquery-ui.min.js')}}"></script>
<script src="{{asset('js/page/modules-datatables.js')}}"></script>
<script>
    $(document).ready(function() {
        //Pagination numbers
        $('#table-1').DataTable({
            "pagingType": "simple_numbers",
            'info': true,
            'autoWidth': true,
            "searching": false,
            "paging": false
        });
    });
</script>
@endpush

@section('content')
<section class="section">
    <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-12">
            <div class="card card-statistic-2">
                <div style="background-color:#3460df !important" class="card-icon shadow-primary">
                    <i class="fas fa-archive"></i>
                </div>
                <div class="card-wrap">
                    <div class="card-header">
                        <h4>Total Evaluasi</h4>
                    </div>
                    <div class="card-body">
                    {{Kustom::CountAlternatifs()*Kustom::CountKriterias()}}
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-12">
            <div class="card card-statistic-2">
                <div style="background-color:#3460df !important" class="card-icon shadow-primary">
                    <i class="fas fa-dollar-sign"></i>
                </div>
                <div class="card-wrap">
                    <div class="card-header">
                        <h4>Total Alternatif</h4>
                    </div>
                    <div class="card-body">
                        {{Kustom::CountAlternatifs()}}
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-12">
            <div class="card card-statistic-2">
                <div style="background-color:#3460df !important" class="card-icon shadow-primary">
                    <i class="fas fa-shopping-bag"></i>
                </div>
                <div class="card-wrap">
                    <div class="card-header">
                        <h4>Total Kriteria</h4>
                    </div>
                    <div class="card-body">
                        {{Kustom::CountKriterias()}}
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-12">
            <div class="card card-statistic-2">
                <div style="background-color:#3460df !important" class="card-icon shadow-primary">
                    <i class="fas fa-shopping-bag"></i>
                </div>
                <div class="card-wrap">
                    <div class="card-header">
                        <h4>Total Akun</h4>
                    </div>
                    <div class="card-body">
                        {{Kustom::CountUsers()}}
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="card" id="mycard-dimiss">
        <div class="card-header">
            <h4 style="margin-top: 0px;">Rangking</h4>

        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table id="table-1" class="table table-striped" width="100%">
                    <thead style="text-align:center;">
                    <tr>
                        <th>RANK</th>
                        <th>NETFLOW</th>
                        <th>ALTERNATIF</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach ($arraynet as $net => $value)
                        <tr align="center">
                            <td>{{$value['rank']}}</td>
                            <td>{{number_format($value['net'], 4)}}</td>
                            <td>{{$value['alternatif']}}</td>
                        </tr>
                    @endforeach
                    </tbody>
                    <tfoot style="text-align:center; color:#666">
                    <tr>
                        <th>RANK</th>
                        <th>NETFLOW</th>
                        <th>ALTERNATIF</th>
                    </tr>
                    </tfoot>
                </table>
            </div>
        </div>


    </div>
    </div>

</section>
@endsection
