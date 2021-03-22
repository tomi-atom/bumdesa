<?php

namespace App\Http\Controllers;

use Kustom;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Kriteria;
use App\Alternatif;
use App\Klasifikasi;
use App\Preferensi;
use App\Evaluasi;
use App\User;

class ProController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    // Perhitungan Deviasi Start
    public function ViewDeviasi()
    {
        for ($id = 1; $id <= Kustom::CountKriterias(); $id++) {
            $getjoins = $this->JoinEvaluasi($id);
            $showdeviasi[] = $getjoins;
        }
        // $showdeviasi = $this->Deviasi();
        // dd($showdeviasi);
        return view('pages/promethee/deviasi', ['showdeviasi' => $showdeviasi]);
        // return view('pages/promethee/deviasi');
    }

    public function Deviasi()
    {
        for ($id = 1; $id <= Kustom::CountKriterias(); $id++) {
            $getjoins = $this->JoinEvaluasi($id);
            $datas[] = $getjoins;
        }
        // dd($datas);
        foreach ($datas as $data => $value) {
            for ($x = 0; $x < Kustom::CountAlternatifs(); $x++) {
                for ($y = 0; $y < Kustom::CountAlternatifs(); $y++) {
                    $nilaideviasi[] = [
                        'alternatifx' => $value[$x]->alternatif,
                        'alternatify' => $value[$y]->alternatif,
                        'kriteria' => $value[$x]->kriteria,
                        'tipe' => $value[$x]->tipe,
                        "q" => $value[$x]->q,
                        "p" => $value[$x]->p,
                        'bobot' => $value[$x]->bobot,
                        "deviasi" => ($value[$x]->nilai) - ($value[$y]->nilai)
                    ];
                }
            }
        }
        // dd($nilaideviasi);
        // return $datas;
        return $nilaideviasi;
    }
    // Perhitungan Deviasi End

    // Perhitungan Alternatif/Evaluasi
    public function ViewAlternatif()
    {
        $datas['alternatifs'] = Alternatif::get();
        $datas['kriterias'] = Kriteria::get();
        $datas['klasifikasis'] = Klasifikasi::get();
        $datas['prefs'] = Preferensi::get();

        // $result = json_decode($datas['kriterias'], true);

        // dd($datas['kriterias']);

        return view('pages/promethee/alternatif', ['datas' => $datas]);
    }
    // Perhitungan Alternatif/Evaluasi

    // Perhitungan Indeks Preferensi Start
    public function ViewPreferensi()
    {
        $pref = $this->Preferensi();
        // dd($pref[1]);
        return view('pages/promethee/indekspref', ['pref' => $pref[0]], ['tip' => $pref[1]]);
    }

    public function Preferensi()
    {
        $d[] = $this->Deviasi();
        // dd($d);
        $preferensi = $pref = array();
        foreach ($d as $d) {
            for ($no = 0; $no < count($d); $no++) {
                // dd($d[$no]['tipe']);
                if ($d[$no]['tipe'] == 'Usual') {
                    if ($d[$no]['deviasi'] <= 0) {
                        $nilai = 0;
                        $pref = [
                            'altx' => $d[$no]['alternatifx'],
                            'alty' => $d[$no]['alternatify'],
                            'kriteria' => $d[$no]['kriteria'],
                            'tipe' => $d[$no]['tipe'],
                            'nilai' => $nilai,
                            'ip' => $nilai * $d[$no]['bobot']
                        ];
                    } else {
                        $nilai = 1;
                        $pref = [
                            'altx' => $d[$no]['alternatifx'],
                            'alty' => $d[$no]['alternatify'],
                            'kriteria' => $d[$no]['kriteria'],
                            'tipe' => $d[$no]['tipe'],
                            'nilai' => $nilai,
                            'ip' => $nilai * $d[$no]['bobot']
                        ];
                    }
                } elseif ($d[$no]['tipe'] == 'Quasi') {
                    if (-$d[$no]['q'] <= $d[$no]['deviasi'] and $d[$no]['deviasi'] <= $d[$no]['q']) {
                        // dd(-$d[$no]['p']);
                        $nilai = 0;
                        $pref = [
                            'altx' => $d[$no]['alternatifx'],
                            'alty' => $d[$no]['alternatify'],
                            'kriteria' => $d[$no]['kriteria'],
                            'tipe' => $d[$no]['tipe'],
                            'nilai' => $nilai,
                            'ip' => $nilai * $d[$no]['bobot']
                        ];
                    } elseif ($d[$no]['deviasi'] < -$d[$no]['q'] or $d[$no]['deviasi'] > $d[$no]['q']) {
                        $nilai = 1;
                        $pref = [
                            'altx' => $d[$no]['alternatifx'],
                            'alty' => $d[$no]['alternatify'],
                            'kriteria' => $d[$no]['kriteria'],
                            'tipe' => $d[$no]['tipe'],
                            'nilai' => $nilai,
                            'ip' => $nilai * $d[$no]['bobot']
                        ];
                    }
                } elseif ($d[$no]['tipe'] == 'Linier') {
                    if (-$d[$no]['p'] <= $d[$no]['deviasi'] and $d[$no]['deviasi'] <= $d[$no]['p']) {
                        $nilai = ($d[$no]['deviasi'] / $d[$no]['p']);
                        $pref = [
                            'altx' => $d[$no]['alternatifx'],
                            'alty' => $d[$no]['alternatify'],
                            'kriteria' => $d[$no]['kriteria'],
                            'tipe' => $d[$no]['tipe'],
                            'nilai' => $nilai,
                            'ip' => $nilai * $d[$no]['bobot']
                        ];
                    } elseif ($d[$no]['deviasi'] < -$d[$no]['p'] or $d[$no]['deviasi'] > $d[$no]['p']) {
                        $nilai = 1;
                        $pref = [
                            'altx' => $d[$no]['alternatifx'],
                            'alty' => $d[$no]['alternatify'],
                            'kriteria' => $d[$no]['kriteria'],
                            'tipe' => $d[$no]['tipe'],
                            'nilai' => $nilai,
                            'ip' => $nilai * $d[$no]['bobot']
                        ];
                    }
                } elseif ($d[$no]['tipe'] == 'Level') {
                    if (abs($d[$no]['deviasi']) <= $d[$no]['q']) {
                        $nilai = 0;
                        $pref = [
                            'altx' => $d[$no]['alternatifx'],
                            'alty' => $d[$no]['alternatify'],
                            'kriteria' => $d[$no]['kriteria'],
                            'tipe' => $d[$no]['tipe'],
                            'nilai' => $nilai,
                            'ip' => $nilai * $d[$no]['bobot']
                        ];
                    } elseif ($d[$no]['q'] < abs($d[$no]['deviasi']) and abs($d[$no]['deviasi']) <= $d[$no]['p']) {
                        $nilai = 0.5;
                        $pref = [
                            'altx' => $d[$no]['alternatifx'],
                            'alty' => $d[$no]['alternatify'],
                            'kriteria' => $d[$no]['kriteria'],
                            'tipe' => $d[$no]['tipe'],
                            'nilai' => $nilai,
                            'ip' => $nilai * $d[$no]['bobot']
                        ];
                    } elseif ($d[$no]['p'] < abs($d[$no]['deviasi'])) {
                        $nilai = 1;
                        $pref = [
                            'altx' => $d[$no]['alternatifx'],
                            'alty' => $d[$no]['alternatify'],
                            'kriteria' => $d[$no]['kriteria'],
                            'tipe' => $d[$no]['tipe'],
                            'nilai' => $nilai,
                            'ip' => $nilai * $d[$no]['bobot']
                        ];
                    }
                } elseif ($d[$no]['tipe'] == 'Area') {
                    if (abs($d[$no]['deviasi']) <= $d[$no]['q']) {
                        $nilai = 0;
                        $pref = [
                            'altx' => $d[$no]['alternatifx'],
                            'alty' => $d[$no]['alternatify'],
                            'kriteria' => $d[$no]['kriteria'],
                            'tipe' => $d[$no]['tipe'],
                            'nilai' => $nilai,
                            'ip' => $nilai * $d[$no]['bobot']
                        ];
                    } elseif ($d[$no]['q'] < abs($d[$no]['deviasi']) and abs($d[$no]['deviasi']) <= $d[$no]['p']) {
                        $nilai = (abs($d[$no]['deviasi']) - $d[$no]['q']) / ($d[$no]['p'] - $d[$no]['q']);
                        $pref = [
                            'altx' => $d[$no]['alternatifx'],
                            'alty' => $d[$no]['alternatify'],
                            'kriteria' => $d[$no]['kriteria'],
                            'tipe' => $d[$no]['tipe'],
                            'nilai' => $nilai,
                            'ip' => $nilai * $d[$no]['bobot']
                        ];
                    } elseif ($d[$no]['p'] < abs($d[$no]['deviasi'])) {
                        $nilai = 1;
                        $pref = [
                            'altx' => $d[$no]['alternatifx'],
                            'alty' => $d[$no]['alternatify'],
                            'kriteria' => $d[$no]['kriteria'],
                            'tipe' => $d[$no]['tipe'],
                            'nilai' => $nilai,
                            'ip' => $nilai * $d[$no]['bobot']
                        ];
                    }
                } elseif ($d[$no]['tipe'] == 'Gaussian') {
                    echo $no . "Ini Gaussian <br>";
                }
                array_push($preferensi, $pref);
            }
        }

        $criterias = array(
            "IPK" => array(),
            "Prestasi" => array(),
            "Penghasilan Orang Tua / Wali" => array(),
            "Jumlah Tanggungan Orang Tua / Wali" => array(),
            "Semester" => array(),
            "Proposal PKM" => array(),
            "Status Orang Tua" => array()
        );

        // dd($criterias);

        foreach ($preferensi as $p) {
            if (($p['kriteria']) == 'IPK') {
                array_push($criterias["IPK"], $p);
            } elseif (($p['kriteria']) == 'Prestasi') {
                array_push($criterias["Prestasi"], $p);
            } elseif (($p['kriteria']) == 'Penghasilan Orang Tua / Wali') {
                array_push($criterias["Penghasilan Orang Tua / Wali"], $p);
            } elseif (($p['kriteria']) == 'Jumlah Tanggungan Orang Tua / Wali') {
                array_push($criterias["Jumlah Tanggungan Orang Tua / Wali"], $p);
            } elseif (($p['kriteria']) == 'Semester') {
                array_push($criterias["Semester"], $p);
            } elseif (($p['kriteria']) == 'Proposal PKM') {
                array_push($criterias["Proposal PKM"], $p);
            } elseif (($p['kriteria']) == 'Status Orang Tua') {
                array_push($criterias["Status Orang Tua"], $p);
            }
            // dd($p['kriteria'] == 'Luas Daerah Y. A. G.');
        }
        $hasil = array();
        for ($i = 0; $i < count($criterias['IPK']); $i++) {
            $calculation = $criterias['IPK'][$i]['ip'] + $criterias['Prestasi'][$i]['ip'] + $criterias['Penghasilan Orang Tua / Wali'][$i]['ip'] + $criterias['Jumlah Tanggungan Orang Tua / Wali'][$i]['ip'] + $criterias['Semester'][$i]['ip'] + $criterias['Proposal PKM'][$i]['ip'] + $criterias['Status Orang Tua'][$i]['ip'];
            $temp = array(
                "altx" => $criterias['IPK'][$i]['altx'],
                "alty" => $criterias['IPK'][$i]['alty'],
                "value" => $calculation
            );
            // dd($temp);
            array_push($hasil, $temp);
        }
        $arrays = array();
        array_push($arrays, $preferensi, $hasil);
        return $arrays;
    }
    // Perhitungan Indeks Preferensi End

    // Perhitungan Leaving & Entering Start
    public function ViewLeavingEntering()
    {
        $arrayall = $this->LeavingEntering();
        // $pref = $this->Preferensi();
        // dd($arrayall);
        return view(
            'pages/promethee/leavingentering',
            ['tip' => $arrayall[0]],
            ['tlf' => $arrayall[1]],
            ['lf' => $arrayall[2]],
            ['tle' => $arrayall[3]],
            ['le' => $arrayall[4]]
        );
    }

    public function LeavingEntering()
    {
        $pref = $this->Preferensi();
        $pref = $pref[1];
        $hasil = array(array());
        $cols = 0;
        $rows = 0;
        for ($i = 0; $i < count($pref); $i++) {
            array_push($hasil[$rows], $pref[$i]);
            $cols += 1;
            if ($cols == Kustom::CountAlternatifs()) {
                if (!($i == count($pref) - 1)) {
                    array_push($hasil, array());
                }
                $rows += 1;
                $cols = 0;
            }
        }
        // dd($hasil);

        $arraytlf = $arrayleaving = $arraytef = $arrayentering = array();
        for ($y = 0; $y < Kustom::CountAlternatifs(); $y++) {
            $tlf = $tef = 0;
            for ($x = 0; $x < Kustom::CountAlternatifs(); $x++) {
                $tlf = $tlf + $hasil[$y][$x]['value'];
                $tef = $tef + $hasil[$x][$y]['value'];
            }
            array_push($arraytlf, number_format($tlf, 4));
            array_push($arraytef, number_format($tef, 4));
            $leaving = $tlf / (Kustom::CountAlternatifs() - 1);
            $entering = $tef / (Kustom::CountAlternatifs() - 1);
            array_push($arrayleaving, number_format($leaving, 4));
            array_push($arrayentering, number_format($entering, 4));
        }
        // dd($arrayleaving);
        // dd($arraytef);
        // dd($arrayentering);

        $arrayall = $arraynet = array();
        $no = 1;
        for ($n = 0; $n < Kustom::CountAlternatifs(); $n++) {
            $net = $arrayleaving[$n] - $arrayentering[$n];
            $temp = [
                'alternatif' => $no,
                'net' => $net
            ];
            $no++;
            array_push($arraynet, $temp);
        }
        // dd($arraynet);
        array_push($arrayall, $hasil, $arraytlf, $arrayleaving, $arraytef, $arrayentering);
        // dd($arrayall);
        return $arrayall;
    }
    // Perhitungan Leaving & Entering end

    public function ViewNet()
    {
        $arraynet = $this->Net();
        // dd($arraynet);
        return view('pages/promethee/net', ['arraynet' => $arraynet]);
    }

    public function Net()
    {
        $arrayall = $this->LeavingEntering();
        $namaalternatifs = Kustom::NamaAlternatifs();
        $arraynet = array();
        // dd($arrayall);
        for ($n = 0; $n < Kustom::CountAlternatifs(); $n++) {
            $net = $arrayall[2][$n] - $arrayall[4][$n];
            $temp = [
                'alternatif' => $namaalternatifs[$n]['nama'],
                'net' => $net
            ];
            array_push($arraynet, $temp);
        }

        $ranks = array();
        foreach ($arraynet as $key => $row) {
            $ranks[$key] = $row['net'];
        }
        array_multisort($ranks, SORT_DESC, $arraynet);

        $no = 1;
        for ($x = 0; $x < count($arraynet); $x++) {

            if ($x > 0 && $arraynet[$x]['net'] == $arraynet[$x - 1]['net']) {
                $arraynet[$x]['rank'] = $arraynet[$x - 1]['rank'];
            } else {
                $arraynet[$x]['rank'] = $no;
                $no++;
            }
        }
        return $arraynet;
    }

    public function JoinEvaluasi($id)
    {
        $joins = DB::table('evaluasis')->select('evaluasis.id as id', 'alternatifs.nama as alternatif', 'kriterias.nama as kriteria', 'kriterias.q as q', 'kriterias.p as p', 'preferensis.nama as tipe', 'kriterias.bobot', 'evaluasis.nilai as nilai')->join('alternatifs', 'alternatifs.id', '=', 'evaluasis.alternatif')->join('kriterias', 'evaluasis.kriteria', '=', 'kriterias.id')->join('preferensis', 'kriterias.pref', '=', 'preferensis.id')->where('kriterias.id', '=', $id)->get();
        // dd($joins);
        // return view('coba');
        return $joins;
    }
}
