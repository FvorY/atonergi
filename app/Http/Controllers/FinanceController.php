<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\mMember;
class FinanceController extends Controller
{
    public function reporting()
    {
    	return view('finance/reporting/reporting');
    }
    public function evaluating()
    {
    	return view('finance/evaluating/evaluating');
    }
    public function costmanajemen()
    {
    	return view('finance/costmanajemen/costmanajemen');
    }
    public function bookkeeping()
    {
    	return view('finance/bookkeeping/bookkeeping');
    }
    public function transaksi_kas()
    {
        return view('finance/bookkeeping/transaksi_kas');
    }
    public function transaksi_bank()
    {
        return view('finance/bookkeeping/transaksi_bank');
    }
    public function transaksi_memorial()
    {
        return view('finance/bookkeeping/transaksi_memorial');
    }
}
