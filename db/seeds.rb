puts "------------------------------------------------------------------------------------------------"
puts "Ejecutando borrado de tablas"
Order.destroy_all
LineItem.destroy_all
Product.destroy_all
Category.destroy_all
User.destroy_all
puts "Datos borrados perfectamente"
puts "------------------------------------------------------------------------------------------------"

require "open-uri"


puts "------------------------------------------------------------------------------------------------"
puts "USUARIOS"
puts "------------------------------------------------------------------------------------------------"
puts "creando usuario 1"
usuario1 = User.new(
  first_name: "Ana", last_name: "Perez", phone_number: "989898898", ruc: "989898898000",
  dni: "98989880", address: "Av. Larco 1711", city: "Trujillo", latitude: "",
  longitude: "", email: "anaperez@gmail.com", password: "123456", business_name: "Perez Store"
)
photo = URI.open("https://cdn-icons-png.flaticon.com/512/1/1247.png")
usuario1.photo.attach(io: photo, filename: "usuario1.png", content_type: "image/png")
usuario1.save
puts "usuario 1 creado"
puts "creando usuario 2"

usuario2 = User.new(
  first_name: "Juan", last_name: "Díaz", phone_number: "46644646", ruc: "466446464444",
  dni: "46644648", address: "Av. El Golf 244", city: "Trujillo", latitude: "",
  longitude: "", email: "jdiaz@gmail.com", password: "123456", business_name: "Diaz Corp SA"
)
photo = URI.open("https://cdn-icons-png.flaticon.com/512/1/1247.png")
usuario2.photo.attach(io: photo, filename: "usuario2.png", content_type: "image/png")
usuario2.save
puts "usuario 2 creado"
puts "creando usuario 3"

usuario3 = User.new(
  first_name: "Jhon", last_name: "Smith", phone_number: "49994646", ruc: "",
  dni: "46677648", address: "Av. Flora Tristan 324", city: "Lima", latitude: "",
  longitude: "", email: "jhons@gmail.com", password: "123456"
)
photo = URI.open("https://cdn-icons-png.flaticon.com/512/1/1247.png")
usuario3.photo.attach(io: photo, filename: "usuario3.png", content_type: "image/png")
usuario3.save
puts "usuario 3 creado"

puts "creando usuario 4"
usuario4 = User.new(
  first_name: "Alexandra", last_name: "Jimenez", phone_number: "76556776", ruc: "",
  dni: "46644827", address: "Av el golf de los incas 488", city: "Surco", latitude: "",
  longitude: "", email: "alexaji@gmail.com", password: "123456"
)
photo = URI.open("https://cdn-icons-png.flaticon.com/512/1/1247.png")
usuario4.photo.attach(io: photo, filename: "usuario4.png", content_type: "image/png")
usuario4.save
puts "usuario 4 creado"
puts "creando usuario 5"
usuario5 = User.new(
  first_name: "Maria", last_name: "Romero", phone_number: "46987646", ruc: "",
  dni: "46622648", address: "Calle Geranios 311", city: "Arequipa", latitude: "",
  longitude: "", email: "mromero2@gmail.com", password: "1234567"
)
photo = URI.open("https://cdn-icons-png.flaticon.com/512/1/1247.png")
usuario5.photo.attach(io: photo, filename: "usuario5.png", content_type: "image/png")
usuario5.save
puts "usuario 5 creado"
puts "creando usuario 6"
usuario6 = User.new(
  first_name: "Adrian", last_name: "Bello", phone_number: "46364646", ruc: "",
  dni: "43434548", address: "Av. El Sol 114", city: "Cusco", latitude: "",
  longitude: "", email: "abellisimo@gmail.com", password: "123456"
)
photo = URI.open("https://cdn-icons-png.flaticon.com/512/1/1247.png")
usuario6.photo.attach(io: photo, filename: "usuario6.png", content_type: "image/png")
usuario6.save
puts "usuario 6 creado"
puts "------------------------------------------------------------------------------------------------"

puts "CATEGORIAS"

puts "------------------------------------------------------------------------------------------------"
puts "creando categoria 1"
catmaqui = Category.create!(name: "Maquillaje")
puts "Category 1 creada"

puts "creando categoria 2"
cataba = Category.create!(name: "Abarrotes")
puts "Category 2 creada"

puts "creando categoria 3"
catelec = Category.create!(name: "Electrónicos")
puts "Category 3 creada"

puts "creando categoria 4"
catcuid = Category.create!(name: "Cuidado personal")
puts "Category 4 creada"

