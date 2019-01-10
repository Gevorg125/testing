<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Content;
use Illuminate\Http\Request;

class ContentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->isMethod('post')) {
            $content = Content::where($request->name, 'like', $request->value . '%')->get();

//                $content = Content::where($request->name_name, 'like',  $request->value_name . '%')
//                                    ->orWhere($request->name_surname, 'like',  $request->value_surname . '%')
//                                    ->orWhere($request->name_email, 'like',  $request->value_email . '%')
//                                    ->orWhere($request->name_password, 'like',  $request->value_password . '%')
//                                    ->get();
            $data = [
                'title' => 'Content',//vorpes string e
                'content' => $content
            ];
            return response()->json($content);

        } else if (view()->exists('site.content')) {
            $content = Content::all();

            $data = [
                'title' => 'Content',//vorpes string e
                'content' => $content
            ];
            return view('site.content', $data);
        }
        abort(404);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Content $content, Request $request)
    {


        if ($request->isMethod('post')) {

            \DB::table('users')->where('id', $request->id)->update([


                    $request->name => $request->value



            ]);

                echo 200;

        }


    }
}
