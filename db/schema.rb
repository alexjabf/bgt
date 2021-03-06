# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150817033147) do

  create_table "clients", force: true do |t|
    t.string   "name1"
    t.string   "name2"
    t.string   "cond_pago"
    t.string   "moneda"
    t.string   "centro"
    t.string   "clientesnumcte"
    t.string   "clientesnumcte2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "debts", force: true do |t|
    t.integer  "client_id"
    t.date     "fecha"
    t.string   "clase_doc"
    t.string   "referencia"
    t.date     "fecha_venc"
    t.integer  "dias_venc"
    t.float    "saldo"
    t.string   "moneda"
    t.integer  "column"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "debts", ["client_id"], name: "index_debts_on_client_id"

  create_table "materials", force: true do |t|
    t.integer  "order_detail_id"
    t.string   "centro"
    t.integer  "existencia"
    t.string   "descrip"
    t.integer  "unidad"
    t.integer  "exist_ua"
    t.integer  "unidad_alm"
    t.integer  "peso_teo"
    t.float    "precio"
    t.string   "moneda"
    t.integer  "por_uni"
    t.string   "config"
    t.string   "ped_detnumped"
    t.integer  "ped_detpos"
    t.integer  "ped_detpos2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "materials", ["order_detail_id"], name: "index_materials_on_order_detail_id"

  create_table "order_detail_materials", force: true do |t|
    t.integer  "order_detail_id"
    t.integer  "material_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_detail_materials", ["material_id"], name: "index_order_detail_materials_on_material_id"
  add_index "order_detail_materials", ["order_detail_id"], name: "index_order_detail_materials_on_order_detail_id"

  create_table "order_details", force: true do |t|
    t.integer  "order_id"
    t.integer  "matnr"
    t.integer  "cantidad"
    t.integer  "unidad"
    t.float    "precio"
    t.string   "moneda"
    t.integer  "por_um"
    t.integer  "um"
    t.integer  "desc1"
    t.integer  "desc2"
    t.integer  "desc3"
    t.float    "importe"
    t.integer  "kilos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_details", ["order_id"], name: "index_order_details_on_order_id"

  create_table "orders", force: true do |t|
    t.integer  "client_id"
    t.string   "clase_ped"
    t.string   "numped_cte"
    t.date     "fecha"
    t.string   "forma_entrega"
    t.string   "cond_pago"
    t.string   "moneda"
    t.string   "centro"
    t.date     "fec_entrega"
    t.string   "flete_local"
    t.string   "tarifa_flete_for"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["client_id"], name: "index_orders_on_client_id"

end
