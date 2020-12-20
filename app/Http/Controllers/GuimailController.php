<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Mail;
use Illuminate\Support\Facades\Session;
use App\Http\Requests\Rule;
use App\Models\contact;

class GuimailController extends Controller
{
  // function store(RuleContact $request){
  //   echo "kiểm tra xog xử lý tiếp tục";
  // }
    function guimaillienhe( Rule $request){
       
      //   $contact = new contact([
      //     'name' => $request->get('name'),
      //     'email' => $request->get('email'),
      //     'content' => $request->get('content'),
      // ]);
      // $contact->save();
          Mail::send('mauthulienhe', 
                $contact = new contact([
          'name' => $request->get('name'),
          'email' => $request->get('email'),
          'content' => $request->get('content')
         
      ]
    ),
            function($message){
                $message
                ->from('wixc8657@gmail.com','Từ quản trị Poly_Cinema')
               
                //->attach('img/a.png') // gửi đính kèm file nếu muốn
                ->subject('Thư liên hệ');
            },
            $contact->save()
          );
         
          Session::flash('thongbao', 'Đã gửi mail thành công');     
          echo 'Gửi mail  thành công' ;
          return redirect('/contacts');
    }
}
