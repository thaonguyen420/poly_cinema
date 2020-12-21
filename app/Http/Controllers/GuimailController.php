<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Mail;
use Illuminate\Support\Facades\Session;
use App\Http\Requests\Rule;
use App\Models\contact;
class GuimailController extends Controller
{
 
    function guimaillienhe( Rule $request){
        $input = $request->all();
          $mailsend=$input["email"];
          $data=array(  'name'=>$input["name"],
          'email'=>$mailsend, 
          'content'=>$input['content']
          );
          Mail::send('mauthulienhe',
           $data

   , function($message) use ($mailsend)  {
            $message->to($mailsend, 'Tutorials Point')->subject
                ('Thông tin mail của bạn');
            $message->from('thesiscinima001@gmail.com','Từ ứng dụng website');
        });
          contact::create($data);
          return redirect('/contacts');
    }
}
