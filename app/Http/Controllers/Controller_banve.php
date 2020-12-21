<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\ticket;
class Controller_banve extends Controller
{
    public function index()
    {
        return view('admin.ticket.create');
    }
    public function store(Request $request)
    {
        $tk_store = new ticket([
            'ticketCode'=> $request->get('number'),
            'sheduleId' => $request->get('number'),
            'adminId' => $request->get('number'),
            'userId' => "15",
            'email' => $request->get('number'),
            'seats' => $request->get('number'),
           
        ]);
        $tk_store->save();
        return redirect('/schedule')->with('success','đã được lưu');
    }
}