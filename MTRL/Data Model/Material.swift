//
//  Material.swift
//  MTRL
//
//  Created by Danny Capua on 1/14/24.
//

import Foundation

struct Material: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let urlString: String
    let description: String
    let natural: String
}

struct Data {
    
    static let sampleMaterial = Material(name: "Merino Wool",
                                         imageName: "merino-wool",
                                         urlString: "https://www.apple.com",
                                         description: "Merino wool, renowned for its exceptional softness and luxurious feel, is a natural fiber sourced from Merino sheep. Praised for its versatility, Merino wool offers unparalleled warmth in colder climates while remaining breathable and moisture-wicking, making it ideal for both outdoor adventures and everyday wear. Its fine fibers also provide superior insulation, ensuring comfort in various conditions, from chilly mornings to brisk evenings. Discover the unparalleled comfort and performance of Merino wool—a timeless choice for those who prioritize both style and functionality.",
                                         natural: "Natural")
    
    static let materials = [merinoWool, polyester, cotton, goretex, nylon, silk, cordura, spandex, fleece, canvas]
    
    static let merinoWool = Material(
        name: "Merino Wool",
        imageName: "merino-wool",
        urlString: "https://www.apple.com",
        description: "Merino wool, renowned for its exceptional softness and luxurious feel, is a natural fiber sourced from Merino sheep. Praised for its versatility, Merino wool offers unparalleled warmth in colder climates while remaining breathable and moisture-wicking, making it ideal for both outdoor adventures and everyday wear. Its fine fibers also provide superior insulation, ensuring comfort in various conditions, from chilly mornings to brisk evenings. Discover the unparalleled comfort and performance of Merino wool—a timeless choice for those who prioritize both style and functionality.",
        natural: "Natural")
    
    static let polyester = Material(
        name: "Polyester",
        imageName: "polyester",
        urlString: "https://www.apple.com",
        description: "Polyester, hailed for its durability and versatility, has revolutionized the textile industry. This synthetic polymer fabric offers a myriad of benefits, from its resistance to wrinkles and shrinking to its quick-drying properties, making it a favorite for everyday wear and active lifestyles alike. Whether in fashion, home furnishings, or technical textiles, polyester's ability to hold vibrant colors and retain its shape ensures enduring quality. Embraced for its affordability and ease of care, polyester continues to be a staple in the fabric world, blending practicality with style for the demands of modern living.",
        natural: "Synthetic")
    
    static let cotton = Material(
        name: "Cotton",
        imageName: "cotton",
        urlString: "https://www.apple.com",
        description: "Cotton, a classic and beloved fabric, embodies the essence of comfort and versatility. Sourced from the fluffy fibers surrounding the seeds of the cotton plant, this natural material is renowned for its breathability, softness, and hypoallergenic properties. From cozy T-shirts to luxurious bed linens, cotton's gentle touch makes it a go-to choice for everyday essentials and luxurious indulgences alike. Its absorbent nature wicks away moisture, keeping you cool in summer and warm in winter. With a rich history spanning centuries, cotton remains a timeless favorite, seamlessly blending tradition with modern elegance for a fabric that never goes out of style.",
        natural: "Natural")
    
    static let goretex = Material(
        name: "Gore-Tex",
        imageName: "goretex",
        urlString: "https://www.apple.com",
        description: "Gore-Tex stands as a pinnacle in outdoor fabric technology, renowned for its unparalleled performance in harsh conditions. This breathable waterproof membrane, crafted with a micro-porous structure, effectively shields against rain and snow while allowing moisture vapor to escape, keeping adventurers dry and comfortable during intense outdoor pursuits. Trusted by outdoor enthusiasts, Gore-Tex fabrics are engineered to withstand the rigors of the trail, offering exceptional durability and weather protection without compromising breathability. From hiking boots to jackets, Gore-Tex sets the standard for high-performance outdoor gear, empowering adventurers to explore with confidence in any environment.",
        natural: "Synthetic")
    
    static let nylon = Material(
        name: "Nylon",
        imageName: "nylon",
        urlString: "https://www.apple.com",
        description: "Nylon stands tall as a cornerstone material in the realm of outdoor gear, revered for its exceptional strength-to-weight ratio and versatility. Originally developed as a synthetic alternative to silk during World War II, nylon has since become a staple in the creation of durable and lightweight outdoor equipment. From rugged backpacks and resilient tents to sleek outerwear, nylon's inherent resistance to abrasion and tearing makes it an ideal choice for enduring the demands of the trail. Its water-repellent properties provide added protection against the elements, ensuring adventurers stay dry and comfortable during their outdoor pursuits. Whether traversing rocky terrain or braving unpredictable weather, nylon-equipped gear proves indispensable for those seeking reliable performance in the great outdoors.",
        natural: "Synthetic")
    
