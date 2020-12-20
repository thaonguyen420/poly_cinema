<?php

namespace App\Http\Controllers;
use Session;
use DB;
use Illuminate\Http\Request;
use App\Http\Requests;
session_start();
use Illuminate\Support\Facades\Redirect;
use App\Models\User;

class UserController extends Controller
{
    public function manage_user(){
        $all_user = User::orderBy('id')->get();
        return view('admin.user.list_user')->with(compact('all_user'));
    }

    public function delete_user($id){
        $user = User::find($id); // find: tìm ra 1 user dựa trên id 
        $user->delete();
        
    	Session::put('message','Xoá user thành công');
    	return redirect()->back();
    }

    public function edit_user($id){
        // $this->AuthLogin();
        $user = User::find($id); // find: tìm ra 1 user dựa trên id 
        return view('admin.user.edit_user')->with(compact('user'));
    }

    public function update_user(Request $request, $id){
        $data = $request->all();
        $user = User::find($id); // find: tìm ra 1 user dựa trên id 
        $user->power = $data['power'];
        $user->save();
        
    	Session::put('message','Cập nhật quyền thành công');
    	return redirect('/manage-user');
    }
}
