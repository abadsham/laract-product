import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, usePage } from "@inertiajs/react";
import ListProduct from "@/Components/ListProduct";
import Pagination from './../Components/Pagination';

export default function Dashboard({ auth, product }) {
    // console.log("data = ", product);

    return (
        <AuthenticatedLayout user={auth.user}>
            <Head title="Dashboard" />
            <div className="bg-orange-400 flex flex-col">
                <ListProduct product={product.data} />
            </div>
            <div className="flex justify-center items-center">
                <Pagination meta={product.meta} />
            </div>
        </AuthenticatedLayout>
    );
}
