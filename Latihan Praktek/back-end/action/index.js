'use strict'
const response = require('../helpers/response');

async function beranda(request, reply) {
    let data = {'isi': 'beranda'}
    return response.ok(data, "berhasil", reply)
}
async function getdata(request, reply) {
    const pool = await this.pg.connect();
    const res = await pool.query("SELECT id, nama, alamat, kota, pendapatan FROM datacostumer");
    await pool.release();
    return response.ok(res.rows, "berhasil", reply)
}
async function savedata(request, reply) {
    console.log(request.body);

    const pool = await this.pg.connect();
    let nama = request.body.nama;
    let alamat = request.body.alamat;
    let kota = request.body.kota;
    let pendapatan = request.body.pendapatan;
    const sql = 'INSERT INTO public.datacostumer (nama, alamat, kota, pendapatan) VALUES ($1, $2, $3, $4 )'
    const res = await pool.query(sql, [nama, alamat, kota, pendapatan]);
    await pool.release();
    let hasil = {};
    hasil['kode'] = 200;
    hasil['deskripsi'] = 'insert data berhasil';
    return response.ok(hasil, "Ok", reply);
}

async function getDatabyId(request, reply) {

    let sql = 'SELECT id, nama, alamat, kota, pendapatan FROM datacostumer WHERE id = $1';
    console.log(request.params.id);
    const id = request.params.id;
    const pool = await this.pg.connect();
    const res = await pool.query(sql, [id]);
    await pool.release();
    return response.ok(res.rows, "Ok", reply);
}


module.exports = {
    beranda, getdata, savedata, getDatabyId
};