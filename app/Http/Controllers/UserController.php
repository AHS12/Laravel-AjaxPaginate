<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class UserController extends Controller
{
    //

    public function index(){

    /*
        Model->paginate(10, ['*'], 'paramName');

        10 = Max items per page

        ['*'] = colums

        paramName = pagination param name

    */

        $users = User::paginate(5,['*'],'page_a'); //here users will use page named page_a
        $usersDiv = User::paginate(3,['*'],'page_b');//here usersDiv will use page named page_b
        $data = [
            'users'         => $users,
            'usersDiv'      =>$usersDiv
        ];

        return view('welcome',$data);
    }





    public function GetAllUser(Request $request){

        if ($request->ajax()) {
            //dd("elloh");
            $users = User::paginate(5,['*'],'page_a');//here users will use page named page_a
            $data = [
                'users' => $users
            ];

            return view('ajaxLoadTable',$data)->render();
        }


    }

    public function GetAllUserDiv(Request $request){

        if ($request->ajax()) {
            //dd("elloh");
            $usersDiv = User::paginate(3,['*'],'page_b');//here usersDiv will use page named page_b
            $data = [
                'usersDiv' => $usersDiv
            ];

            return view('ajaxLoadDiv',$data)->render();
        }


    }

}
