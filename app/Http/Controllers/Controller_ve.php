<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\schedule;
class Controller_ve extends Controller
{
    public function index()
    {
        $ds = schedule::All();
        return view('admin.ticket.qr',compact('ds'));
    }
}