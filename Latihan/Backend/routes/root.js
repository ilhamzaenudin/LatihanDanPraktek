'use strict'

const rumah = require('../action/index')

module.exports = async function (fastify, opts) {
  fastify.get('/', async function (request, reply) {
    return { root: true }
  })
  fastify.get('/api/beranda', rumah.beranda);
  fastify.get('/api/getdata', rumah.getdata);
  fastify.post('/api/savedata', rumah.savedata);
  fastify.get('/api/getdatabyid/:id', rumah.getDatakelasById);
}