puts "creando categoria 5"
catlibre = Category.create!(name: "Libreria")
puts "Category 5 creada"

puts "creando categoria 6"
catjugue = Category.create!(name: "Juguetes")
puts "Category 6 creada"
puts "------------------------------------------------------------------------------------------------"

puts "PRODUCTS"
# ERYCK
puts "------------------------------------------------------------------------------------------------"
puts "creando Categoria - Maquillaje"
puts "creando Producto 1 categoria 1"
product1 = Product.new(
  category_id: catmaqui, name: "Covergirl Base de Maquillaje", original_price: 46.90, discount: 20, price: 37.52, stock: 75,
  description: "Covergirl Base de Maquillaje TruBlend Matte Made Liquid Makeup Classic Ivory L41.",
  user_id: usuario1.id
)
photo = URI.open("https://m.media-amazon.com/images/I/71ozvy1dX9L._SL1500_.jpg")
product1.photos.attach(io: photo, filename: "product1.png", content_type: "image/png")
product1.save
puts "producto 1,Maquillaje creado"

puts "creando Producto 2 categoria 1"
product1 = Product.new(
  category_id: catmaqui, name: "Prebase de Maquillaje Master", original_price: 49.90, discount: 15, price: 42.42, stock: 15,
  description: "Prebase de Maquillaje Master Prime by Facestudio Maybelline Blur + Smooth.",
  user_id: usuario2.id
)
photo = URI.open("https://m.media-amazon.com/images/I/71Wyp0mvvhL._SL1500_.jpg")
product1.photos.attach(io: photo, filename: "product1.png", content_type: "image/png")
product1.save
puts "producto 2,Maquillaje creado"

puts "creando Producto 2 categoria 1"
product1 = Product.new(
  category_id: catmaqui, name: "Base de Maquillaje Wear Abc Cushion", original_price: 59.90, discount: 40, price: 35.94,
  stock: 20,
  description: "Base de Maquillaje Wear Abc Cushion Foundation SPF 50 Physicians Formula Light.",
  user_id: usuario1.id
)
photo = URI.open("https://m.media-amazon.com/images/I/81PlMuN-+gL._SL1500_.jpg")
product1.photos.attach(io: photo, filename: "product1.png", content_type: "image/png")
product1.save
puts "producto 3,Maquillaje creado"

puts "creando Producto 2 categoria 1"
product1 = Product.new(
  category_id: catmaqui, name: "Base de Maquillaje The Healthy ", original_price: 62.90, discount: 40, price: 37.74,
  stock: 15,
  description: "Base de Maquillaje The Healthy Foundation SPF 20 Physicians Formula Medium Neutral 4.",
  user_id: usuario2.id
)
photo = URI.open("https://m.media-amazon.com/images/I/61ueTQlpC2L._SL1500_.jpg")
product1.photos.attach(io: photo, filename: "product4.png", content_type: "image/png")
product1.save
puts "producto 4,Maquillaje creado"

puts "creando Producto 2 categoria 1"
product1 = Product.new(
  category_id: catmaqui, name: "Base de Maquillaje Youthful Wear", original_price: 59.90, discount: 40, price: 35.94,
  stock: 15,
  description: "Base de Maquillaje Youthful Wear Spotless SPF 15 Physicians Formula Medium.",
  user_id: usuario1.id
)
photo = URI.open("https://1.bp.blogspot.com/-jWd10usMmLI/WT0cXh7GJnI/AAAAAAAAEYM/AuVaghPRH4wIC8InKiJxp87ZNvWYgX_ZACLcB/s1600/corector%2Byouthful%2Bwear%2Bphysicians%2Bformula.jpg")
product1.photos.attach(io: photo, filename: "product5.png", content_type: "image/png")
product1.save
puts "producto 5,Maquillaje creado"

puts "creando Producto 2 categoria 1"
product1 = Product.new(
  category_id: catmaqui, name: "Base de Maquillaje Youthful Wear", original_price: 59.90, discount: 10, price: 35.94,
  stock: 5,
  description: "Base de Maquillaje Youthful Wear Spotless SPF 15 Physicians Formula Medium.",
  user_id: usuario2.id
)
photo = URI.open("https://3.bp.blogspot.com/-Ohq3LHrQXuw/WT0cYZK1YhI/AAAAAAAAEYk/A0065ReoLcI_-ZKOjEm1dX_XYgTxaqv3QCLcB/s1600/spotless%2Bphysicians%2Bformula.jpg")
product1.photos.attach(io: photo, filename: "product5.png", content_type: "image/png")
product1.save
puts "producto 6,Maquillaje creado"

