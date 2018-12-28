<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\mMember;
class PurchaseController extends Controller
{

    public function print_purchaseorder()
    {
        return view('purchase/purchaseorder/print_purchaseorder');
    }
    public function belanjalangsung()
    {
    	return view('purchase/belanjalangsung/belanjalangsung');
    }
    public function tambah_belanjalangsung()
    {
        return view('purchase/belanjalangsung/tambah');
    }
    public function rencanapembelian()
    {
    	return view('purchase/rencanapembelian/rencanapembelian');
    }
    public function hub_suplier()
    {
    	return view('purchase/hub_suplier/hub_suplier');
    }
    public function edit_rencanapembelian()
    {
        return view('purchase/rencanapembelian/edit_rencanapembelian');
    }
    public function edit_purchaseorder()
    {
        return view('purchase/purchaseorder/edit_purchaseorder');
    }
}
