<?php

$page = $_GET['page'] ?? 'home';

switch ($page) {
    case 'home':
        require_once "../views/pagamentoView.php";
        break;

    default:
        http_response_code(404);
        echo "Página não encontrada.";
        break;
}
?>