puts "------------------------------------------------------------------------------------------------"

puts "creando Categoria - Abarrotes"
product1 = Product.new(
  category_id: cataba.id, name: "Aceite Vegetal Primor", original_price: 12.19, discount: 6, price: 11.50, stock: 75,
  expiration_date: "2023/10/31",
  description: "El aceite vegetal está hecho de una variedad de fuentes vegetales como la soja, la canola,
  el maíz y la palma. El proceso comienza extrayendo el aceite de la materia prima. Esto se hace presionando
  o triturando la verdura.",
  user_id: usuario2.id
)
photo = URI.open("https://tofuu.getjusto.com/orioneat-prod-resized/4ZKpSncGCsBMaoSg9-1200-1200.jpeg")
product1.photos.attach(io: photo, filename: "product1.png", content_type: "image/png")
product1.save
puts "producto 1,cat Abarrotes creado"

product1 = Product.new(
  category_id: cataba.id, name: "Mayonesa AlaCena 850gr", original_price: 20.70, discount: 28,
  price: 14.90, stock: 43, expiration_date: "2023/06/09",
  description: "Mayonesa de 850gr, salsa de mesa, con un toque de limón.",
  user_id: usuario2.id
)
photo = URI.open("https://plazavea.vteximg.com.br/arquivos/ids/19529889-1000-1000/20314552.jpg")
product1.photos.attach(io: photo, filename: "product7.png", content_type: "image/png")
product1.save
puts "producto 2,cat Abarrotes creado"

product1 = Product.new(
  category_id: cataba.id, name: "Bombones Bon o Bon", original_price: 12, discount: 53,
  price: 5.70, stock: 14, expiration_date: "2022/12/09",
  description: "Bombones con chocolate de leche y oblea rellenos con crema de maní/cacahuate.",
  user_id: usuario1.id
)
photo = URI.open("https://swissbrothers.com/2002-large_default/bombones-de-chocolate-con-leche-bon-o-bon-270g.jpg")
product1.photos.attach(io: photo, filename: "product7.png", content_type: "image/png")
product1.save
puts "producto 3,cat Abarrotes creado"

product1 = Product.new(
  category_id: cataba.id, name: "Turrón San José", original_price: 33.90, discount: 15, price: 28.82, stock: 10,
  expiration_date: "2023/03/09",
  description: "Harina de trigo, Hierro, Tiamina, Riboflavina, Niacina, ácido fólico, Azúcar, Grasa vegetal,
  Sal, Anís, Ajonjolí, Espesante (sin 440), Higo, Gelatina, Antioxidante (sin 334), Regulador de acidez (sin 330),
  Colorante (sin 102), Colorante (sin 110), Colorante (sin 129), Colorante (sin 133), Saborizantes, Trigo, Tartrazina",
  user_id: usuario1.id
)
photo = URI.open("https://tofuu.getjusto.com/orioneat-prod-resized/mF2Gwb6254uKqb4Jk-1200-1200.jpeg")
product1.photos.attach(io: photo, filename: "product7.png", content_type: "image/png")
product1.save
puts "producto 4,cat Abarrotes creado"

product1 = Product.new(
  category_id: cataba.id, name: "Trozos de Atún en lata", original_price: 5.40, discount: 20, price: 4.32, stock: 100,
  expiration_date: "2023/06/15",
  description: "Trozos de Atún Real en Aceite de Girasol Lata 170gr.",
  user_id: usuario2.id
)
photo = URI.open("https://minimarketmajaz.com/wp-content/uploads/2021/05/933408.jpg")
product1.photos.attach(io: photo, filename: "product7.png", content_type: "image/png")
product1.save
puts "producto 5,cat Abarrotes creado"

product1 = Product.new(
  category_id: cataba.id, name: "Galletas Morochas", original_price: 4.90, discount: 12, price: 4.20, stock: 70,
  expiration_date: "2023/07/12",
  description: "Galletas Morochas 30g Pack 6un.",
  user_id: usuario2.id
)
photo = URI.open("https://www.maryoriperu.com/wp-content/uploads/2019/04/Galleta-Morocha-x-8-pqt.jpg")
product1.photos.attach(io: photo, filename: "product7.png", content_type: "image/png")
product1.save
puts "producto 6,cat Abarrotes creado"
puts "------------------------------------------------------------------------------------------------"

