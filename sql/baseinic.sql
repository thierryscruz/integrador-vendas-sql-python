-- Arquivo para Carga de Dados Inicial (Seed) - T-SQL (SQL Server)
-- Este script popula a tabela utilizando a Stored Procedure.

-- 1. Vendas Válidas (Serão inseridas e terão comissão calculada)
EXEC sp_processar_venda 'Notebook Dell XPS', 8500.00, '2023-10-10', 'Confirmado';
EXEC sp_processar_venda 'Monitor LG Ultrawide', 1800.50, '2023-10-11', 'Enviado';
EXEC sp_processar_venda 'Mouse Logitech MX', 450.00, '2023-10-11', 'Entregue';
EXEC sp_processar_venda 'Teclado Keychron', 600.00, '2023-10-12', 'Pendente';
EXEC sp_processar_venda 'Cadeira Gamer', 1200.00, '2023-10-13', 'Confirmado';

EXEC sp_processar_venda 'Dell Notebook Latitude', 4500.00, '2023-10-15', 'Confirmado';
EXEC sp_processar_venda 'Dell Monitor 24pol', 1200.00, '2023-10-15', 'Enviado';
EXEC sp_processar_venda 'Dell Mouse Wireless', 150.00, '2023-10-15', 'Entregue';
EXEC sp_processar_venda 'Dell Teclado USB', 200.00, '2023-10-15', 'Pendente';
EXEC sp_processar_venda 'Dell Dock Station', 1500.00, '2023-10-15', 'Confirmado';
EXEC sp_processar_venda 'Dell Mochila Pro', 350.00, '2023-10-15', 'Confirmado';
EXEC sp_processar_venda 'Dell Servidor PowerEdge', 15000.00, '2023-10-15', 'Processando';
EXEC sp_processar_venda 'Dell Webcam UltraSharp', 900.00, '2023-10-15', 'Enviado';
EXEC sp_processar_venda 'Dell Headset Alienware', 800.00, '2023-10-15', 'Entregue';
EXEC sp_processar_venda 'Dell Adaptador USB-C', 120.00, '2023-10-15', 'Confirmado';

EXEC sp_processar_venda 'Samsung Galaxy S23', 5000.00, '2023-10-16', 'Confirmado';
EXEC sp_processar_venda 'Samsung Tab S9', 4500.00, '2023-10-16', 'Enviado';
EXEC sp_processar_venda 'Samsung Monitor Odyssey', 3200.00, '2023-10-16', 'Pendente';
EXEC sp_processar_venda 'Samsung SSD 980 Pro', 900.00, '2023-10-16', 'Confirmado';
EXEC sp_processar_venda 'Samsung TV Crystal 55', 2800.00, '2023-10-16', 'Processando';
EXEC sp_processar_venda 'Samsung Soundbar Q-Series', 1500.00, '2023-10-16', 'Entregue';
EXEC sp_processar_venda 'Samsung Galaxy Watch 6', 1800.00, '2023-10-16', 'Confirmado';
EXEC sp_processar_venda 'Samsung Care+', 500.00, '2023-10-16', 'Confirmado';
EXEC sp_processar_venda 'Samsung Carregador Super', 250.00, '2023-10-16', 'Enviado';
EXEC sp_processar_venda 'Samsung Capa Protetora', 150.00, '2023-10-16', 'Entregue';

EXEC sp_processar_venda 'Apple MacBook Air', 8000.00, '2023-10-17', 'Confirmado';
EXEC sp_processar_venda 'Apple iPhone 15 Pro', 9500.00, '2023-10-17', 'Processando';
EXEC sp_processar_venda 'Apple iPad Air', 4500.00, '2023-10-17', 'Enviado';
EXEC sp_processar_venda 'Apple Watch Series 9', 3500.00, '2023-10-17', 'Confirmado';
EXEC sp_processar_venda 'Apple AirPods Pro', 1800.00, '2023-10-17', 'Entregue';
EXEC sp_processar_venda 'Apple Magic Mouse', 600.00, '2023-10-17', 'Confirmado';
EXEC sp_processar_venda 'Apple Magic Keyboard', 1200.00, '2023-10-17', 'Pendente';
EXEC sp_processar_venda 'Apple Studio Display', 12000.00, '2023-10-17', 'Confirmado';
EXEC sp_processar_venda 'Apple Apple TV 4K', 1500.00, '2023-10-17', 'Enviado';
EXEC sp_processar_venda 'Apple AirTag', 250.00, '2023-10-17', 'Entregue';

