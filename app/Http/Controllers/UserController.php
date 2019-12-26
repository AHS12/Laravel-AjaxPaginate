<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class UserController extends Controller
{
    //

    public function index(){
        $users = USer::paginate(10);
        $data = [
            'users' => $users
        ];

        return view('welcome',$data);
    }





    public function GetAllUser(Request $request){

        if ($request->ajax()) {
            //dd("elloh");
            $users = User::paginate(10);
            $data = [
                'users' => $users
            ];

            return view('ajaxLoad',$data)->render();
        }


        //dd($users);


    }
}
