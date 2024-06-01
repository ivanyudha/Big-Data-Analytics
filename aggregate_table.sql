-- Membuat Tabel Aggregate
CREATE TABLE aggregate_table AS (
  SELECT 
    id_invoice, tanggal, MONTHNAME(tanggal) AS bulan, id_customer, id_barang, jumlah_barang AS jumlah_produk_terjual, 
    harga, nama AS customer, id_cabang, cabang_sales AS lokasi_cabang, id_distributor, groupss, 
    nama_barang AS produk, lini AS brand, kemasan, kode_lini AS kode_brand, 
    SUM(jumlah_barang * harga) AS total_sales 
  FROM base_table 
  GROUP BY id_invoice, tanggal, bulan, id_customer, id_barang, jumlah_produk_terjual, 
  harga, customer, id_cabang, lokasi_cabang, id_distributor, groupss, produk, brand, kemasan, kode_brand
);
    
select * from aggregate_table;