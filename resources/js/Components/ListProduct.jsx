import { React, useEffect, useState } from "react";
import { Head, Link, usePage, router } from "@inertiajs/react";

function truncateDescription(description, maxLength) {
    if (description.length > maxLength) {
        return description.substring(0, maxLength) + "...";
    }
    return description;
}

const ListProduct = ({ product }, props) => {
    const deletePost = async (id) => {
        {
            router.delete(`/product/${id}`);
        }
    };
    return (
        <>
            <div className="flex justify-center mt-5">
                <Link href={route("product.create")}>
                    <button className="mb-5  uppercase shadow-md bg-cyan-800 hover:bg-cyan-700 focus:shadow-outline focus:outline-none text-white text-sm py-3 px-7 rounded">
                        + Add New Menu
                    </button>
                </Link>
            </div>
            <div className="relative flex flex-wrap justify-center">
                {product.map((item, index) => (
                    <div key={index}>
                        <div className="relative max-w-sm min-w-[340px] bg-white shadow-md rounded-3xl p-2 mx-1 my-3 cursor-pointer">
                            <div className="overflow-x-hidden rounded-2xl relative">
                                <img
                                    className="h-40 rounded-2xl w-full object-cover"
                                    src="https://pixahive.com/wp-content/uploads/2020/10/Gym-shoes-153180-pixahive.jpg"
                                />
                            </div>
                            <div className="mt-4 pl-2 mb-2 flex justify-between ">
                                <div>
                                    <p className="text-lg font-semibold text-gray-900 mb-0">
                                        {item.name}
                                    </p>
                                    <p className="text-md text-gray-800 mt-0">
                                        Rp. {item.price},00
                                    </p>

                                    <p className="text-md text-gray-800 mt-0 max-w-full overflow-hidden overflow-ellipsis">
                                        {truncateDescription(
                                            item.description,
                                            30
                                        )}
                                    </p>
                                </div>
                                <div className="flex flex-col-reverse mb-1 mr-4 group cursor-pointer">
                                    <button
                                        onClick={() => deletePost(item.id)}
                                        className="p-1 text-red-600 border "
                                    >
                                        delete
                                    </button>
                                    <Link
                                        className="underline hover:text-blue-500"
                                        href={`product/${item.id}/edit`}
                                    >
                                        {/* {console.log("Data item:", item.id)} */}
                                        edit
                                    </Link>
                                    <Link
                                        className="underline hover:text-blue-500"
                                        href={`product/${item.id}`}
                                    >
                                        detail
                                    </Link>
                                </div>
                            </div>
                        </div>
                    </div>
                ))}
            </div>
        </>
    );
};

export default ListProduct;
