LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY somador_subtrator IS
PORT (
    a, b      : IN STD_LOGIC_VECTOR(7 DOWNTO 0); -- Operandos
    operacao  : IN STD_LOGIC; -- '0' para soma, '1' para subtração
    resultado : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- Resultado
    carry_out : OUT STD_LOGIC -- Carry
);
END somador_subtrator;

ARCHITECTURE behavioral OF somador_subtrator IS
    COMPONENT somador
    PORT (
        a, b, cin : IN STD_LOGIC;   
        s, cout   : OUT STD_LOGIC
    );
    END COMPONENT;

    SIGNAL cin : STD_LOGIC; -- Carry in
    SIGNAL c   : STD_LOGIC_VECTOR(7 DOWNTO 0); 
    SIGNAL b_mod : STD_LOGIC_VECTOR(7 DOWNTO 0); -- b modificado 
	 SIGNAL cin_local : STD_LOGIC_VECTOR(7 DOWNTO 0); -- Valores de carry in para cada somador
     
BEGIN
	 -- b XOR operacao faz complemento de 2 para subtração
	 -- o XOR obriga a ser de mesma dimensão
    b_mod <= b XOR (operacao & operacao & operacao & operacao & operacao & operacao & operacao & operacao);
    
    -- Gera valores de cin_local
    cin_local(0) <= operacao; -- O carry inicial depende da operação (0 para soma, 1 para subtração)
    gen_cin: FOR i IN 1 TO 7 GENERATE
        cin_local(i) <= c(i-1); -- Os demais carries vêm do somador anterior
    END GENERATE;

    -- Instancia o somador de 1 bit para cada bit
    gen_somador: FOR i IN 0 TO 7 GENERATE
        somador_inst: somador PORT MAP (
            a => a(i),
            b => b_mod(i),
            cin => cin_local(i), -- Usa o sinal cin_local para conectar o carry
            s => resultado(i),
            cout => c(i)
        );
    END GENERATE;

    -- Sinal carry_out final
    carry_out <= c(7);

    -- Define carry inicial (operacao serve como borrow inicial para subtração)
    cin <= operacao;

END behavioral;
