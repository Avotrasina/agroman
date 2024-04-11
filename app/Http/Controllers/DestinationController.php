<?php

namespace App\Http\Controllers;

use App\Models\Destination;
use Illuminate\Http\Request;

class DestinationController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $destinations = Destination::all()->toJson();
        return $destinations;
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
        $destination = new Destination;
        $destination->LieuP = $request->input("LieuP");
        $resultat = $destination->save();
        return response()->json([
            'resultat' => $resultat
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Destination $destination)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Destination $destination)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Destination $destination)
    {
        //
        $destination = Destination::find($request->input("idP"));
        if($destination){
            $destination->LieuP = $request->input("LieuP");
            $resultat = $destination->save();
            return response()->json([
                'resultat' => $resultat
            ]);
        }
        return response()->json([
            'resultat' => false
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        //
        $destination = Destination::find($request->input("idP"));
        if($destination){
            $resultat = $destination->delete();
            return response()->json([
                'resultat' => $resultat
            ]);
        }
        return response()->json([
            'resultat' => false
        ]);
    }
}
