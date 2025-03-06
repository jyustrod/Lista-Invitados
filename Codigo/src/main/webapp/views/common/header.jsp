<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${param.titulo} - Sistema de Gestión de Invitados</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary: #4361ee;
            --primary-dark: #3a56d4;
            --secondary: #7209b7;
            --danger: #d90429;
            --danger-dark: #bf0603;
            --success: #06d6a0;
            --warning: #ffd166;
            --light: #f8f9fa;
            --dark: #212529;
            --gray: #6c757d;
            --gray-light: #e9ecef;
            --shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            --shadow-lg: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
            --radius: 8px;
            --transition: all 0.3s ease;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            line-height: 1.6;
            color: var(--dark);
            background-color: #f0f2f5;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .container {
            width: 100%;
            max-width: 1000px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .header {
            background: linear-gradient(135deg, var(--primary) 0%, var(--secondary) 100%);
            color: white;
            padding: 1.5rem 0;
            box-shadow: var(--shadow);
            margin-bottom: 2rem;
        }

        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: 700;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .logo i {
            font-size: 1.8rem;
        }

        .main-content {
            flex: 1;
            padding-bottom: 2rem;
        }

        .card {
            background-color: white;
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            overflow: hidden;
            margin-bottom: 1.5rem;
            transition: var(--transition);
        }

        .card:hover {
            box-shadow: var(--shadow-lg);
            transform: translateY(-2px);
        }

        .card-header {
            padding: 1.25rem 1.5rem;
            border-bottom: 1px solid var(--gray-light);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .card-title {
            font-size: 1.25rem;
            font-weight: 600;
            color: var(--primary);
            margin: 0;
        }

        .card-body {
            padding: 1.5rem;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
            padding: 0.625rem 1.25rem;
            font-size: 0.875rem;
            font-weight: 500;
            text-align: center;
            text-decoration: none;
            border: none;
            border-radius: var(--radius);
            cursor: pointer;
            transition: var(--transition);
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .btn-primary {
            background-color: var(--primary);
            color: white;
        }

        .btn-primary:hover {
            background-color: var(--primary-dark);
            box-shadow: 0 4px 8px rgba(67, 97, 238, 0.3);
        }

        .btn-danger {
            background-color: var(--danger);
            color: white;
        }

        .btn-danger:hover {
            background-color: var(--danger-dark);
            box-shadow: 0 4px 8px rgba(217, 4, 41, 0.3);
        }

        .btn-outline {
            background-color: transparent;
            border: 1px solid var(--primary);
            color: var(--primary);
        }

        .btn-outline:hover {
            background-color: var(--primary);
            color: white;
        }

        .btn-sm {
            padding: 0.375rem 0.75rem;
            font-size: 0.75rem;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 500;
            color: var(--dark);
        }

        .form-control {
            display: block;
            width: 100%;
            padding: 0.75rem 1rem;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: var(--dark);
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid var(--gray-light);
            border-radius: var(--radius);
            transition: var(--transition);
        }

        .form-control:focus {
            border-color: var(--primary);
            outline: 0;
            box-shadow: 0 0 0 0.2rem rgba(67, 97, 238, 0.25);
        }

        .alert {
            padding: 1rem;
            margin-bottom: 1rem;
            border-radius: var(--radius);
            border-left: 4px solid;
        }

        .alert-danger {
            background-color: rgba(217, 4, 41, 0.1);
            border-left-color: var(--danger);
            color: var(--danger-dark);
        }

        .alert-warning {
            background-color: rgba(255, 209, 102, 0.1);
            border-left-color: var(--warning);
            color: #856404;
        }

        .alert-info {
            background-color: rgba(67, 97, 238, 0.1);
            border-left-color: var(--primary);
            color: var(--primary-dark);
        }

        .footer {
            background-color: var(--dark);
            color: white;
            padding: 1.5rem 0;
            margin-top: auto;
        }

        .footer-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .footer-text {
            font-size: 0.875rem;
        }

        @media (max-width: 768px) {
            .header-content, .footer-content {
                flex-direction: column;
                text-align: center;
                gap: 1rem;
            }

            .card-header {
                flex-direction: column;
                gap: 1rem;
            }
        }
    </style>
</head>
<body>
<header class="header">
    <div class="container header-content">
        <div class="logo">
            <i class="fas fa-users"></i>
            <span>GestInvitados</span>
        </div>
        <nav>
            <a href="${pageContext.request.contextPath}/invitados" class="btn btn-outline">
                <i class="fas fa-list"></i> Lista de Invitados
            </a>
        </nav>
    </div>
</header>

<main class="main-content container">