# JEAN
puts "------------------------------------------------------------------------------------------------"
puts "creando Categoria - Electrónicos"
puts "creando Product 13 - category Electrónicos"
product13 = Product.new(
  category_id: catelec.id, name: "Vidaa Smart Tv Uhd 65", original_price: 2499.00, discount: 28, price: 1799.00, stock: 8,
  description: "Cuenta con Dolby Vision HDR y HDR10; modo de juego automático de baja latencia; Asistente de Google;
  Chromecast incorporado; control remoto de voz; DTS virtual: XDolby Vision HDR y HDR10. Garantía de 1 año.",
  user_id: usuario1.id
)
photo = URI.open("https://assets.hisense-usa.com/assets/GalleryImages/Product/283/7d98b75d7d/A6_Front_Left__ScaleMaxHeightWzc1MF0.jpg")
product13.photos.attach(io: photo, filename: "product13.png", content_type: "image/png")
product13.save
puts "Product - category 3 creada"

puts "creando Product 14 - category Electrónicos"
product14 = Product.new(
  category_id: catelec.id, name: "Televisor Samsung Smart TV 55", original_price: 2699.00, discount: 44, price: 1499.00,
  stock: 2,
  description: "El Televisor Samsung P1 LM55M6 4K UHD de 55 pulgadas es uno de los televisores que mejor han destacado
  en el último año por su gran relación calidad-precio así como las singulares integraciones que tiene con dispositivos
  smart como asistentes de voz, celulares, tablets y laptops. Garantía de 1 año.",
  user_id: usuario1.id
)
photo = URI.open("https://pc-tecnologia.com/867-large_default/televisor-samsung-smart-55-pulgadas-serie-6.jpg")
product14.photos.attach(io: photo, filename: "product14.png", content_type: "image/png")
product14.save
puts "Product 2 - category 3 creada"

puts "creando Product 15 - category Electrónicos"
product15 = Product.new(
  category_id: catelec.id, name: "Acer Notebook 14 Swift 3", original_price: 3959, discount: 38, price: 402.40,
  stock: 3,
  description: "Acer Notebook 14 Swift 3 SF314 59 59TX Intel Core i5. Garantía de 1 año.",
  user_id: usuario2.id
)
photo = URI.open("https://m.media-amazon.com/images/I/71dHWxX7C0L._AC_SL1500_.jpg")
product15.photos.attach(io: photo, filename: "product15.png", content_type: "image/png")
product15.save
puts "Product - category 3 creada"

puts "creando Product 16 - category Electrónicos"
product16 = Product.new(
  category_id: catelec.id, name: "Smartphone Samsung Galaxy A22", original_price: 949.00, discount: 26, price: 699.00, stock: 1,
  description: "Smartphone Samsung Galaxy A22 64GB 4G Negro, Procesador Octa Core de 2GHz/1.8GHz,
  Sistema operativo: Android 11. Garantía de 1 año.",
  user_id: usuario2.id
)
photo = URI.open("https://m.media-amazon.com/images/I/81TAnVrrXjL._AC_SL1500_.jpg")
product16.photos.attach(io: photo, filename: "product16.png", content_type: "image/png")
product16.save
puts "Product - category 3 creada"

puts "creando Product 17 - category Electrónicos"
product15 = Product.new(
  category_id: catelec.id, name: "Huawei FreeBuds 3i", original_price: 349.00, discount: 43, price: 199.00, stock: 2,
  description: "Huawei FreeBuds 3i Blanco, Diseño True Wireless, Tiempo de carga: 115 minutos. Garantía de 1 año.",
  user_id: usuario2.id
)
photo = URI.open("https://m.media-amazon.com/images/I/41E8kMzP9pL._AC_SL1500_.jpg")
product15.photos.attach(io: photo, filename: "product15.png", content_type: "image/png")
product15.save
puts "Product - category 3 creada"

puts "creando Product 18 - category Electrónicos"
product15 = Product.new(
  category_id: catelec.id, name: "Parlante Portátil Lenreu ", original_price: 229.00, discount: 44, price: 129.00, stock: 2,
  description: "Parlante Portátil Lenreu KSPPRM05 25W, Parlantes: 8'', Batería recargable de 2400mAh x 2.
  Garantía de 1 año.",
  user_id: usuario1.id
)
photo = URI.open("https://m.media-amazon.com/images/I/81eBm834zEL._AC_SL1500_.jpg")
product15.photos.attach(io: photo, filename: "product15.png", content_type: "image/png")
product15.save
puts "Product - category 3 creada"
puts "------------------------------------------------------------------------------------------------"

