<?php

namespace App\Http\Controllers;

use App\Models\Transaction;
use Illuminate\Http\Request;
use Inertia\Inertia;

class TransactionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $transaction = Transaction::with('product')->get();

        return Inertia::render('Transaction/Transaction', [
            'transaction' => $transaction
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        // return Inertia::render('Transaction/TransactionCreate');
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

        return redirect()->back()->with('success', 'Data Berhasil Disimpan!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Transaction $transaction)
    {
        return Inertia::render('Transaction/TransactionDetail', [
            'transaction' => $transaction
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Transaction $transaction)
    {
        return Inertia::render('Transaction/TransactionDetail', [
            'transaction' => $transaction
        ]);
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
        return redirect()->back()->with('success', 'Data Update Berhasil !');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Transaction $transaction)
    {
        $transaction->delete();
        return redirect()->back()->with('success', 'Data Berhasil di Hapus!');
    }
}
