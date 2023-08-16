CREATE TABLE Departamento (
    codigo_departamento INT PRIMARY KEY,
    nome_responsavel VARCHAR(255),
    login_responsavel VARCHAR(50),
    senha_responsavel VARCHAR(50),
    email_responsavel VARCHAR(100)
);

CREATE PROCEDURE InsertOrUpdateDepartamento(
    IN p_codigo_departamento INT,
    IN p_nome_responsavel VARCHAR(255),
    IN p_login_responsavel VARCHAR(50),
    IN p_senha_responsavel VARCHAR(50),
    IN p_email_responsavel VARCHAR(100)
)
BEGIN
    DECLARE v_count INT;
    SELECT COUNT(*) INTO v_count FROM Departamento WHERE codigo_departamento = p_codigo_departamento;
    IF v_count > 0 THEN
        UPDATE Departamento
        SET nome_responsavel = p_nome_responsavel,
            login_responsavel = p_login_responsavel,
            senha_responsavel = p_senha_responsavel,
            email_responsavel = p_email_responsavel
        WHERE codigo_departamento = p_codigo_departamento;
    ELSE

        INSERT INTO Departamento (codigo_departamento, nome_responsavel, login_responsavel, senha_responsavel, email_responsavel)
        VALUES (p_codigo_departamento, p_nome_responsavel, p_login_responsavel, p_senha_responsavel, p_email_responsavel);
    END IF;
END
