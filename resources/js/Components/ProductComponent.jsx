export default function ProductComponent ({ product }){

return (
    <div>
      <h2>{product.name}</h2>
      <p>{product.description}</p>
      <p>Price: {product.price}</p>
      <p>Stock: {product.stock}</p>
      <p>Created at: {product.created_at}</p>
      <p>Updated at: {product.updated_at}</p>
    </div>
  );
}