    static let silk = Material(
        name: "Silk",
        imageName: "silk",
        urlString: "https://www.apple.com",
        description: "Renowned for its unparalleled smoothness and luxurious feel, silk is a fabric of exquisite beauty and unparalleled elegance. Harvested from the silkworm's delicate cocoon, this natural fiber has been cherished for millennia for its lustrous sheen, soft texture, and graceful drape. Whether adorning regal evening gowns, sumptuous bedding, or delicate scarves, silk's timeless allure transcends fashion trends and cultural boundaries. Beyond its aesthetic appeal, silk boasts remarkable temperature-regulating properties, keeping wearers cool in summer and warm in winter. Embodying a rare blend of opulence and practicality, silk remains a symbol of refinement, offering an indulgent touch to every aspect of life.",
        natural: "Natural")
    
    static let cordura = Material(
        name: "Cordura",
        imageName: "cordura",
        urlString: "https://www.apple.com",
        description: "Cordura, a name synonymous with strength and resilience, stands as a beacon of durability in the world of outdoor gear. Engineered with high-tenacity nylon fibers, Cordura fabrics are crafted to withstand the harshest of environments, from rugged mountain trails to bustling city streets. Renowned for its exceptional abrasion resistance and tear strength, Cordura is the go-to choice for backpacks, luggage, and apparel designed to endure the rigors of exploration. Its rugged reliability ensures that adventurers can traverse the toughest terrains with confidence, while its versatility seamlessly blends performance with style. For those who seek gear that can keep pace with their adventurous spirit, Cordura is the steadfast companion that never falters.",
        natural: "Synthetic")
    
    static let spandex = Material(
        name: "Spandex",
        imageName: "spandex",
        urlString: "https://www.apple.com",
        description: "Spandex, often dubbed the \"miracle fiber,\" revolutionizes the world of activewear with its remarkable elasticity and form-fitting properties. This synthetic fabric, known for its exceptional stretchiness and resilience, provides unparalleled freedom of movement, making it an essential component in athletic apparel, swimwear, and form-fitting garments. By seamlessly adapting to the body's contours, spandex offers a second-skin sensation, enhancing both performance and comfort during intense physical activities. Its moisture-wicking capabilities further contribute to a dry and breathable experience, ensuring wearers can push their limits without constraints. Whether in the gym, on the track, or in everyday wear, spandex empowers individuals to move with confidence and agility, embodying the epitome of flexibility and functionality in modern textiles.",
        natural: "Synthetic")
    
    static let fleece = Material(
        name: "Fleece",
        imageName: "fleece",
        urlString: "https://www.apple.com",
        description: "Fleece, the quintessential cold-weather companion, offers a plush embrace against the chill of the great outdoors. Crafted from soft polyester fibers, this versatile fabric provides exceptional warmth and insulation without the bulk, making it a favorite choice for jackets, sweaters, and cozy layers. Fleece's lightweight and breathable nature ensure comfort during active pursuits, while its quick-drying properties wick away moisture, keeping adventurers dry and cozy in damp conditions. Whether hiking through autumn foliage, enjoying a snowy ski trip, or simply lounging fireside, fleece wraps wearers in a cocoon of comfort, inviting them to embrace the beauty of nature in all its wintry wonder.",
        natural: "Synthetic")
    
    static let canvas = Material(
        name: "Canvas",
        imageName: "canvas",
        urlString: "https://www.apple.com",
        description: "Canvas, a rugged and enduring fabric, has long been cherished for its versatility and durability. Originally crafted from hemp fibers, modern canvas is typically made from cotton or a cotton blend, woven tightly to withstand the elements and heavy use. This sturdy material finds its place in a variety of applications, from sturdy tote bags and durable backpacks to reliable tents and hard-wearing workwear. Known for its resilience and strength, canvas stands the test of time, offering a reliable shield against wear and tear in both urban and outdoor environments. With a nod to its roots in art and craftsmanship, canvas continues to be celebrated for its timeless appeal and practical utility, embodying a sense of enduring quality in every stitch.",
        natural: "Natural")
}