puts "creando Categoria - Cuidado Personal"
puts "creando Product 19 - Cuidado Personal"
product19 = Product.new(
  category_id: catcuid.id, name: "Toallitas removedoras de maquillaje", original_price: 24.90, discount: 35, price: 16.10,
  stock: 10, expiration_date: "2023/02/22",
  description: "Suave, toallitas ultra suaves que te ofrecen una limpieza y eliminación de maquillaje
  al alcance de tu mano.",
  user_id: usuario2.id
)
photo = URI.open("https://m.media-amazon.com/images/I/71Td07yjoUL._SL1500_.jpg")
product19.photos.attach(io: photo, filename: "product19.png", content_type: "image/png")
product19.save
puts "Product 1 - category 4 creada"

puts "creando Product 20 - Cuidado Personal"
product20 = Product.new(
  category_id: catcuid.id, name: "Hello Antiplaca & Whitening", original_price: 17.90, discount: 8, price: 16.50, stock: 25,
  expiration_date: "2023/02/22",
  description: "Contiene dos latas sin plástico, reutilizables y reciclables de 60 pastillas de pasta de dientes
  blanqueadoras y antiplaca (120 tabletas en total).",
  user_id: usuario2.id
)
photo = URI.open("https://m.media-amazon.com/images/I/81fR-fMA5bL._SL1500_.jpg")
product20.photos.attach(io: photo, filename: "product20.png", content_type: "image/png")
product20.save
puts "Product - category 4 creada"

puts "creando Product 21 - Cuidado Personal"
product21 = Product.new(
  category_id: catcuid.id, name: "Rembrandt Intense Pasta dientes blanqueadora", original_price: 24.90, discount: 35, price: 16.10,
  stock: 10, expiration_date: "2023/02/22",
  description: "Hechos de salud: sin ftalatos, sulfate-free, paraben-free, FLUORIDE-FREE,
  Salud preocupación: dientes blanqueamiento.",
  user_id: usuario2.id
)
photo = URI.open("https://m.media-amazon.com/images/I/71dhhAVsERL._SL1500_.jpg")
product21.photos.attach(io: photo, filename: "product21.png", content_type: "image/png")
product21.save
puts "Product - category 4 creada"

puts "creando Product 22 - Cuidado Personal"
product22 = Product.new(
  category_id: catcuid.id, name: "Colgate Optic White Advanced", original_price: 28.90, discount: 30, price: 20.20, stock: 44,
  expiration_date: "2023/06/22",
  description: "Obtén una sonrisa audaz y segura con esta pasta de dientes de peróxido de hidrógeno que contiene
  la fórmula patentada de peróxido de hidrógeno al 2% de Colgate.",
  user_id: usuario2.id
)
photo = URI.open("https://m.media-amazon.com/images/I/61wC2hPTNVL._SL1000_.jpg")
product22.photos.attach(io: photo, filename: "product22.png", content_type: "image/png")
product22.save
puts "Product - category 4 creada"

puts "creando Product 23 - Cuidado Personal"
product23 = Product.new(
  category_id: catcuid.id, name: "Lápiz de blanqueamiento dental blanco óptico", original_price: 12.9, discount: 22, price: 10,
  stock: 30, expiration_date: "2023/07/12",
  description: "Colgate Lápiz de blanqueamiento dental blanco óptico, quitamanchas de dientes para blanquear
  los dientes, 35 tratamientos nocturnos, 0.08 onzas líquidas",
  user_id: usuario2.id
)
photo = URI.open("https://m.media-amazon.com/images/I/71H2qSWwxqL._SL1500_.jpg")
product23.photos.attach(io: photo, filename: "product23.png", content_type: "image/png")
product23.save
puts "Product - category 4 creada"

puts "creando Product 24 - Cuidado Personal"
product24 = Product.new(
  category_id: catcuid.id, name: "Kit de blanqueamiento dental con bandeja", original_price: 39.90, discount: 40,
  price: 23.94, stock: 20, expiration_date: "2023/08/17",
  description: "La caja del kit de blanqueamiento dental Pdoo incluye 10 bolígrafos de gel blanqueador de dientes +
  bandeja de boquilla con potentes luces LED + guía de sombra de dientes + manual de usuario (idioma español
  no garantizado).",
  user_id: usuario2.id
)
photo = URI.open("https://m.media-amazon.com/images/I/71hFexvyeGL._AC_SL1500_.jpg")
product24.photos.attach(io: photo, filename: "product24.png", content_type: "image/png")
product24.save
puts "Product - category 4 creada"
puts "------------------------------------------------------------------------------------------------"

