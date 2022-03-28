<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RoleController extends Controller
{
    public function index()
    {
        $role = Role::latest()->get();
        $permission = Permission::latest()->get();
        return view('backend.role.index', compact('role', 'permission'));
    }

    public function tambahrole()
    {
        return view('backend.role.tambah');
    }

    public function storerole(Request $request)
    {
        $request->validate([
            'role' => 'required|unique:roles,name',
        ]);

        Role::create(['name' => $request->role]);
        return redirect(route('role.index'))->with([
            'pesan' => 'Berhasil ditambahkan',
            'pesan1' => 'Role berhasil ditambahkan'
        ]);
    }

    public function editrole($id)
    {
        $role = Role::findorfail($id);
        $permission = Permission::orderBy("name", "asc")->get();
        return view('backend.role.edit', compact('role', 'permission'));
    }

    public function updaterole(Request $request, $id)
    {
        $request->validate([
            'jenis' => 'required|unique:roles,name,' . $id,
        ]);

        $role = Role::findorfail($id);
        $role->update(['name' => $request->jenis]);

        $permission = $request->permission;
        if($permission){
            $role->revokePermissionTo($permission);
            $role->syncPermissions($permission);
        }else{
            $role->revokePermissionTo($permission);
        }

        return redirect(route('role.index'))->with([
            'pesan' => 'Berhasil diubah',
            'pesan1' => 'Role berhasil diubah'
        ]);
    }

    public function delete($id)
    {
        $role = Role::findorfail($id);
        $role->revokePermissionTo($role->getAllPermissions());
        $role->delete();
        return redirect(route('role.index'))->with([
            'pesan' => 'Berhasil dihapus',
            'pesan1' => 'Role berhasil dihapus'
        ]);
    }

    public function tambahpermission()
    {
        return view('backend.permission.tambah');
    }

    public function storepermission(Request $request)
    {
        $request->validate([
            'permission' => 'required|unique:permissions,name',
        ]);

        Permission::create(['name' => $request->permission]);
        return redirect(route('permission.index'))->with([
            'pesan' => 'Berhasil ditambahkan',
            'pesan1' => 'Permission berhasil ditambahkan'
        ]);
    }

    public function editpermission($id)
    {
        $permission = Permission::findorfail($id);
        return view('backend.permission.edit', compact('permission'));
    }

    public function updatepermission(Request $request, $id)
    {
        $request->validate([
            'permission' => 'required|unique:permissions,name,' . $id,
        ]);

        $permission = Permission::findorfail($id);
        $permission->update(['name' => $request->permission]);
        return redirect(route('permission.index'))->with([
            'pesan' => 'Berhasil diubah',
            'pesan1' => 'Permission berhasil diubah'
        ]);
    }

    public function deletepermission($id)
    {
        $permission = Permission::find($id);
        $permission->delete();
        return redirect(route('permission.index'))->with([
            'pesan' => 'Berhasil dihapus',
            'pesan1' => 'Permission berhasil dihapus'
        ]);
    }
}
