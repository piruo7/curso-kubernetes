SELECT 'CREATE DATABASE msvc_cursos'
    WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'msvc_cursos')