# FIORE
puts "------------------------------------------------------------------------------------------------"
puts "creando Categoria - Libro"
puts "creando producto = Product 1 - category 5"
product100 = Product.new(
  category_id: catlibre.id, name: "Ruido. Un fallo en el juicio humano", original_price: 50.00, discount: 10, price: 40.00,
  stock: 3,
  description: "Dos médicos en la misma ciudad pueden dar diagnósticos diferentes a pacientes idénticos; dos jueces
  pueden dictar sentencias distintas ante delitos similares; nosotros mismos podemos decidir una cosa u otra según sea
  por la mañana o por la tarde, o según se acerque o no la hora de comer. Estos son ejemplos de ruido: el sesgo que
  conlleva variabilidad en juicios que deberían ser iguales. El ruido está presente en todas las decisiones individuales
  y colectivas, y produce errores en innumerables terrenos, desde la medicina hasta la economía, pasando por el derecho,
  la sanidad, la protección infantil y la contratación. Además, también nos importuna e influye a la hora de tomar
  muchas de nuestras decisiones cotidianas.",
  user_id: usuario1.id
)
photo = URI.open("https://m.media-amazon.com/images/I/51tl3Ro96gL.jpg")
product100.photos.attach(io: photo, filename: "product100.png", content_type: "image/png")
product100.save
puts "producto = Product 1 - category 5 creada"

puts "creando producto = Product 2 - category 5"
product101 = Product.new(
  category_id: catlibre.id, name: "La mirada quieta", original_price: 70.00, discount: 10, price: 60.00, stock: 1,
  description: "Benito Pérez Galdós es un autor esencial en la literatura española contemporánea. En este ensayo, a
  partir del análisis de sus novelas, de sus obras teatrales y de los Episodios nacionales, Mario Vargas Llosa crea un
  perfil completo, personal y sugerente del escritor español. Nadie como el Nobel peruano es capaz de leer de manera tan
  sagaz y con tanta libertad y pasión la obra de un creador.",
  user_id: usuario2.id
)
photo = URI.open("https://m.media-amazon.com/images/I/51UroNogwZL.jpg")
product101.photos.attach(io: photo, filename: "product101.png", content_type: "image/png")
product101.save
puts "producto = Product 2 - category 5 creada"

puts "creando producto = Product 3 - category 5"
product102 = Product.new(
  category_id: catlibre.id, name: "Cómo evitar la próxima pandemia", original_price: 80.00, discount: 10, price: 70.00,
  stock: 3,
  description: "Bill Gates cree que la respuesta es sí, y en este libro explica de un modo claro y convincente qué
  deberíamos haber aprendido de la COVID-19 y qué podemos hacer cada uno de nosotros para evitar un desastre parecido.",
  user_id: usuario1.id
)
photo = URI.open("https://m.media-amazon.com/images/I/41oAInTnV0L.jpg")
product102.photos.attach(io: photo, filename: "product102.png", content_type: "image/png")
product102.save
puts "producto = Product 3 - category 5 creada"

puts "creando producto = Product 4 - category 5"
product103 = Product.new(
  category_id: catlibre.id, name: "Yo vengo a ofrecer mi corazón", original_price: 90.00, discount: 10, price: 80.00, stock: 5,
  description: "Yo vengo a ofrecer mi corazón es un recorrido por la vida y obra de Susana Baca contada por su propia
  protagonista. Se trata de las memorias iniciales de los primeros cincuenta años de una artista que ha llevado su voz
  - y a través de ella, la cultura peruana - a paísesy escenarios donde nunca había sonado un cajón o un landó.",
  user_id: usuario2.id
)
photo = URI.open("https://www.crisol.com.pe/media/catalog/product/cache/f6d2c62455a42b0d712f6c919e880845/9/7/9786124269271.jpg")
product103.photos.attach(io: photo, filename: "product103.png", content_type: "image/png")
product103.save
puts "producto = Product 4 - category 5 creada"

puts "creando producto = Product 5 - category 5"
product104 = Product.new(
  category_id: catlibre.id, name: "¿Ahorrar o gastar?", original_price: 40.00, discount: 10, price: 30.00, stock: 2,
  description: "El dinero no da la felicidad, pero evita muchos momentos infelices. Por ello, ante el dilema
  financiero: ¿ahorrar o gastar?, Walter Eyzaguirre sabe que aprender a manejar el dinero no es una opción, sino una
  necesidad para conseguir tu mayor bienestar. Concebido como un ameno y accesible manual de educación financiera,
  este libro problematiza los prejuicios sobre el dinero para luego abordar, mediante la estrategia del mindfulness,
  nociones como el equilibrio económico, el propósito del ahorro, las bondades del presupuesto, el valor del crédito,
  las ventajas de invertir y la racionalidad de los emprendimientos empresariales.",
  user_id: usuario2.id
)
photo = URI.open("https://www.crisol.com.pe/media/catalog/product/cache/f6d2c62455a42b0d712f6c919e880845/9/7/9786124275234_0hapfcxpsrdmzzzn.jpg")
product104.photos.attach(io: photo, filename: "product104.png", content_type: "image/png")
product104.save
puts "producto = Product 5 - category 5 creada"

