<?php

function is_logged_in() {

	$ci = get_instance();

	if(!$ci->session->userdata('email')) {
		redirect('auth');
	} else {
		$role_id = $ci->session->userdata('role_id');
		$menu = $ci->uri->segment(1);

		$queryMenu = $ci->db->get_where('user_menu', ['menu' => $menu])->row_array();
		$menu_id = $queryMenu['id'];

		$id_session = $ci->session->userdata('id');
		$coba1 = $ci->db->query("SELECT * FROM user where id = '$id_session'")->row_array();
		if ($coba1['id']==NULL) {
			$ci->session->sess_destroy();
		}

		$userAccess = $ci->db->get_where('user_access', [
			'role_id' => $role_id,
			'menu_id' => $menu_id
		]);

		if($userAccess->num_rows() < 1) {
			redirect('auth/blocked');
		}
	}
}
