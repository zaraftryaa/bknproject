<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Menu_model extends CI_Model
{
    public function getSubMenu()
    {
        $query = "SELECT `user_sub_menu`.*, `user_menu`.`menu`
                  FROM `user_sub_menu` JOIN `user_menu`
                  ON `user_sub_menu`.`menu_id` = `user_menu`.`id`
                ";
        return $this->db->query($query)->result_array();
    }

    public function getLayananById($id)
    {
        return $this->db->get_where('layanan', ['id' => $id])->row_array();
    }

    public function tampil_data()
    {
        return $this->db->get('layanan');
    }

    public function cariData()
    {
        $keyword = $this->input->post('keyword', true);
        $this->db->like('nip', $keyword);
        $this->db->or_like('nama', $keyword);
        $this->db->or_like('slug', $keyword);
        $this->db->or_like('satker', $keyword);
        $this->db->or_like('instansi', $keyword);
        $this->db->or_like('kepentingan', $keyword);
        $this->db->or_like('nohp', $keyword);
        $this->db->or_like('layanan', $keyword);
        $this->db->or_like('counter', $keyword);
        return $this->db->get('layanan')->result_array();
    }

    public function getDisplayById($id)
    {
        return $this->db->get_where('display', ['id' => $id])->row_array();
    }

    public function ubahDataLayanan($id)
    {
        $data = [
            "nip" => $this->input->post('nip', true),
            "nama" => $this->input->post('nama', true),
            "satker" => $this->input->post('satker', true),
            "instansi" => $this->input->post('instansi', true),
            "kepentingan" => $this->input->post('kepentingan', true),
            "layanan" => $this->input->post('layanan', true),
            "counter" => $this->input->post('counter', true),
        ];

        $this->db->where('id', $this->input->post('id'));
        $this->db->update('layanan', $data);
    }

    public function ubahDataDisplay($id)
    {
        $data = [
            "quotes" => $this->input->post('quotes', true)
        ];

        $this->db->where('id', $this->input->post('id'));
        $this->db->update('display', $data);
    }

    public function update_1($id)
    {
        //
        $this->db->query('UPDATE layanan set status = 1 
        WHERE id = "' . $id . '"');
    }

    public function update_2($id)
    {
        //
        $this->db->query('UPDATE layanan set status = 2 
        WHERE id = "' . $id . '"');
    }

    public function get_layanan()
    {
        $sql = "SELECT * From layanan where status = 0 or status = 1";
        return $this->db->query($sql);
    }

    public function get_display()
    {
        $sql = "SELECT * FROM display ORDER BY id DESC LIMIT 1";
        return $this->db->query($sql);
    }

    public function get_counter_a()
    {
        $sql = "SELECT * FROM layanan where counter = 'A' and status = 1 ORDER BY id DESC LIMIT 1";
        return $this->db->query($sql);
    }

    public function get_counter_b()
    {
        $sql = "SELECT * FROM layanan where counter = 'B' and status = 1 ORDER BY id DESC LIMIT 1";
        return $this->db->query($sql);
    }

    public function get_counter_c()
    {
        $sql = "SELECT * FROM layanan where counter = 'C' and status = 1 ORDER BY id DESC LIMIT 1";
        return $this->db->query($sql);
    }

    public function get_counter_d()
    {
        $sql = "SELECT * FROM layanan where counter = 'C' and status = 1 ORDER BY id DESC LIMIT 1";
        return $this->db->query($sql);
    }

    public function hapusData($id)
    {
        $this->db->delete('layanan', ['id' => $id]);
    }

    public function get_all_layanan()
    {
        $sql = "SELECT * FROM layanan order by created_at desc";
        return $this->db->query($sql);
    }
}
