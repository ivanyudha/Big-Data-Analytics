-- Membuat Tabel Base 
CREATE TABLE base_table AS (
	SELECT
		pn.id_invoice, pn.tanggal, pn.id_customer, pl.nama, pn.id_distributor,
        pn.id_cabang, pl.cabang_sales, pl.id_group, pl.groupss, pn.id_barang, 
        br.nama_barang, pn.brand_id, br.kode_lini, pn.lini, br.kemasan, pn.jumlah_barang,
        pn.harga, pn.mata_uang
	FROM Penjualan AS pn
		LEFT JOIN Pelanggan AS pl ON pn.id_customer = pl.id_customer
        LEFT JOIN Barang AS br ON pn.id_barang = br.kode_barang
);

select * from base_table;