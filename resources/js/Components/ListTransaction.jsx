import React from "react";

export default function ListTransaction({ transaction }, props) {
    console.log("data =", transaction);

    return (
        <>
            <div class="w-full mx-auto mt-5 max-w-5xl p-4 bg-white border border-gray-200 rounded-lg shadow sm:p-8 dark:bg-gray-800 dark:border-gray-700">
                <div class="flex items-center justify-between mb-4">
                    <h5 class="text-xl font-bold leading-none text-gray-900 dark:text-white">
                        Latest Transaction
                    </h5>
                    <a
                        href="#"
                        class="text-sm font-medium text-blue-600 hover:underline dark:text-blue-500"
                    >
                        View all
                    </a>
                </div>
                <div class="flow-root">
                    <ul
                        role="list"
                        class="divide-y divide-gray-200 dark:divide-gray-700"
                    >
                        {transaction.map((item, i) => (
                            <li key={i} class="py-3 sm:py-4">
                                <div class="flex items-center space-x-4">
                                    <div class="flex-1 min-w-0">
                                        <p class="text-sm font-medium text-gray-900 truncate dark:text-white">
                                            {item.product.name}
                                        </p>
                                        <p class="text-sm text-gray-500 truncate dark:text-gray-400">
                                            Rp. {item.product.price},
                                        </p>
                                        <p class="text-sm text-gray-500 truncate dark:text-gray-400">
                                            Jumlah barang {item.quantity},
                                        </p>
                                        <p class="text-sm text-gray-500 truncate dark:text-gray-400">
                                            Total akhir ,
                                        </p>
                                    </div>
                                    <div class="flex flex-col items-center text-base font-semibold text-gray-900 dark:text-white">
                                        <p className="font-thin italic">Total Akhir</p>
                                        Rp. {item.payment_amount},00
                                    </div>
                                </div>
                            </li>
                        ))}
                    </ul>
                </div>
            </div>

            {/* {transaction.map((item, i) => (
                <div className="flex flex-wrap -mx-3">
                    <div className="max-w--6xl w-full px-3 mb-6 sm:w-1/2 mx-auto">
                        <div className="relative flex flex-col min-w-0 break-words bg-green-500 border-0 bg-clip-border rounded-2xl mb-5 draggable">
                            <div className="px-9 pt-5 flex justify-between items-stretch flex-wrap min-h-[70px] pb-0 bg-transparent">
                                <div
                                    key={i}
                                    className="flex flex-col items-start justify-center m-2 ml-0 font-medium text-xl/normal text-dark"
                                >
                                    <span className="text-white text-5xl/none font-semibold mr-2 tracking-[-0.115rem]">
                                        {item.id}
                                    </span>
                                    <span className="pt-1 font-medium text-white/80 text-lg/normal">
                                        <p>{item.refrence_no}</p>
                                        <p>{item.product_id}</p>
                                        <p>{item.product.name}</p>
                                        <p>{item.product.price}</p>
                                        <p>{item.quantity}</p>
                                        <p>{item.payment_amount}</p>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            ))} */}
        </>
    );
}
