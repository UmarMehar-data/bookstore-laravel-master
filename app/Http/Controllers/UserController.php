<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Hash;
use App\Models\UserModel;
use App\Models\UserTypeModel;
use App\Models\UserInformationModel;
use App\Models\BookModel;
use App\Models\ClientModel;


class UserController extends Controller
{
    public function Login(Request $request){
        if($request->session()->has("onlineuser")){
            $totalBooks = BookModel::all();
            $totalAuthors = UserModel::where('usertype',2)->get();
            $value=$request->session()->get('onlineuser');
            if($value['usertype'] == 2){
                return redirect("admin/book");
            }
            return view("admin.dashboard",compact('totalBooks','totalAuthors'));
        }

        return view("admin.login");
    }
    public function Logout(Request $request){

        $request->session()->pull("onlineuser");
        return redirect("/admin");


    }
    public function ProcessLoginRequest(Request $request){

        $user = UserModel::where("username",$request->username)->first();
        if($user != null){

            $passwordhash = $user->password;

            if(Hash::check($request->password,$user->password)){
                $request->session()->put("onlineuser",$user);

            }else{

                $request->session()->flash("error","Wrong username or password");

            }


        }else{
            $request->session()->flash("error","Wrong username or password");

        }
        return redirect("/admin");
    }
    public function changePassword(Request $request){

        return view("admin.change_password");
    }
    public function changePasswordProcess(Request $request){
        $data = $request->session()->get("onlineuser");
        $user = UserModel::where('username',$data->username)->first();
        $hashed = Hash::make($request->password);
        $user->password = $hashed;
        $user->save();
        $success = "Your Password has been Changed successfully.";
        $request->session()->put("success",$success);
        return back();

    }
    public function changeDetail(Request $request){
        $onlineUser = $request->session()->get("onlineuser");
        $id = $onlineUser->id;
        $roleBlock = 1;
        $data = UserModel::find($id);
        $userTypes = UserTypeModel::all();
        $memberInfo = UserInformationModel::where('userId',$id)->first();
        return view('admin.user.edit',compact('data','memberInfo','userTypes','roleBlock'));
    }
    public function changeDetailProcess(Request $request){
        $onlineUser = $request->session()->get("onlineuser");
        $id = $onlineUser->id;
        $data = $request->all();
        $user = UserModel::find($id);
        $user->fill($data);
        $user->save();
        if ($request->file("image") != null) {
            $path = $request->file("image")->store("User_Images");
            $data["image"] = $path;
        }
        $data['social_sites'] = implode('@',$request->social);
        $data['social_link'] = implode('@',$request->link);
        $data['userId'] = $user->id;
        $userInfo = UserInformationModel::where('userId',$id)->first();
        $userInfo->fill($data);
        $userInfo->save();
        $success = "Your Data has been Updated successfully.";
        $request->session()->put("success",$success);
        return back();
    }

    // User Function start
        public function View(Request $request){
            $userData = UserModel::all();
            return view("admin.user.index",compact('userData'));
        }
        public function Add(Request $request){
            $userTypes = UserTypeModel::all();
            return view("admin.user.add",compact('userTypes'));
        }
        public function AddProcess(Request $request){
            $data = $request->all();
            $data['password'] = Hash::make($request->password);
            $user = new UserModel;
            $user->fill($data);
            $user->save();
            if ($request->file("image") != null) {
                $path = $request->file("image")->store("User_Images");
                $data["image"] = $path;
            }
            $data['social_sites'] = implode('@',$request->social);
            $data['social_link'] = implode('@',$request->link);
            $data['userId'] = $user->id;
            $userInfo = new UserInformationModel;
            $userInfo->fill($data);
            $userInfo->save();
            $success = "Your Data has Saved successfully.";
            $request->session()->put("success",$success);
            return back();
        }
        public function Delete(Request $request,$id){
            $data = UserModel::find($id);
            $data->delete();
            $data = UserInformationModel::where('userId',$id)->first();
            $data->delete();
            $danger = "Your Data has been Delete successfully.";
            $request->session()->put("danger",$danger);
            return back();
        }
        public function Edit(Request $request,$id){
            $data = UserModel::find($id);
            $userTypes = UserTypeModel::all();
            $memberInfo = UserInformationModel::where('userId',$id)->first();
            return view('admin.user.edit',compact('data','memberInfo','userTypes'));
        }
        public function EditProcess(Request $request,$id){
            $data = $request->all();
            $user = UserModel::find($id);
            $user->fill($data);
            $user->save();
            if ($request->file("image") != null) {
                $path = $request->file("image")->store("User_Images");
                $data["image"] = $path;
            }
            $data['social_sites'] = implode('@',$request->social);
            $data['social_link'] = implode('@',$request->link);
            $data['userId'] = $user->id;
            $userInfo = UserInformationModel::where('userId',$id)->first();
            $userInfo->fill($data);
            $userInfo->save();
            $success = "Your Data has been Updated successfully.";
            $request->session()->put("success",$success);
            return back();
        }
    // User Function end
    // Client Function start
        public function ViewClient(Request $request){
            $clientData = ClientModel::all();
            return view("admin.client.index",compact('clientData'));
        }
        public function AddClient(Request $request){
            return view("admin.client.add");
        }
        public function AddClientProcess(Request $request){
            $data = $request->all();
            $data['password'] = Hash::make($request->password);
            $client = new ClientModel;
            $client->fill($data);
            $client->save();
            $success = "Your Data has Saved successfully.";
            $request->session()->put("success",$success);
            return back();
        }
        public function BlockClient(Request $request,$id){
            $data = ClientModel::find($id);
            $data->block = 1;
            $data->save();
            $danger = "This Account has been block successfully.";
            $request->session()->put("danger",$danger);
            return back();
        }
        public function UnBlockClient(Request $request,$id){
            $data = ClientModel::find($id);
            $data->block = 0;
            $data->save();
            $success = "This Account has been unblock successfully.";
            $request->session()->put("success",$success);
            return back();
        }
        public function EditClient(Request $request,$id){
            $data = ClientModel::find($id);
            return view('admin.client.edit',compact('data'));
        }

        public function EditClientProcess(Request $request,$id){
            $data = $request->all();
            $client = ClientModel::find($id);
            $client->fill($data);
            $client->save();
            $success = "Your Data has been Updated successfully.";
            $request->session()->put("success",$success);
            return back();
        }

    // Client Function end
}
