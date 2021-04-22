'use strict'
const response = require('../helpers/response');

async function beranda(request, reply) {
    let data = {'isi': 'beranda'}
    return response.ok(data, "berhasil", reply)
}

async function getdata(request, reply) {
    const pool = await this.pg.connect();
    const res = await pool.query("SELECT id, nama, keterangan FROM daftarsiswa");
    await pool.release();
    return response.ok(res.rows, "beranda", reply)
}

async function savedata(request, reply) {
    const pool = await this.pg.connect();
    let nama = request.body.nama;
    let keterangan = request.body.keterangan;
    const sql = 'INSERT INTO public.daftarsiswa(nama, keterangan ) VALUES ($1, $2) RETURNING id'
    const res = await pool.query(sql,[nama, keterangan]);
    await pool.release();
    let hasil = {};
    hasil['key'] = res.rows[0].id;
    hasil['kode'] = 200;
    hasil['deskripsi'] = 'insert data berhasil';
    return response.ok(hasil, "OK", reply);
}

async function getDatakelasById(request, reply) {
    let sql = 'SELECT id, nama, keterangan FROM daftarsiswa where id = $1';
    const id = request.params.id;
    const pool = await this.pg.connect();
    const res = await pool.query(sql, [id]);
    await pool.release();
    response.ok(res.rows, "OK", reply);
}

module.exports = {
    beranda, getdata, savedata, getDatakelasById,
};