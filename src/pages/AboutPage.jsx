import React from 'react';
import { motion } from 'framer-motion';

export default function AboutPage() {
  const fadeInUp = {
    hidden: { opacity: 0, y: 30 },
    visible: { opacity: 1, y: 0, transition: { duration: 0.6 } }
  };

  return (
    <main className="pt-20 bg-sio-bg min-h-screen font-sans text-sio-text selection:bg-sio-yellow selection:text-sio-dark">
      {/* Hero Section */}
      <section className="relative py-32 md:py-48 overflow-hidden bg-sio-red border-b-[0.5px] border-sio-red-hover">
        <div className="absolute inset-0 bg-[url('https://images.unsplash.com/photo-1555126634-ae23528b76ba?q=80&w=2070')] bg-cover bg-center opacity-20 z-0 mix-blend-overlay"></div>
        <div className="absolute inset-0 bg-gradient-to-b from-sio-red/95 to-sio-red-hover/90 z-0"></div>
        <div className="container-custom relative z-10 text-center max-w-4xl mx-auto">
          <motion.div initial="hidden" animate="visible" variants={fadeInUp}>
            <span className="text-[0.65rem] uppercase tracking-[0.2em] text-sio-yellow mb-6 block">Our Heritage</span>
            <h1 className="text-5xl md:text-7xl font-heading italic text-white mb-8">
              About SioSio
            </h1>
            <p className="text-lg md:text-xl text-white/80 font-light leading-relaxed max-w-2xl mx-auto">
              Discover the story behind your favorite authentic Filipino siomai and siopao, crafted with passion and heritage.
            </p>
          </motion.div>
        </div>
      </section>

      {/* Story Section */}
      <section className="py-32 bg-sio-bg">
        <div className="container-custom mx-auto max-w-6xl">
          <div className="flex flex-col lg:flex-row items-center gap-20">
            <motion.div 
              initial="hidden" whileInView="visible" viewport={{ once: true }} variants={fadeInUp}
              className="lg:w-1/2 w-full"
            >
              <div className="relative border-[0.5px] border-sio-border p-2 bg-sio-surface shadow-xl">
                <img src="/images/Homebg.jpg" alt="Our Story" className="w-full h-auto object-cover aspect-[4/5] filter grayscale-[20%]" />
              </div>
            </motion.div>
            
            <motion.div 
              initial="hidden" whileInView="visible" viewport={{ once: true }} variants={fadeInUp}
              className="lg:w-1/2 w-full"
            >
              <span className="text-[0.65rem] uppercase tracking-[0.2em] text-sio-yellow mb-6 block">The Beginning</span>
              <h2 className="text-4xl md:text-5xl font-heading italic text-sio-text mb-10 leading-tight">
                Sioper Sarap na Kwento
              </h2>
              
              <div className="space-y-8 text-sio-text-muted font-light text-sm md:text-base leading-relaxed">
                <p>
                  Founded with a simple mission: to provide Filipinos with the most delicious and authentic siomai and siopao. 
                  SioSio has grown from a humble stall to a beloved culinary destination.
                </p>
                <p>
                  Every piece we serve is crafted with absolute precision, using only the finest ingredients. 
                  We believe that great taste doesn't have to be expensive. Our signature recipe has been perfected 
                  over years of dedication to ensure the distinct "SioSio" flavor that defines our brand.
                </p>
                <p>
                  Whether it's a refined afternoon break or a comforting late-night meal, we are dedicated to serving you 
                  the highest quality comfort food you truly deserve.
                </p>
              </div>
            </motion.div>
          </div>
        </div>
      </section>

      {/* Values Section */}
      <section className="py-32 bg-sio-surface border-t-[0.5px] border-sio-border">
        <div className="container-custom mx-auto max-w-6xl">
          <motion.div 
            initial="hidden" whileInView="visible" viewport={{ once: true }} variants={fadeInUp}
            className="text-center mb-24"
          >
            <span className="text-[0.65rem] uppercase tracking-[0.2em] text-sio-yellow mb-6 block">Our Principles</span>
            <h2 className="text-4xl md:text-5xl font-heading italic text-sio-text">Core Values</h2>
          </motion.div>

          <div className="grid grid-cols-1 md:grid-cols-3 gap-12">
            {[
              { icon: 'bi-star', title: 'Quality', desc: 'We never compromise on the quality of our ingredients, ensuring every piece meets our meticulous standards.' },
              { icon: 'bi-tag', title: 'Accessibility', desc: 'Exceptional culinary experiences should be accessible. We maintain fair pricing without sacrificing our craft.' },
              { icon: 'bi-heart', title: 'Dedication', desc: 'Your satisfaction is our primary metric. We aim to deliver excellence with every single order.' }
            ].map((value, idx) => (
              <motion.div 
                key={idx}
                initial="hidden" whileInView="visible" viewport={{ once: true }} variants={fadeInUp}
                className="bg-sio-bg border-[0.5px] border-sio-border p-12 text-center hover:border-sio-yellow transition-colors duration-500 group"
              >
                <div className="w-16 h-16 bg-sio-red/5 border-[0.5px] border-sio-red/20 text-sio-red group-hover:bg-sio-red group-hover:text-white rounded-full flex items-center justify-center mx-auto mb-8 transition-all duration-500 shadow-sm">
                  <i className={`bi ${value.icon} text-xl`}></i>
                </div>
                <h4 className="text-xl font-sans font-black uppercase tracking-wider text-sio-red mb-4">{value.title}</h4>
                <p className="text-sm text-gray-500 font-medium leading-relaxed">{value.desc}</p>
              </motion.div>
            ))}
          </div>
        </div>
      </section>
    </main>
  );
}
