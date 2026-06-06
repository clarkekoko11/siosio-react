import React from 'react';
import { Link } from 'react-router-dom';
import { motion } from 'framer-motion';

export default function HomePage() {
  const fadeInUp = {
    hidden: { opacity: 0, y: 20 },
    visible: { opacity: 1, y: 0, transition: { duration: 0.8, ease: [0.25, 0.46, 0.45, 0.94] } }
  };

  const staggerContainer = {
    hidden: { opacity: 0 },
    visible: {
      opacity: 1,
      transition: { staggerChildren: 0.15 }
    }
  };

  return (
    <main className="pt-24 bg-sio-bg min-h-screen text-sio-text font-sans selection:bg-sio-yellow selection:text-sio-dark">

      {/* --- HERO SECTION --- */}
      <section className="relative w-full min-h-[85vh] flex items-center justify-center overflow-hidden border-b-[0.5px] border-sio-border bg-sio-surface">
        <div className="absolute inset-0 bg-[url('/images/Homebg.jpg')] bg-cover bg-center opacity-40 z-0 mix-blend-multiply"></div>
        <div className="absolute inset-0 bg-sio-surface/50 backdrop-blur-sm z-0"></div>
        <div className="absolute inset-0 bg-gradient-to-b from-transparent via-sio-surface/50 to-sio-bg z-0"></div>
        
        {/* Decorative background blob for image */}
        <div className="absolute right-0 top-1/4 w-1/3 h-1/2 bg-sio-yellow/10 blur-[100px] rounded-full z-0"></div>

        <div className="container-custom relative z-10 flex flex-col md:flex-row items-center justify-between gap-12 px-4 py-20">
          
          {/* TEXT CONTENT (Left) */}
          <motion.div
            initial="hidden"
            animate="visible"
            variants={fadeInUp}
            className="w-full md:w-1/2 text-center md:text-left"
          >
            <div className="mb-8">
              <span className="inline-block bg-sio-surface text-sio-yellow px-8 py-3 rounded-none font-medium text-[0.65rem] tracking-[0.2em] uppercase border-[0.5px] border-sio-yellow shadow-sm mb-6 transition-colors hover:bg-sio-yellow hover:text-sio-dark">
                The Heritage Collection
              </span>
            </div>

            <h1 className="text-5xl lg:text-6xl xl:text-7xl font-heading font-semibold text-sio-text mb-6 leading-[1.1] tracking-tight drop-shadow-sm">
              The medyo <span className="text-sio-yellow italic">NO.1</span> <br className="hidden md:block" />
              Siomai and Siopao Brand <br className="hidden md:block" />
              in the Philippines
            </h1>

            <p className="text-xl md:text-2xl text-sio-text-muted mb-12 font-medium max-w-xl mx-auto md:mx-0 leading-relaxed tracking-wide">
              Sioper Sarap, Sioper Affordable pa!
            </p>

            <div className="flex flex-col sm:flex-row gap-6 justify-center md:justify-start items-center mt-8">
              <Link to="/shop" className="btn-primary text-xs px-10 py-4 uppercase tracking-widest w-full sm:w-auto text-center flex items-center justify-center shadow-lg hover:shadow-xl hover:-translate-y-1 transition-all duration-300">
                Explore Menu <i className="bi bi-arrow-right ml-3 text-lg"></i>
              </Link>
              <Link to="/about" className="btn-secondary text-xs px-10 py-4 uppercase tracking-widest w-full sm:w-auto text-center flex items-center justify-center">
                Our Heritage
              </Link>
            </div>
          </motion.div>

          {/* IMAGE CONTENT (Right) */}
          <motion.div
            initial={{ opacity: 0, x: 50, scale: 0.9 }}
            animate={{ opacity: 1, x: 0, scale: 1 }}
            transition={{ duration: 1, delay: 0.3, ease: [0.25, 0.46, 0.45, 0.94] }}
            className="w-full md:w-1/2 flex justify-center md:justify-end mt-12 md:mt-0 relative"
          >
            <motion.img 
              animate={{ y: [-15, 10, -15] }}
              transition={{ repeat: Infinity, duration: 8, ease: "easeInOut" }}
              src="/images/Siomai.png" 
              alt="Premium SioSio Siomai" 
              className="w-full max-w-md lg:max-w-lg xl:max-w-2xl object-contain drop-shadow-[0_20px_50px_rgba(0,0,0,0.25)] relative z-10"
            />
          </motion.div>

        </div>
      </section>

      {/* --- SIOMAI SECTION --- */}
      <section id="siomai-section" className="py-32 bg-sio-bg border-b-[0.5px] border-sio-border">
        <div className="container-custom">
          <motion.div
            initial="hidden"
            whileInView="visible"
            viewport={{ once: true, margin: "-100px" }}
            variants={fadeInUp}
            className="flex flex-col md:flex-row justify-between items-end mb-20 border-b-[0.5px] border-sio-border pb-8"
          >
            <div>
              <span className="text-[0.65rem] uppercase tracking-[0.2em] text-sio-yellow mb-2 block">Signature Collection</span>
              <h2 className="text-4xl md:text-5xl font-heading text-sio-text italic">Premium <span className="text-sio-yellow">Sio</span>mai</h2>
            </div>
            <Link to="/shop" className="text-[0.65rem] uppercase tracking-widest text-sio-text-muted hover:text-sio-yellow transition-colors mt-6 md:mt-0 flex items-center">
              View All <i className="bi bi-arrow-right ml-3"></i>
            </Link>
          </motion.div>

          <motion.div
            className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-x-12 gap-y-16"
            initial="hidden"
            whileInView="visible"
            viewport={{ once: true, margin: "-50px" }}
            variants={staggerContainer}
          >
            {[
              { name: 'Pork Siomai', img: 'https://media.istockphoto.com/id/2182583656/photo/chinese-steamed-dumpling-or-shumai-in-japanese-language-meatball-dumpling-with-wanton-skin.jpg?s=612x612&w=0&k=20&c=0K7_ee0dwfAZhcZZajZRSv8uTifXZhG6LVmlKnSe-0U=' },
              { name: 'Chicken Siomai', img: 'https://media.istockphoto.com/id/1336438874/photo/delicious-dim-sum-home-made-chinese-dumplings-served-on-plate.jpg?s=612x612&w=0&k=20&c=11KB0bXoZeMrlzaHN2q9aZq8kqtdvp-d4Oggc2TF8M4=' },
              { name: 'Beef Siomai', img: 'https://media.istockphoto.com/id/2189370578/photo/delicious-shumai-shumay-siomay-chicken-in-bowl-snack-menu.jpg?s=612x612&w=0&k=20&c=hD4kuZsiGIjgyUPq-seqv229pFE43CnS0Do3EH_2E_Y=' },
              { name: 'Tuna Siomai', img: 'https://media.istockphoto.com/id/1084916088/photo/close-up-cooking-homemade-shumai.jpg?s=612x612&w=0&k=20&c=M1RyWV62MACQffBC40UzZ_h-BsXOj4bkaMBrxnbMTzc=' },
              { name: 'Shark\'s Fin Siomai', img: 'https://media.istockphoto.com/id/1330456626/photo/steamed-shark-fin-dumplings-served-with-chili-garlic-oil-and-calamansi.jpg?s=612x612&w=0&k=20&c=9Zi1JmbwvYtIlZJqZb6tHOVC21rS-IbwZXS-IeflE30=' },
              { name: 'Japanese Siomai', img: 'https://media.istockphoto.com/id/1221287744/photo/ground-pork-with-crab-stick-wrapped-in-nori.jpg?s=612x612&w=0&k=20&c=Rniq7tdyCqVZHpwngsbzOk1dG1u8pTEeUDE8arsfOUY=' }
            ].map((flavor, idx) => (
              <motion.div key={idx} variants={fadeInUp} className="group cursor-pointer flex flex-col">
                <div className="w-full aspect-[4/5] overflow-hidden bg-sio-surface mb-6 border-[0.5px] border-sio-border relative">
                  <div className="absolute inset-0 bg-sio-yellow/10 opacity-0 group-hover:opacity-100 transition-opacity duration-500 z-10 mix-blend-multiply"></div>
                  <img src={flavor.img} alt={flavor.name} className="w-full h-full object-cover filter grayscale-[50%] group-hover:grayscale-[20%] transition-all duration-700 group-hover:scale-105" />
                </div>
                <div className="flex flex-col flex-grow text-center">
                  <span className="text-[0.65rem] uppercase tracking-[0.2em] text-sio-text-muted mb-3 block">Artisan</span>
                  <h3 className="text-2xl font-heading italic text-sio-text mb-2 group-hover:text-sio-yellow transition-colors">
                    {flavor.name}
                  </h3>
                </div>
              </motion.div>
            ))}
          </motion.div>
        </div>
      </section>

      {/* --- SIOPAO SECTION --- */}
      <section id="siopao-section" className="py-32 bg-sio-surface">
        <div className="container-custom">
          <motion.div
            initial="hidden"
            whileInView="visible"
            viewport={{ once: true, margin: "-100px" }}
            variants={fadeInUp}
            className="flex flex-col md:flex-row justify-between items-end mb-20 border-b-[0.5px] border-sio-border pb-8"
          >
            <div>
              <span className="text-[0.65rem] uppercase tracking-[0.2em] text-sio-yellow mb-2 block">Heritage Recipe</span>
              <h2 className="text-4xl md:text-5xl font-heading text-sio-text italic">Artisan <span className="text-sio-yellow">Sio</span>pao</h2>
            </div>
            <Link to="/shop" className="text-[0.65rem] uppercase tracking-widest text-sio-text-muted hover:text-sio-yellow transition-colors mt-6 md:mt-0 flex items-center">
              View All <i className="bi bi-arrow-right ml-3"></i>
            </Link>
          </motion.div>

          <motion.div
            className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-x-12 gap-y-16"
            initial="hidden"
            whileInView="visible"
            viewport={{ once: true, margin: "-50px" }}
            variants={staggerContainer}
          >
            {[
              { name: 'Asado Siopao', img: 'https://media.istockphoto.com/id/1163708923/photo/hong-kong-style-chicken-char-siew-in-classic-polo-bun-polo-bun-or-is-a-kind-of-crunchy-and.jpg?s=612x612&w=0&k=20&c=R9DC49-UsxYUPlImX6O47LQyafOu1Cp5rNxp3XifFNI=' },
              { name: 'Bola-Bola Siopao', img: 'https://media.istockphoto.com/id/1184080523/photo/wanton-noodle-soup-and-siopao.jpg?s=612x612&w=0&k=20&c=oRJanjrTxICQfuzm9bXVPYkw9nKh74tcwjH1cVzXzN8=' },
              { name: 'Choco Siopao', img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxSCl2zlIK85vMZ6nRYuWpqde6JnIxBUTe-w&s' },
              { name: 'Ube Siopao', img: 'https://media.istockphoto.com/id/2161276374/photo/vivid-steamed-purple-ube-sweet-potato-dumplings.jpg?s=612x612&w=0&k=20&c=Mb2rl1JZPvG0d5v-_gSC7Mx50DNggFJiTEcoTayqB1Q=' },
              { name: 'Red Bean Siopao', img: 'https://media.istockphoto.com/id/1172915611/photo/asian-steamed-bun-with-adzuki-red-bean-paste-filling-or-bakpao.jpg?s=612x612&w=0&k=20&c=hImY86ZyoR8y2FC17yLpkCA5amxrZDxCeuVokJnY5w0=' },
              { name: 'Custard Siopao', img: 'https://media.istockphoto.com/id/957584318/photo/chinese-steamed-bun-and-orange-sweet-creamy-lava-on-chinese-pattern-dish.jpg?s=612x612&w=0&k=20&c=5CJuHZdTLVIlN5gq_jmer--RWri-TDliTtQoIvAc97M=' }
            ].map((flavor, idx) => (
              <motion.div key={idx} variants={fadeInUp} className="group cursor-pointer flex flex-col">
                <div className="w-full aspect-[4/5] overflow-hidden bg-sio-bg mb-6 border-[0.5px] border-sio-border relative">
                  <div className="absolute inset-0 bg-sio-yellow/10 opacity-0 group-hover:opacity-100 transition-opacity duration-500 z-10 mix-blend-multiply"></div>
                  <img src={flavor.img} alt={flavor.name} className="w-full h-full object-cover filter grayscale-[50%] group-hover:grayscale-[20%] transition-all duration-700 group-hover:scale-105" />
                </div>
                <div className="flex flex-col flex-grow text-center">
                  <span className="text-[0.65rem] uppercase tracking-[0.2em] text-sio-text-muted mb-3 block">Handcrafted</span>
                  <h3 className="text-2xl font-heading italic text-sio-text mb-2 group-hover:text-sio-yellow transition-colors">
                    {flavor.name}
                  </h3>
                </div>
              </motion.div>
            ))}
          </motion.div>
        </div>
      </section>

      {/* --- CONTACT SECTION --- */}
      <section className="py-32 bg-sio-surface relative overflow-hidden border-t-[0.5px] border-sio-border">
        <div className="container-custom relative z-10">
          <motion.div
            initial="hidden"
            whileInView="visible"
            viewport={{ once: true }}
            variants={fadeInUp}
            className="max-w-4xl mx-auto"
          >
            <div className="text-center mb-16">
              <span className="text-[0.65rem] uppercase tracking-[0.2em] text-sio-yellow mb-6 block">Concierge</span>
              <h3 className="text-4xl md:text-5xl font-heading text-sio-text italic mb-6">At Your Service</h3>
              <p className="text-sio-text-muted font-light max-w-lg mx-auto leading-relaxed">
                For bespoke bulk orders, reservations, or any inquiries, our concierge is ready to assist you with absolute dedication.
              </p>
            </div>

            <div className="bg-sio-bg p-10 md:p-16 border-[0.5px] border-sio-border shadow-2xl">
              <h2 className="text-3xl font-heading italic text-sio-text mb-8">Send a Dispatch</h2>
              <form className="space-y-8">
                <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
                  <div>
                    <label className="block text-[0.65rem] uppercase tracking-[0.2em] text-sio-text-muted mb-3">Name</label>
                    <input type="text" className="w-full bg-transparent border-b border-sio-border rounded-none px-0 py-3 focus:ring-0 focus:border-sio-yellow text-sm text-sio-text transition-colors" required placeholder="Jane Doe" />
                  </div>
                  <div>
                    <label className="block text-[0.65rem] uppercase tracking-[0.2em] text-sio-text-muted mb-3">Email</label>
                    <input type="email" className="w-full bg-transparent border-b border-sio-border rounded-none px-0 py-3 focus:ring-0 focus:border-sio-yellow text-sm text-sio-text transition-colors" required placeholder="jane@example.com" />
                  </div>
                </div>
                <div>
                  <label className="block text-[0.65rem] uppercase tracking-[0.2em] text-sio-text-muted mb-3">Subject</label>
                  <input type="text" className="w-full bg-transparent border-b border-sio-border rounded-none px-0 py-3 focus:ring-0 focus:border-sio-yellow text-sm text-sio-text transition-colors" required />
                </div>
                <div>
                  <label className="block text-[0.65rem] uppercase tracking-[0.2em] text-sio-text-muted mb-3">Message</label>
                  <textarea rows="4" className="w-full bg-transparent border-b border-sio-border rounded-none px-0 py-3 focus:ring-0 focus:border-sio-yellow text-sm text-sio-text transition-colors resize-none" required placeholder="How may we assist you?"></textarea>
                </div>
                <div className="pt-8 flex justify-center">
                  <button type="submit" className="btn-primary w-full md:w-auto px-16 py-4 text-xs uppercase tracking-widest flex items-center justify-center gap-3">
                    Send Message <i className="bi bi-arrow-right"></i>
                  </button>
                </div>
              </form>
            </div>
          </motion.div>
        </div>
      </section>
    </main>
  );
}