puts "creando producto = Product 6 - category 5"
product105 = Product.new(
  category_id: catlibre.id, name: "El Tao de Warren Buffett", original_price: 30.00, discount: 10, price: 20.00, stock: 7,
  description: "Dedicación, integridad y sentido común son algunos de los valores que Warren Buffett ha destacado como
  esenciales en su exitosa carrera como inversor. Reunidos por su círculo cercano en un único libro a través de
  conversaciones personales, reuniones sociales y entrevistas, los aforismos de Buffett no sólo han instruido a sus
  discípulos en la dirección empresarial, sino también en la disciplina, la virtud de la paciencia y el desarrollo
  personal. El tao de Warren Buffett es una guía esencial que inspira a sus lectores, contribuye a agudizar la mente,
  ayuda a tomar las decisiones acertadas tanto en la vida personal como profesional y ofrece estrategias prácticas que
  serán de enorme utilidad para todos los inversores, sean grandes o pequeños.",
  user_id: usuario2.id
)
photo = URI.open("https://www.crisol.com.pe/media/catalog/product/cache/f6d2c62455a42b0d712f6c919e880845/9/7/9788413440545_ynh9k8wqda3hj3u3.jpg")
product105.photos.attach(io: photo, filename: "product105.png", content_type: "image/png")
product105.save
puts "producto = Product 6 - category 5 creada"

puts "------------------------------------------------------------------------------------------------"

puts "creando Categoria - Juguete"
puts "creando producto = Product 1 - category 6"
product106 = Product.new(
  category_id: catjugue.id, name: "Gran Castillo de Fiesta", original_price: 200.00, discount: 10, price: 180.00, stock: 2,
  description: "Castillo de muñecas",
  user_id: usuario1.id
)
photo = URI.open("https://m.media-amazon.com/images/I/81ocKl-gV+L._AC_SL1500_.jpg")
product106.photos.attach(io: photo, filename: "product106.png", content_type: "image/png")
product106.save
puts "producto = Product 1 - category 6 creado"

puts "creando producto = Product 2 - category 6"
product120 = Product.new(
  category_id: catjugue.id, name: "Juego de Madera Little Tikes", original_price: 200.00, discount: 20, price: 180.00, stock: 4,
  description: "Restaurante Drive Thru 40 Accesorios",
  user_id: usuario2.id
)
photo = URI.open("https://m.media-amazon.com/images/I/71LNXHFAloL._AC_SL1500_.jpg")
product120.photos.attach(io: photo, filename: "product120.png", content_type: "image/png")
product120.save
puts "producto = Product 2 - category 6 creado"

puts "creando producto = Product 3 - category 6"
product107 = Product.new(
  category_id: catjugue.id, name: "Figura de Acción Transformers Cyberverse", original_price: 80.00, discount: 10,
  price: 70.00, stock: 2,
  description: "Convierte la Figura de Acción para activar su movimiento de ataque distintivo",
  user_id: usuario1.id
)
photo = URI.open("https://m.media-amazon.com/images/I/51wmfthHntL._SL500_.jpg")
product107.photos.attach(io: photo, filename: "product107.png", content_type: "image/png")
product107.save
puts "producto = Product 3 - category 6 creado"

puts "creando producto = Product 4 - category 6"
product108 = Product.new(
  category_id: catjugue.id, name: "Lanzador de Dardos Nerf Elite 2.0", original_price: 50.00, discount: 10,
  price: 40.00, stock: 6, description: "Lanzador de dardos con mira telescópica",
  user_id: usuario2.id
)
photo = URI.open("https://production-tailoy-repo-magento-statics.s3.amazonaws.com/imagenes/872x872/productos/i/n/e/nerf-lanzador-elite-20-prospecto-qs4-59674-default-1.jpg")
product108.photos.attach(io: photo, filename: "product108.png", content_type: "image/png")
product108.save
puts "producto = Product 4 - category 6 creado"

