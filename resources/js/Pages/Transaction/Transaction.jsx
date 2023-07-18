import React, { useState } from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head } from "@inertiajs/react";
import ListTransaction from './../../Components/ListTransaction';

export default function Transaction({ auth, transaction }) {

    return (
        <AuthenticatedLayout user={auth.user}>
            <Head title="Transaction" />
            <div className="bg-orange-400 flex flex-col">
                <ListTransaction transaction={transaction}/>
            </div>
            <div className="flex justify-center items-center">
                {/* <Pagination meta={transaction.meta} /> */}
            </div>
            
        </AuthenticatedLayout>
    );
}
