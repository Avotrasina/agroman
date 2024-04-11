<?php

use App\Http\Controllers\{ProfileController,DestinationController,ProvenanceController, HistoriqueController};
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return Inertia::render('Welcome', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),
        'laravelVersion' => Application::VERSION,
        'phpVersion' => PHP_VERSION,
    ]);
});

Route::get('/xx', function () {
    $variable = "variable de php";
    return Inertia::render('test', [
        "acceder" => $variable
    ]);
});

Route::get('/dashboard', function () {
    return Inertia::render('Dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::resource('destinations', DestinationController::class);
Route::resource('provenances', ProvenanceController::class);
Route::resource('historiques', HistoriqueController::class);
Route::get('entree',[HistoriqueController::class,'indexIN'])->name('entree');
Route::post('entree',[HistoriqueController::class,'in'])->name('entree');
Route::get('sortie',[HistoriqueController::class,'indexOUT'])->name('sortie');
Route::post('sortie',[HistoriqueController::class,'out'])->name('sortie');


require __DIR__.'/auth.php';
