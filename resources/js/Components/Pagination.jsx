import { Link } from "@inertiajs/react";

const Pagination = ({ meta }) => {
    const prev = meta.links[0].url;
    const next = meta.links[meta.links.length -1].url;
    const current = meta.current_page;
    // console.log(current)
    
    return (
        <div className="">
            <Link href={prev} className="my-5 uppercase shadow-md bg-cyan-800 hover:bg-cyan-700 focus:shadow-outline focus:outline-none text-white text-sm py-3 px-7 rounded-l">
                {" "}
                &lt;&lt;{" "}
            </Link>
            <button className="my-5 uppercase shadow-md bg-cyan-800 hover:bg-cyan-700 focus:shadow-outline focus:outline-none text-white text-sm py-3 px-7"> {current} </button>
            <Link href={next} className="my-5 uppercase shadow-md bg-cyan-800 hover:bg-cyan-700 focus:shadow-outline focus:outline-none text-white text-sm py-3 px-7 rounded-r">
                {" "}
                &gt;&gt;
            </Link>
        </div>
    );
};

export default Pagination;