EXEC sp_processar_venda 'Logitech Mouse MX Master 3', 600.00, '2023-10-18', 'Confirmado';
EXEC sp_processar_venda 'Logitech Teclado MX Keys', 700.00, '2023-10-18', 'Enviado';
EXEC sp_processar_venda 'Logitech Webcam C920', 450.00, '2023-10-18', 'Confirmado';
EXEC sp_processar_venda 'Logitech Headset Zone', 1200.00, '2023-10-18', 'Processando';
EXEC sp_processar_venda 'Logitech Mousepad Desk', 150.00, '2023-10-18', 'Entregue';
EXEC sp_processar_venda 'Logitech Caixas Som Z407', 550.00, '2023-10-18', 'Confirmado';
EXEC sp_processar_venda 'Logitech Mouse Vertical', 400.00, '2023-10-18', 'Pendente';
EXEC sp_processar_venda 'Logitech Teclado Mecanico POP', 650.00, '2023-10-18', 'Confirmado';
EXEC sp_processar_venda 'Logitech StreamCam', 950.00, '2023-10-18', 'Enviado';
EXEC sp_processar_venda 'Logitech Presenter R500', 250.00, '2023-10-18', 'Entregue';

EXEC sp_processar_venda 'Razer Blade 15', 15000.00, '2023-10-19', 'Confirmado';
EXEC sp_processar_venda 'Razer DeathAdder V3', 500.00, '2023-10-19', 'Processando';
EXEC sp_processar_venda 'Razer BlackWidow V4', 1100.00, '2023-10-19', 'Enviado';
EXEC sp_processar_venda 'Razer Kraken Kitty', 600.00, '2023-10-19', 'Confirmado';
EXEC sp_processar_venda 'Razer Iskur Chair', 2500.00, '2023-10-19', 'Entregue';
EXEC sp_processar_venda 'Razer Kiyo Pro', 1200.00, '2023-10-19', 'Confirmado';
EXEC sp_processar_venda 'Razer Seiren Mini', 400.00, '2023-10-19', 'Pendente';
EXEC sp_processar_venda 'Razer Barracuda X', 800.00, '2023-10-19', 'Confirmado';
EXEC sp_processar_venda 'Razer Viper Ultimate', 900.00, '2023-10-19', 'Enviado';
EXEC sp_processar_venda 'Razer Goliathus Chroma', 300.00, '2023-10-19', 'Entregue';

EXEC sp_processar_venda 'Asus ROG Zephyrus', 12000.00, '2023-10-20', 'Confirmado';
EXEC sp_processar_venda 'Asus TUF Gaming Monitor', 1800.00, '2023-10-20', 'Enviado';
EXEC sp_processar_venda 'Asus Placa Asus Prime', 1200.00, '2023-10-20', 'Processando';
EXEC sp_processar_venda 'Asus Roteador WiFi 6', 900.00, '2023-10-20', 'Confirmado';
EXEC sp_processar_venda 'Asus ZenBook Duo', 11000.00, '2023-10-20', 'Entregue';
EXEC sp_processar_venda 'Asus ROG Phone 7', 6000.00, '2023-10-20', 'Confirmado';
EXEC sp_processar_venda 'Asus Teclado ROG Strix', 850.00, '2023-10-20', 'Pendente';
EXEC sp_processar_venda 'Asus Mouse ROG Gladius', 450.00, '2023-10-20', 'Confirmado';
EXEC sp_processar_venda 'Asus Headset Delta', 950.00, '2023-10-20', 'Enviado';
EXEC sp_processar_venda 'Asus Webcam C3', 300.00, '2023-10-20', 'Entregue';

EXEC sp_processar_venda 'Acer Predator Helios', 9000.00, '2023-10-21', 'Confirmado';
EXEC sp_processar_venda 'Acer Swift 5', 5500.00, '2023-10-21', 'Enviado';
EXEC sp_processar_venda 'Acer Monitor Nitro', 1500.00, '2023-10-21', 'Confirmado';
EXEC sp_processar_venda 'Acer Aspire 5', 3500.00, '2023-10-21', 'Processando';
EXEC sp_processar_venda 'Acer Chromebook Spin', 2500.00, '2023-10-21', 'Entregue';
EXEC sp_processar_venda 'Acer Projector X', 3000.00, '2023-10-21', 'Confirmado';
EXEC sp_processar_venda 'Acer Mouse Predator', 350.00, '2023-10-21', 'Pendente';
EXEC sp_processar_venda 'Acer Headset Galea', 450.00, '2023-10-21', 'Confirmado';
EXEC sp_processar_venda 'Acer Mochila Predator', 400.00, '2023-10-21', 'Enviado';
EXEC sp_processar_venda 'Acer Teclado Aethon', 500.00, '2023-10-21', 'Entregue';

