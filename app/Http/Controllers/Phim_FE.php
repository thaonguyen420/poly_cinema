<?php

namespace App\Http\Controllers;

use App\Models\Phim;
use App\Models\comment;
use App\Models\category_movie;

use Illuminate\Http\Request;
use App\Http\Requests\Rule;

class Phim_FE extends Controller
{
    public function index(){ 
        return view("index");
    }
    public function chitietphim($movieId){
        $movies = Phim::where("movieId",$movieId)->first();
        $comment=comment::where("movieId",$movieId)->get();
        $data = ['movies'=>$movies,'comment'=>$comment];
        return view("front_end.page.single-movie", $data);
    }
    function comment(Rule $request,$movieId){
        
        $comment = new comment([
            'name' => $request->get('name'),
            'email' => $request->get('email'),
            'content' => $request->get('content'),
            'movieId'=>$movieId 
        ]);
        $comment->save(); 
        return redirect("single-movie/$movieId");
    }
    public function search(Request $request){
        $search = $request->get('search');
        $post = Phim::where("name","like","%".$search."%")->get();
        return view("front_end.page.search",['post'=>$post],['search'=>$search]);
    }
    public function filmKind()
    {
        $ten_tl= category_movie::All();
         return view("front_end.page.movie",['ten_tl'=>$ten_tl]);
    }
}
