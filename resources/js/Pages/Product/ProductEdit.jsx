import React, { useState } from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head } from "@inertiajs/react";
import { router } from "@inertiajs/react";

export default function ProductEdit(props, {item}) {
    const auth = props.auth;
    const product = props.product;
    const [name, setName] = useState(product.name);
    const [price, setPrice] = useState(product.price);
    const [stock, setStock] = useState(product.stock);
    const [description, setDescription] = useState(product.description);

    const storeProduct = async (e) => {
        e.preventDefault();

        router.post(`/product/${product.id}`, {
            name: name,
            price: price,
            stock: stock,
            description: description,
            _method: "PUT",
        });
    };

    return (
        <AuthenticatedLayout
            user={auth.user}
            // header={<h2 className="font-semibold text-xl text-gray-800 leading-tight">Dashboard</h2>}
        >
            <Head title="Create Product" />
            <div className="min-w-screen min-h-screen bg-orange-500 flex items-start p-5 lg:p-10 overflow-hidden relative">
                <div className="flex items-center justify-center p-12">
                    <div className="mx-auto w-full max-w-[550px]">
                        <form onSubmit={storeProduct}>
                            <div className="mb-5">
                                <label
                                    htmlFor="name"
                                    className="mb-3 block text-base font-medium text-[#07074D]"
                                >
                                    Whats name your product?
                                </label>
                                <input
                                    type="name"
                                    name="name"
                                    id="name"
                                    value={name}
                                    onChange={(e) => setName(e.target.value)}
                                    required
                                    placeholder="title"
                                    className="w-full appearance-none rounded-md border bg-white py-2 border-black px-6 text-base font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                                />
                            </div>

                            <div className="-mx-3 flex flex-wrap">
                                <div className="w-full px-3 sm:w-1/2">
                                    <div className="mb-5">
                                        <label
                                            htmlFor="price"
                                            className="mb-3 block text-base font-medium text-[#07074D]"
                                        >
                                            Price
                                        </label>
                                        <input
                                            type="number"
                                            name="price"
                                            id="price"
                                            value={price}
                                            onChange={(e) =>
                                                setPrice(e.target.value)
                                            }
                                            required
                                            placeholder="none"
                                            className="w-full rounded-md border bg-white py-2 border-black px-6 text-base font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                                        />
                                    </div>
                                </div>
                                <div className="w-full px-3 sm:w-1/2">
                                    <div className="mb-5">
                                        <label
                                            htmlFor="stock"
                                            className="mb-3 block text-base font-medium text-[#07074D]"
                                        >
                                            Stock
                                        </label>
                                        <input
                                            type="name"
                                            name="stock"
                                            id="stock"
                                            value={stock}
                                            onChange={(e) =>
                                                setStock(e.target.value)
                                            }
                                            required
                                            className="w-full rounded-md border bg-white py-2 border-black px-6 text-base font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                                        />
                                    </div>
                                </div>
                            </div>

                            <div className="mb-5">
                                <label
                                    htmlFor="text"
                                    className="mb-3 block text-base font-medium text-[#07074D]"
                                >
                                    What's your product description?
                                </label>
                                <input
                                    type="text"
                                    text="text"
                                    id="text"
                                    value={description}
                                    onChange={(e) =>
                                        setDescription(e.target.value)
                                    }
                                    required
                                    placeholder="description"
                                    className="w-full appearance-none rounded-md border bg-white py-2 border-black px-6 text-base font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                                />
                            </div>

                            <div>
                                <button className="hover:shadow-form rounded-md bg-[#2037ff] py-2 border-black px-8 text-center text-base font-semibold text-white outline-none">
                                    Submit
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </AuthenticatedLayout>
    );
}