EXEC sp_processar_venda 'HP Spectre x360', 9500.00, '2023-10-22', 'Confirmado';
EXEC sp_processar_venda 'HP Omen 16', 8500.00, '2023-10-22', 'Enviado';
EXEC sp_processar_venda 'HP Impressora Tank', 1200.00, '2023-10-22', 'Confirmado';
EXEC sp_processar_venda 'HP Monitor 27f', 1100.00, '2023-10-22', 'Processando';
EXEC sp_processar_venda 'HP Mouse Wireless', 120.00, '2023-10-22', 'Entregue';
EXEC sp_processar_venda 'HP Teclado 970', 450.00, '2023-10-22', 'Confirmado';
EXEC sp_processar_venda 'HP Dragonfly Pro', 10000.00, '2023-10-22', 'Pendente';
EXEC sp_processar_venda 'HP Cartucho 664', 80.00, '2023-10-22', 'Confirmado';
EXEC sp_processar_venda 'HP Webcam w300', 250.00, '2023-10-22', 'Enviado';
EXEC sp_processar_venda 'HP Omen Headset', 600.00, '2023-10-22', 'Entregue';

EXEC sp_processar_venda 'Sony WH-1000XM5', 2200.00, '2023-10-23', 'Confirmado';
EXEC sp_processar_venda 'Sony PlayStation 5', 4500.00, '2023-10-23', 'Enviado';
EXEC sp_processar_venda 'Sony TV Bravia XR', 6000.00, '2023-10-23', 'Confirmado';
EXEC sp_processar_venda 'Sony Camera Alpha 7', 12000.00, '2023-10-23', 'Processando';
EXEC sp_processar_venda 'Sony Lente G Master', 8000.00, '2023-10-23', 'Entregue';
EXEC sp_processar_venda 'Sony DualSense Edge', 1200.00, '2023-10-23', 'Confirmado';
EXEC sp_processar_venda 'Sony Xperia 1 V', 7000.00, '2023-10-23', 'Pendente';
EXEC sp_processar_venda 'Sony Soundbar HT', 3500.00, '2023-10-23', 'Confirmado';
EXEC sp_processar_venda 'Sony Memory Card', 300.00, '2023-10-23', 'Enviado';
EXEC sp_processar_venda 'Sony LinkBuds S', 900.00, '2023-10-23', 'Entregue';

EXEC sp_processar_venda 'LG OLED Evo C3', 7000.00, '2023-10-24', 'Confirmado';
EXEC sp_processar_venda 'LG Monitor UltraGear', 2500.00, '2023-10-24', 'Enviado';
EXEC sp_processar_venda 'LG Gram 17', 9000.00, '2023-10-24', 'Confirmado';
EXEC sp_processar_venda 'LG Geladeira Smart', 15000.00, '2023-10-24', 'Processando';
EXEC sp_processar_venda 'LG Soundbar SC9', 2200.00, '2023-10-24', 'Entregue';
EXEC sp_processar_venda 'LG Xboom Go', 500.00, '2023-10-24', 'Confirmado';
EXEC sp_processar_venda 'LG Ar Condicionado', 3500.00, '2023-10-24', 'Pendente';
EXEC sp_processar_venda 'LG Projetor CineBeam', 4000.00, '2023-10-24', 'Confirmado';
EXEC sp_processar_venda 'LG Monitor Ergo', 3000.00, '2023-10-24', 'Enviado';
EXEC sp_processar_venda 'LG Fone Tone Free', 600.00, '2023-10-24', 'Entregue';
GO

-- 2. Vendas Inválidas (Devem ser ignoradas pela Procedure por valor negativo ou zero)
EXEC sp_processar_venda 'Licença Software Antiga', -150.00, '2023-10-14', 'Cancelado'; 
EXEC sp_processar_venda 'Brinde Promocional', 0.00, '2023-10-14', 'Gratis';