puts "creando producto = Product 5 - category 6"
product109 = Product.new(
  category_id: catjugue.id, name: "Juguete Preescolar Fisher Price Lil", original_price: 50.00, discount: 10, price: 40.00,
  stock: 7, description: "Más de 60 canciones, sonidos, tonos y frases",
  user_id: usuario1.id
)
photo = URI.open("https://m.media-amazon.com/images/I/61AzrYk97fL._AC_SL1000_.jpg")
product109.photos.attach(io: photo, filename: "product109.png", content_type: "image/png")
product109.save
puts "producto = Product 5 - category 6 creado"

puts "creando producto = Product 6 - category 6"
product110 = Product.new(
  category_id: catjugue.id, name: "Juguete Preescolar Fisher Price Lil", original_price: 50.00, discount: 70, price: 15.00,
  stock: 2, description: "Más de 60 canciones, sonidos, tonos y frases",
  user_id: usuario2.id
)
photo = URI.open("https://m.media-amazon.com/images/I/61AzrYk97fL._AC_SL1000_.jpg")
product110.photos.attach(io: photo, filename: "product110.png", content_type: "image/png")
product110.save
puts "producto = Product 6 - category 6 creado"

puts "------------------------------------------------------------------------------------------------"
puts "ORDENES"

puts "------------------------------------------------------------------------------------------------"
puts "creando Order 1"
Order.create!(
  first_name: "Raul", last_name: "Rivera", dni: "10567810", address: "Esteban tuerten 360",
  city: "San juan de miraflores", email: "raulrivera@gmail.com", delivery_date: "2022/10/12",
  delivery_type: "Envío a casa", payment: "MasterCard"
)
puts "Order 1 creada"

puts "creando Order 2"
Order.create!(
  first_name: "Andres", last_name: "Fonseca", dni: "23452345", address: "Av Proceres 1045",
  city: "Surco", email: "afonseca@gmail.com", delivery_date: "2022/10/02",
  delivery_type: "Recojo en Tienda", payment: "Visa"
)
puts "Order 2 creada"

puts "creando Order 3"
Order.create!(
  first_name: "Jonathan", last_name: "Black", dni: "45342312", address: "Dos de mayo 645",
  city: "San Isidro", email: "joblack@gmail.com", delivery_date: "2022/09/10",
  delivery_type: "Envío a casa", payment: "Mastercard"
)
puts "Order 3 creada"

puts "creando Order 4"
Order.create!(
  first_name: "Fernanda", last_name: "Polanco", dni: "76556776", address: "Av. El Golf 755",
  city: "surco", email: "fernandapo@gmail.com", delivery_date: "2022/01/15",
  delivery_type: "Envío a casa", payment: "Mastercard"
)
puts "Order 4 creada"

puts "creando Order 5"
Order.create!(
  first_name: "Florencia", last_name: "Jimenez", dni: "64547235", address: "Los alamos 645",
  city: "San Isidro", email: "joblack@gmail.com", delivery_date: "2022/09/10",
  delivery_type: "Envío a casa", payment: "Amex"
)
puts "Order 5 creada"

puts "creando Order 6"
Order.create!(
  first_name: "Carmen", last_name: "Smith", dni: "68785940", address: "Huamanga 423",
  city: "Magdalena", email: "carsmith@gmail.com", delivery_date: "2022/10/10",
  delivery_type: "Recojo en Tienda", payment: "Visa"
)
puts "Order 6 creada"

puts "creando Order 7"
orden1 = Order.create!(
  first_name: "Demian", last_name: "Santos", dni: "76545678", address: "Av Argentina 3549",
  city: "Callao", email: "Santos_demian@gmail.com", delivery_date: "2022/09/13",
  delivery_type: "Envío a casa", payment: "Mastercard"
)
puts "Order 7 creada"
puts "------------------------------------------------------------------------------------------------"

puts "LINE-ITEMS"

puts "------------------------------------------------------------------------------------------------"
puts "Line-Item 1"
LineItem.create!(product_id: product110.id, order_id: orden1.id, quantity: 1, price: 40.00)
puts "Line-Item 1 creada"
puts "Line-Item 2"
LineItem.create!(product_id: product109.id, order_id: orden1.id, quantity: 2, price: 40.00)
puts "Line-Item 2 creada"
puts "Line-Item 3"
LineItem.create!(product_id: product108.id, order_id: orden1.id, quantity: 1, price: 40.00)
puts "Line-Item 3 creada"

puts "------------------------------------------------------------------------------------------------"
puts "Seed ejecutado correctamente"
puts "------------------------------------------------------------------------------------------------"
