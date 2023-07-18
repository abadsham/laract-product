<?php

namespace App\Http\Controllers;

use App\Models\Transaction;
use Illuminate\Http\Request;

class ApiTransactionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $transaction = Transaction::with('product')->get();

        if ($transaction) {
            $price = $transaction->product->price;
            return response()->json(['price' => $price]);
        }
        return response()->json(['massage' => 'Transaksi not found'], 404);

        return response()->json([
            'transaction' => $transaction
        ]);
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
        $transaction = $request->validate([
            'refrence_no' => 'required',
            'price' => 'required',
            'quantity' => 'required',
            'payment_amount' => 'required',
            'product_id' => 'required',
        ]);
        $transaction = Transaction::create([
            'refrence_no' => $request->refrence_no,
            'price' => $request->price,
            'quantity' => $request->quantity,
            'payment_amount' => $request->payment_amount,
            'product_id' => $request->product_id,
        ]);

        return response()->json([
            'transaction' => $transaction
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Transaction $transaction)
    {
        return response()->json([
            'transaction' => $transaction
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Transaction $transaction)
    {
        $transaction->refrence_no = $request->refrence_no;
        $transaction->price = $request->price;
        $transaction->quantity = $request->quantity;
        $transaction->payment_amount = $request->payment_amount;
        $transaction->product_id = $request->product_id;
        $transaction->save();

        return response()->json([
            'transaction' => $transaction
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Transaction $transaction)
    {
        $transaction->delete();

        return response()->json([
            'transaction' => $transaction
        ]);
    }
}
