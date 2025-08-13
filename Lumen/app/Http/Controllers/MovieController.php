<?php

namespace App\Http\Controllers;


use App\Models\Movie;
use Illuminate\Support\Facades\Log;


class MovieController extends Controller
{
    public function index() {
        
        try {
            $movies = Movie::with('director')->orderBy('title')->get();
            return response()->json($movies);
        } catch (\Exception $e) {
            return response()->json([
                'error' => 'Failed to fetch movies',
                'details' => $e->getMessage()
            ], 500);
        }
    }

    public function show($id) {
        try {
            $movie = Movie::with('director')->findOrFail($id);
            return response()->json($movie);
        } catch (\Exception $e) {
            return response()->json([
                'error' => 'Exception occurred',
                'message' => $e->getMessage()
            ], 500);
        }
    }
    
}
