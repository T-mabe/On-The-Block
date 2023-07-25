//
//  BusinessModel.swift
//  DataModeling
//
//  Created by Abe Molina on 5/19/23.
//

import Foundation
import CoreLocation
import MapKit

// Store DataModel
struct Store: Identifiable, Codable, Equatable {
    
    var id = UUID()
    let storeName: String
    let address: String
    let phoneNumber: String
    var latitude: Double = 42.3309
    var longitude: Double = -83.0479
    var image: String = ""
    var bio: String
    var hours: String
    var website: String
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
 
    var distanceFromUser: CLLocationDistance?
    
    var distanceFormatted: String? {
        guard let distanceFromUser = distanceFromUser else { return nil }
        let distanceInMeters = Measurement(value: distanceFromUser, unit: UnitLength.meters)
        let formatter = MeasurementFormatter()
        formatter.numberFormatter.maximumFractionDigits = 2
        formatter.locale = .autoupdatingCurrent
        return formatter.string(from: distanceInMeters)
    }
    
    static let example = Store(storeName: "Breadless", address: "2760 Larned St, Detroit, MI", phoneNumber: "313-488-4091", latitude: 42.3309, longitude: -83.0479, bio: "", hours: "", website: "stuff")
    
    static func ==(lhs: Store, rhs: Store) -> Bool {
        lhs.id == rhs.id
    }
}
    
 let stores = [
       
        Store(storeName: "La Gloria Bakery", address: "3345 Bagley St, Detroit, MI", phoneNumber: "313-842-5722", latitude: 42.323402, longitude: -83.084344, image: "lagloria", bio: "Old-school Mexican bakeshop offering a range of sweet & savory fare including churros & tamales.", hours: "Monday: 6 AM–6 PM Tuesday: 6 AM–6 PM Wednesday: 6 AM–6 PM Thursday: 6 AM–6 PM Friday: 6 AM–6 PM Saturday: 7 AM–8 PM Sunday: 6:30 AM–6 PM", website: "https://www.facebook.com/people/La-Gloria-Bakery/100054545015226/"),
        Store(storeName: "Algo Especial", address: "2628 Bagley St, Detroit, MI", phoneNumber: "313-963-9013", latitude: 42.325327, longitude: -83.078594, image: "algoespecial", bio: "Algo Especial is a favorite destination for its fluffy and bountiful tamales, which fans purchase by the dozen. For treating common ailments or a spiritual cleansing, longtime clients will turn to the store’s robust collection of teas and herbs — traditional remedies in Latinx culture that date back centuries. Customers from all over metro Detroit, elsewhere in Michigan, and even across the Canadian border know Hernandez and her many relatives who work in the 42-year-old establishment on a first-name basis and folks regularly make it a point upon entering the shop to give at least one family member a hug. During the holidays.", hours: "Monday: 9 AM–5 PM Tuesday: Closed Wednesday: 9 AM–5 PM Thursday: 9 AM–5 PM Friday: 9 AM–5 PM Saturday: 9 AM–5 PM Sunday: 9 AM–5 PM", website: "https://www.facebook.com/people/Algo-Especial-Supermercado/100063557654568/"),
        Store(storeName: "Taqueria Lupita's", address: "3443 Bagley St, Detroit, MI", phoneNumber: "313-843-1105", latitude: 42.323012, longitude: -83.085561, image: "lupitas", bio: "The Lopez Family runs the show at Taqueria Lupita’s and is the second generation of ownership. Her parents migrated to Detroit from Guadalajara (known for the tequila, mariachi, and its rich history and traditions), with years of food experience, and began working in kitchens in the city. Years later, they opened Lupita’s and introduced the city to traditional food from Jalisco, Mexico. The menu expanded to include a variety of offerings, including they’re well known street style tacos. Lopez continues the tradition by offering a variety of taco meat options like lengua, tripas, cabeza, and pastor. And beyond tacos offerings of caldos, enchiladas, chiles rellenos, and fajitas.", hours: "Monday: 10 AM–9 PM Tuesday: 10 AM–9 PM Wednesday: 10 AM–9 PM Thursday: 10 AM–9 PM Friday: 10 AM–9 PM Saturday: 10 AM–9 PM Sunday: 10 AM–9 PM", website: "https://www.taquerialupitas.com"),
        Store(storeName: "Sheila's Bakery", address: "2142 Springwells St, Detroit, MI", phoneNumber: "313-841-8480", latitude: 42.310668, longitude: -83.126459, image: "sheilas", bio: "The first thing that strikes the senses as you step into Sheila’s Bakery is the smell of caramelizing sugars and flour, the scent from hundreds of breads, cookies, and cakes just beyond the threshold. A Mexican pastry institution in Southwest Detroit’s active Springwells neighborhood, the shop is a destination for a quick breakfast snack and a coffee as well as a special occasion.", hours: "Monday: 6 AM–9 PM Tuesday: 6 AM–9 PM Wednesday: 6 AM–9 PM Thursday: 6 AM–9 PM Friday: 6 AM–9 PM Saturday: 6 AM–9 PM Sunday: 7 AM–9 PM", website: "https://www.instagram.com/sheilasbakery/?hl=en"),
        Store(storeName: "Taqueria El Rey", address: "3344 W. Vernor Hwy, Detroit, MI", phoneNumber: "313-357-3094", latitude:  42.324681, longitude: -83.085285, image: "elrey", bio: "", hours: "", website: "https://www.instagram.com/taqueriaelreydetroit/?hl=en"),
        Store(storeName: "Taqueria Los Charros", address: "4090 Dix Hwy, Lincoln Park, MI ", phoneNumber: "313-551-5750", latitude: 42.223718, longitude: -83.194706, image: "loscharros", bio: "Taqueria Los Charros is a family run business headed by Salvador Jr. and his parents Genoveva and Salvador Gutierrez Sr. It was a dream talked about and planned for many years. Now a dream come true, they bring to their customers their hard work, dedication, and love for food. They take pride in providing an authentic and traditional experience with a warm and comfortable atmosphere. Where quality and service are their number one priority for both the customers and hardworking employees.", hours: "Monday: Closed Tuesday: 11 AM–9 PM Wednesday: 11 AM–9 PM Thursday: 11 AM–9 PM Friday: 11 AM–10 PM Saturday: 11 AM–10 PM Sunday: 11 AM–9 PM", website: "https://loscharrostogo.com"),
        Store(storeName: "Breadless", address: "2760 Larned St, Detroit, MI", phoneNumber: "313-488-4091", latitude: 42.339931, longitude: -83.020264, image:"breadless", bio: "Breadless is a 100% gluten-free eatery, and is the first and only healthy restaurant concept in the nation specializing in savory on-the-go sandwiches, salads, and bowls made with leafy super greens such as swiss chard, turnip greens, collard greens, and dino kale (instead of bread or iceberg lettuce) that empower a health-conscious lifestyle. Breadless also offers soups, green teas, cold press juices, and vegan and gluten-free brownies and cookies.", hours: "Monday: 10:30 AM–8 PM Tuesday:    10:30 AM–8 PM Wednesday: 10:30 AM–8 PM Thursday: 10:30 AM–8 PM Friday: 10:30 AM–8 PM Saturday:    10:30 AM–8 PM Sunday: 11 AM–6 PM", website: "https://www.eatbreadless.com"),
        Store(storeName: "Ima", address: "4870 Cass Ave, Detroit, MI", phoneNumber: "313-883-9788", latitude:  42.355855, longitude: -83.066391, image:"Ima", bio: "Ima (pronounced ee-ma) is an award-winning restaurant serving a variety of Japanese-inspired noodles, soups, rice bowls, sandwiches, and snacks in a cozy neighborhood environment with a curated selection of beer, wine, sake and house punches. Ima’s dynamic menu was created by Chef-Owner Michael Ransom and is a culmination of his French culinary training and love for Japanese cuisine. Constructed with an awareness and respect for the diverse dietary needs of our Metro-Detroit community. Carefully crafted meats, seafood and broths are featured alongside a variety of plant-based options for vegetarians, vegan and gluten-free diets.", hours: "Monday: 11 AM–10 PM Tuesday: 11 AM–10 PM Wednesday: 11 AM–10 PM Thursday: 11 AM–10 PM Friday: 11 AM–11 PM Saturday: 11 AM–11 PM Sunday: 12–10 PM", website: "https://imanoodles.com"),
        Store(storeName: "Joe Louis Southern Kitchen", address: "6549 Woodward Ave, Detroit MI", phoneNumber: "313-788-8338", latitude:   42.369730, longitude: -83.073387, image: "jlskitchen", bio: "Joe louis southern kitchen is a great place for breakfast, lunch, and brunch!", hours: "Monday: 9 AM–3 PM Tuesday: 9 AM–3 PM Wednesday: 8 AM–4 PM Thursday: 8 AM–4 PM Friday: 8 AM–4 PM Saturday: 8 AM–4 PM Sunday: 8 AM–4 PM", website: "https://joelouissouthernkitchen.com"),
        Store(storeName: "Trap Vegan", address: "20198 Livernois, Detroit, MI", phoneNumber: "313-340-2988", latitude: 42.443032, longitude: -83.141526, image: "trapvegan", bio: "Trap Vegan features a 100% plant-based menu and is home to the best smoothies in Detroit. Trap Vegan is a family-owned and operated brand, you can taste the difference. We assure you that our cleaning measures are unmatched, we cook with soul and you will be able to taste the sauce on our amazing burgers. Stop in and give us a try we can guarantee you will be", hours: "Monday: 11 AM–8 PM Tuesday: 11 AM–8 PM Wednesday: 11 AM–8 PM Thursday: 11 AM–8 PM Friday: 11 AM–8 PM Saturday: 11 AM–8 PM Sunday: Closed", website: "https://www.trapvegan.com"),
        Store(storeName: "Armando's", address: "4242 Vernor Hwy, Detroit, MI", phoneNumber: "313-554-0666", latitude: 42.320775, longitude: -83.094836, image: "armandos", bio: "Armando’s is located in the heart of Mexicantown and is an anchor to the thriving Southwest Detroit community. Established in 1967 by their friend Armando Galan, the Hernandez family took over in 1986 and has proudly operated Armando’s since. We quickly gained a loyal clientele of diners who return, generation after generation, craving the restaurant’s signature dishes and warm atmosphere. The Hernandez family looks forward to seeing you soon!", hours: "Monday: Closed Tuesday: 10:30 AM–10 PM Wednesday: 10:30 AM–10 PM Thursday: 10:30 AM–10 PM Friday: 10:30 AM–10 PM Saturday: 10:30 AM–10 PM Sunday: 10:30 AM–10 PM", website: "https://armandosmexicantown.com"),
        Store(storeName: "Baobab Fare", address: "6568 Woodward Ave Suite 100, Detroit MI", phoneNumber: "313-265-3093", latitude: 42.370064, longitude: -83.072769, image: "baobab", bio: "More than a restaurant, Baobab Fare is a gathering space where all are welcome and embraced. Baobab Fare is an East African restaurant offering food that honors traditional dishes served in Burundi, the birthplace of husband-and-wife owners Nadia Nijimbere and Hamissi Mamba. The restaurant resides at the intersection of Woodward Avenue and Grand Boulevard and is a safe space for immigrants and Detroiters alike and a community space where all are welcomed and embraced. Mamba and Nijimbere are passionate about giving back to their native Burundi, and the market at Baobab Fare stocks coffee beans imported from Burundi and roasted in Detroit, in addition to other items from artists and makers that reside in both locations. You are not only our guest you are our family. Thank you for being here as we share our East African fare, culture, and community.", hours: "Monday: Closed Tuesday: 11 AM–9 PM Wednesday: 11 AM–9 PM Thursday: 11 AM–9 PM Friday: 11 AM–9 PM Saturday: 11 AM–9 PM Sunday: 11 AM–8 PM", website: "https://baobabfare.com"),
        Store(storeName: "Central Kitchen + Bar", address: "660 Woodward Ave #4A, Detroit, MI", phoneNumber: "313-963-9000", latitude: 42.331049, longitude: -83.045710, image: "ckbar", bio: "Central Kitchen + Bar features contemporary American cuisine in a casual and welcoming environment. With recognizable bar food serving as the foundation for our menu, our executive chef has given a new spin to the classics, upgrading them with inventive taste combinations using local and seasonal ingredients. Guests will be pleased to see that we have something that appeals to everyone. From the selection of our purveyors of produce and meats, to creating our own coffee blend with the team from Zingerman's, we are committed to offering our guests the highest quality products from start to finish.", hours: "Monday: Closed Tuesday: Closed Wednesday: 12–10 PM Thursday: 12–10 PM Friday: 12–10 PM Saturday: 12–11 PM Sunday: 11 AM–4 PM", website: "https://www.centraldetroit.com"),
        Store(storeName: "Detroit Vegan Soul", address: "19614 Grand River Ave, Detroit, MI", phoneNumber: "313-766-5728", latitude: 42.407845, longitude: -83.235172, image: "vegansoul", bio: "Detroit Vegan Soul helps people live healthier lives by providing great-tasting, high-quality, nutritious vegan food that appeals to everyone while at the same time doing our part to support a sustainable earth. Based in Detroit, our national chain of restaurants in major urban markets across the US will change the perception of veganism and create a culture that understands the healing power of plant-based food. Our fun, warm, engaging staff will create experiences that ignite people’s curiosity and passion for discovering the benefits of flavorful, transformative plant-based food. We will create opportunities for staff not only to grow professionally but to evolve into more caring human beings.", hours: "Monday: Closed Tuesday: Closed Wednesday: 12–6 PM Thursday: 12–6 PM Friday: 12–6 PM Saturday: Closed Sunday: Closed", website: "https://www.detroitvegansoul.com"),
        Store(storeName: "Vicente's Cuban Cuisine", address: "1250 Library St, Detroit, MI", phoneNumber: "313-962-8800", latitude: 42.334476, longitude: -83.047083, image: "vicentes", bio: "Great food, special wine dinners, full service catering, large parties, entertainment, and dancing. Great drinks too! Our goal has been to share the cuban experience with metro detroit. This a a family owned, and operated business. Built from scratch in 2005, we have been a part of detroit ever since. Events/Relations: Superbowl detroit, Jazz Fest, City Fest, Bravo Bravo, Marh of Dimes, NCO 5k, HBA, SBA, Detroit Regional Chamber, Metro Convention & Visitors, DDA.", hours: "Monday: 11 AM–10 PM Tuesday: 11 AM–10 PM Wednesday: 11 AM–10 PM Thursday: 11 AM–10 PM Friday: 11 AM–11 PM Saturday: 11 AM–11 PM Sunday: 12–9 PM", website: "https://www.vicentesdetroit.com"),
        Store(storeName: "Dime Store", address: "719 Griswold St, Detroit, MI", phoneNumber: "313-962-9106", latitude: 42.331037, longitude: -83.047902, image: "dimestore", bio: "Dime Store is an American Brunch Bar in downtown Detroit, Michigan, specializing in breakfast, lunch, brunch and booze. We use the freshest, high quality ingredients to handcraft distinctive dishes in a friendly, casual environment. From our Cheesesteak Benny and Duck Bop Hash, to our Bacon Parm & Truffle Fries and General's Chicken Sandwich, our menu is a unique blend of scratch-made traditional favorites and creative combinations. Thirsty for more? Our drink menu is as varied as our food, including daytime specialties like locally-roasted Zingerman's coffee and Rishi organic teas, as well as a full bar serving Michigan craft beer, wine and cocktails.", hours: "Monday: 8 AM–3 PM Tuesday: 8 AM–3 PM Wednesday: Closed Thursday: 8 AM–3 PM Friday: 8 AM–3 PM Saturday: 8 AM–3 PM Sunday: 8 AM–3 PM", website: "https://www.eatdimestore.com"),
        Store(storeName: "Mangonadas Del Barrio", address: "4029 Vernor Hwy, Detroit, MI", phoneNumber: "313-789-7806", latitude: 42.321463, longitude: -83.092404, image: "mangonadas", bio: "Mangonadas del Barrio was born from the Hernandez Martinez family who has since created their own American dream. From selling mangos on a street corner, to learning about the mouthwatering dessert of mangonadas, we have grown our business into the must stop shop for Mexican flavors! Primarily focused on delicious snacks and desserts, the traditional flare is in every bite.  We have now grown to multiple locations throughout Detroit and added new menu items like hot cheetos con queso, banana splits, and our unique ‘Doriloco’. In the coming months, we plan to expand the menu by adding meal options including: tacos, burritos, and other Mexican dishes.", hours: "Monday: 11 AM–8:30 PM Tuesday: 11 AM–8:30 PM Wednesday: 11 AM–8:30 PM Thursday: 11 AM–8:30 PM Friday: 11 AM–8:30 PM Saturday: 11 AM–8:30 PM Sunday: 11 AM–8:30 PM", website: "https://mangonadasdelbarriodetroit.com"),
        Store(storeName: "Yum Village", address: "6500 Woodward Ave, Detroit, MI", phoneNumber: "313-334-6099", latitude: 42.369322, longitude: -83.072432, image: "yum village", bio: "YumVillage Afro-Caribbean Eats They smoke the Chicken. They have the Jollof. They have the Suya. They have the Maafe. They have the Egusi. Everything. Everything. And they have Fufu? Food items sold for delivery, takeout and dine-in are inspired by traditional West African and Caribbean dishes. Retail products include dry rubs, traditional spices, sauces, marinades, coffee and loose tea. Head chef Godwin Ihentuge combines the traditional Nigerian dishes he prepared with his father growing up, with cooking styles and techniques learned in years of working side by side renowned chefs from across metro-Detroit. Delivery, retail and fast-casual dining.", hours: "Monday: 11 AM–8 PM Tuesday: 11 AM–8 PM Wednesday: 11 AM–8 PM Thursday: 11 AM–8 PM Friday: 11 AM–8 PM Saturday: 11 AM–8 PM Sunday: Closed", website: "https://www.yumvillage.com"),
        Store(storeName: "El Barzon Restuaurante", address: "3710 Junction Ave, Detroit, MI", phoneNumber: "313-894-2070", latitude: 42.330756, longitude: -83.111026, image: "el barzon", bio: "Mixing the best of fine Italian and Mexican cuisine with affectionate attention to detail and gracious service, Chef Norberto Garita and his top notch support crew established a stylish, open floor plan gives way to a multifaceted, flavorful eating experience with a variety of delights offered with a delicate touch and served by a friendly staff.", hours: "Monday: Closed Tuesday: 5–9 PM Wednesday: 5–9 PM Thursday: 5–9 PM Friday: 5–10 PM Saturday: 4–10 PM Sunday: 5–8 PM", website: "https://elbarzonrestaurant.com"),
        Store(storeName: "The Kitchen", address: "6529 Woodward Ave, Detroit, MI", phoneNumber: "313-462-4184", latitude: 42.369141, longitude: -83.072945, image: "the kitchen", bio: "Detroit's Only Demonstration Kitchen and Culinary Shared Space offers dishes of zestful and earth-conscious meals that mindfully immerses vegan and meat eaters into blissful co-existence. The Kitchen, offers an intimate twenty two-seat kitchen classroom, where guests will come to enjoy chef tastings and culinary demonstrations/cooking classes in a contemporary atmosphere, as well as a state of the art shared use commercially licensed kitchen for licensed culinary experts without physical brick and mortar locations.  The Kitchen provides a platform for learning, experimentation, menu tasting and private dining events focused on celebrating the art of cooking, drinking, and gathering in The Kitchen with the chef.", hours: "Monday: Closed Tuesday: Closed Wednesday: 10 AM–5 PM Thursday: 10 AM–5 PM Friday: 10 AM–9 PM Saturday: 10 AM–5 PM Sunday: Closed", website: "https://www.thekitchenbycwq.com"),
//        Store(storeName: "El Rancho Resturant", address: "5900 Vernor Hwy, Detroit, MI", phoneNumber: "313-843-2151", latitude: 42.316375, longitude: -83.105591, image: "el rancho", bio: "We proudly serve the most authentic Mexican cuisine possible, freshly prepared food from our dedicated kitchen staff committed to our delicious recipes ranging from the region of San Luis Potosi, Mexico. Our Motto: “EL SABOR QUE TU QUIERES” translates to The Flavor You Crave! We are focused in providing our customers a warm family Mexican dinning experience. 1983 is the year EL Rancho Mexican Restaurant opened its door for business in the heart of Southwest Detroit better know as Mexican Town.", hours: "Monday: 8 AM–4 PM Tuesday: 8 AM–8 PM Wednesday: 10 AM–8 PM Thursday: 10 AM–8 PM Friday: 10 AM–9 PM Saturday: 8 AM–10 PM Sunday: 8 AM–7 PM", website: ""),
        Store(storeName: "The Turkey Grill", address: "8290 Woodward Ave, Detroit, MI", phoneNumber: "313-872-4624", latitude: 42.376254, longitude: -83.077099, image: "the turkey grill", bio: "When you walk into The Turkey Grill, you breathe in the aroma of whole smoked and fried turkey, seafood gumbo, and smoked turkey breast sandwiches carved from the bone. Deep, smokey flavors from hand-selected hardwoods, vibrant herbs, and fiery spices make up our famous recipes. We use fresh Michigan produce to cook up our made-to-order dishes, and as our name indicates, turkey's the star of our restaurant, and we cook it up in every which way possible. Come see why we've been awarded Best Soul Food in Detroit for two years straight.", hours: "Monday: 9 AM–9 PM Tuesday: 9 AM–9 PM Wednesday: 9 AM–9 PM Thursday: 9 AM–9 PM Friday: 9 AM–9 PM Saturday: 9 AM–9 PM Sunday: 9 AM–9 PM", website: "https://theturkeygrill.com"),
        Store(storeName: "Parks Old Style Bar", address: "7444 Beaubien St, Detroit, MI", phoneNumber: "313-873-7444", latitude: 42.373777, longitude: -83.068233, image: "parks old style", bio: "Parks Old Style Bar-B-Q was founded in May, 1964 by Edward Terry Parks, a former postal worker and entrepreneur and Verna Parks, a Detroit Public Schools counselor, as a sole proprietorship. The Company was incorporated in November, 1977. The Parks' purchased the property at 500 Custer St. and built the building that is now known as 7444 Beaubien St. The building has been enlarged and evolved into its current configuration. The senior Parks' were joined in the business by their two sons, Roderick and Phillip, and a dedicated staff, who followed Terry from Youngs' Bar-B-Q, all of whom worked tirelessly to push the fledgling business forward.", hours: "Monday: Closed Tuesday: 11 AM–8 PM Wednesday: 11 AM–8 PM Thursday: 11 AM–8 PM Friday: 11 AM–9 PM Saturday: 11 AM–9 PM Sunday: 1–8 PM", website: "https://www.parksoldstylebar-b-q.com"),
        Store(storeName: "Estella Cuisine", address: "78 Cadillac Sq, Detroit, MI", phoneNumber: "313-288-2206", latitude: 42.331543, longitude: -83.045519, image: "estella", bio: "Chef, food educator, and owner of Estella's Vegan Cuisine and Desserts, Chantele Jones, has made it her mission to spread the plant-based lifestyle and it's many health benefits. She holds a degree in Culinary Arts and her goal is to dispel myths that following a vegan diet is expensive, complicated, and flavorless.", hours: "Monday: 12–8 PM Tuesday: 12–8 PM Wednesday: 12–8 PM Thursday: Closed Friday: Closed Saturday: Closed Sunday: 12–8 PM", website: "https://www.estellascuisine.com"),
        Store(storeName: "Anita's Kitchen", address: "150 W Jefferson Ave, Detroit, MI", phoneNumber: "313-771-3030", latitude: 42.328925, longitude: -83.046105, image: "anitaskitchen", bio: "Lebanese restaurant serving fresh & health-minded family recipes over the counter; including bowls, sandwiches, salads, and baked goods.Located in the heart of Detroit's downtown business district, AKtakeaway is a fast-casual restaurant offering fresh breakfast and lunch with an authentic Lebanese flair. True to the founding flavors of our flagship restaurant, Anita's Kitchen, AKtakeaway is home to healthy, sustainable choices including antibiotic free, vegetarian, vegan, gluten free and Halal options. Established in 1981.", hours: "Monday: 11 AM–3 PM Tuesday: 11 AM–3 PM Wednesday: 11 AM–3 PM Thursday: 11 AM–3 PM Friday: 11 AM–3 PM Saturday: Closed Sunday: Closed", website: "https://anitaskitchen.com/ak-detroit/"),
        Store(storeName: "The Clique Diner", address: "1362 E Jefferson Ave, Detroit, MI", phoneNumber: "313-259-3093", latitude: 42.333331, longitude: -83.033495, image: "clique", bio: "The Clique, on East Jefferson a mile from the Renaissance Center, is a restaurant a city can be proud of. It gives Detroit a working man’s standard of what a great breakfast place should look like. With fair prices, a nice view when sitting in the atrium and delicious food, The Clique diner is one of Detroit’s best-known breakfast meeting spots, attracting a variety of patrons for years, including some of Detroit’s most prominent movers and shakers. Opened in 1968, the restaurant has lunch-counter seating, plus booths in a greenhouse-style section that was added in front. Service is friendly and parking is free in the adjacent lot.", hours: "Monday: Closed Tuesday: 7 AM–1 PM Wednesday: 7 AM–1 PM Thursday: 7 AM–1 PM Friday: 7 AM–1 PM Saturday: 7 AM–1 PM Sunday: Closed", website: "https://thecliquediner.com"),
        Store(storeName: "Savannah Blue", address: "1431 Times Square", phoneNumber: "313-926-0783", latitude: 42.334129, longitude: -83.052235, image: "savannah blue2", bio: "Savannahblue Is Gathering Place Where People Can Enjoy A Delicious Meal In Our Dining Room Or Simply Meet Up To Relax And Converse Over Drinks And Appetizers At The Bar In Our Living Room. Our Menu Offers Contemporary Northern Soul Food– Fresh Ingredients Prepared With Southern Flavors, Presented With Detroit Style. Savannahblue Boasts A Delicious Wine List And The Cocktails Are Tasty And Made With Fresh Squeezed Juices.  The Space Is Cool, Comfortable And Inviting And  Is Fully Complemented By A Rich And Soulful Soundtrack (The Sounds Of Savannah).  And By The Way…Hospitality Is Our Special Sauce.", hours: "Monday: Closed Tuesday: 4–10 PM Wednesday: 4–10 PM Thursday: 4–10 PM Friday: 4–11 PM Saturday: 4–11 PM Sunday: 3–8 PM", website: "https://savannahbluedetroit.com"),
        Store(storeName: "Sloppy Crab", address: "519 Jefferson Ave, Detroit, MI", phoneNumber: "313-263-1605", latitude: 42.331264, longitude: -83.039598, image: "sloppy crab", bio: "Premium Seafood Restaurant and Bar featuring handcrafted cocktails with Signature Entree selections with an urban flare located in downtown Detroit across from the Renaissance Center. we offer a patio depending if weather permits. we offer Sunday brunch,/ buffet , comedy night every other Tuesdays.", hours: "Monday: 12–11 PM Tuesday: 12 PM–1 AM Wednesday: 12 PM–1 AM Thursday: 12 PM–1 AM Friday: 12 PM–2 AM Saturday: 12 PM–2 AM Sunday: 12 PM–1 AM", website: "https://sloppycrabdet.com"),
        Store(storeName: "Seva Resturant", address: "66 E Forest Ave, Detroit, MI", phoneNumber: "313-974-6661", latitude: 42.354931, longitude: -83.061493, image: "seva", bio: "We offer a completely vegetarian menu with plenty of vegan and gluten free options. House-made desserts. Full bar featuring craft cocktails utilizing fresh juices and local spirits. Fresh juice bar & espresso bar.", hours: "Monday: 11 AM–10 PM Tuesday: 11 AM–10 PM Wednesday: 11 AM–10 PM Thursday: 11 AM–10 PM Friday: 11 AM–10 PM Saturday: 11 AM–10 PM Sunday: Closed", website: "https://sevarestaurant.com"),

        //        26 businesses
        
    ]

