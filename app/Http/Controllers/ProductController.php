<?php

namespace App\Http\Controllers;

use App\Http\Resources\ProductCollection;
use App\Models\Product;
use Illuminate\Http\Request;
use Inertia\Inertia;
use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $product = new ProductCollection(Product::paginate(6));
        // dd($product);
        return Inertia('Dashboard', [
            'product' => $product
        ]);

        // return response()->json([
        //     'product' => $product
        // ]);

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return Inertia::render('Product/ProductCreate');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $product = $request->validate([
            'name' => 'required',
            'price' => 'required',
            'stock' => 'required',
            'description' => 'required',
        ]);

        $product = Product::create([
            'name' => $request->name,
            'price' => $request->price,
            'stock' => $request->stock,
            'description' => $request->description,
        ]);

        return Inertia::render('Dashboard', [
            'product' => $product
        ]);
        // dd($product);

        // return response()->json([
        //     'product' => $product
        // ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Product $product)
    {
        return Inertia::render('Product/ProductDetail', [
            'product' => $product
        ]);
        // return response()->json([
        //     'product' => $product
        // ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Product $product)
    {
        return Inertia::render('Product/ProductEdit', [
            'product' => $product
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Product $product)
    {
        $product->name = $request->name;
        $product->price = $request->price;
        $product->stock = $request->stock;
        $product->description = $request->description;
        $product->save();

        return Inertia::render('Dashboard', [
            'product' => $product
        ]);
        // return response()->json([
        //     'product' => $product
        // ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product)
    {
        $product->delete();

        return Inertia('Dashboard')->with('Data Sukses Dihapus');
        // return response()->json([
        //     'massage' => 'Data berhasil Dihapus'
        // ]);
    }
}
