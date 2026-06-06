import React from 'react';
import { motion } from 'framer-motion';

export default function ContactPage() {
  const fadeInUp = {
    hidden: { opacity: 0, y: 30 },
    visible: { opacity: 1, y: 0, transition: { duration: 0.6 } }
  };

  return (
    <main className="pt-20 bg-sio-bg min-h-screen pb-32 font-sans text-sio-text selection:bg-sio-yellow selection:text-sio-dark">
      {/* Hero Section */}
      <section className="bg-sio-red border-b-[0.5px] border-sio-red-hover py-32 md:py-40 text-center relative overflow-hidden">
        <div className="absolute inset-0 bg-[url('https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?q=80&w=2070')] bg-cover bg-center opacity-20 z-0 mix-blend-overlay"></div>
        <div className="absolute inset-0 bg-gradient-to-b from-sio-red/95 to-sio-red-hover/90 z-0"></div>
        <div className="container-custom relative z-10 max-w-4xl mx-auto">
          <motion.div initial="hidden" animate="visible" variants={fadeInUp}>
            <span className="text-[0.65rem] uppercase tracking-[0.2em] text-sio-yellow mb-6 block">Inquiries</span>
            <h1 className="text-5xl md:text-7xl font-heading italic text-white mb-8">
              Get in Touch
            </h1>
            <p className="text-lg text-white/80 font-light max-w-2xl mx-auto leading-relaxed">
              We welcome your thoughts and inquiries. Reach out to our concierge for feedback, reservations, or bespoke bulk orders.
            </p>
          </motion.div>
        </div>
      </section>

      {/* Content Section */}
      <section className="container-custom -mt-16 relative z-20 max-w-6xl mx-auto">
        <div className="flex flex-col lg:flex-row gap-10">
          
          {/* Contact Info Card */}
          <motion.div 
            initial="hidden" animate="visible" variants={fadeInUp}
            className="lg:w-2/5"
          >
            <div className="bg-sio-bg border-[0.5px] border-sio-border p-10 md:p-14 h-full shadow-xl">
              <h3 className="text-3xl font-heading italic text-sio-text mb-10 pb-6 border-b-[0.5px] border-sio-border">Contact Information</h3>
              
              <div className="space-y-10">
                <div className="flex items-start">
                  <div className="w-10 h-10 border-[0.5px] border-sio-border bg-sio-surface text-sio-yellow rounded-full flex items-center justify-center shrink-0 mr-5">
                    <i className="bi bi-geo-alt text-sm"></i>
                  </div>
                  <div>
                    <h5 className="text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2">Location</h5>
                    <p className="text-sm font-light text-sio-text leading-relaxed">123 Food Street, Brgy. Masarap<br />Manila, Philippines 1000</p>
                  </div>
                </div>
                
                <div className="flex items-start">
                  <div className="w-10 h-10 border-[0.5px] border-sio-border bg-sio-surface text-sio-yellow rounded-full flex items-center justify-center shrink-0 mr-5">
                    <i className="bi bi-envelope text-sm"></i>
                  </div>
                  <div>
                    <h5 className="text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2">Email</h5>
                    <p className="text-sm font-light text-sio-text leading-relaxed">concierge@siosio.com.ph<br />support@siosio.com.ph</p>
                  </div>
                </div>
                
                <div className="flex items-start">
                  <div className="w-10 h-10 border-[0.5px] border-sio-border bg-sio-surface text-sio-yellow rounded-full flex items-center justify-center shrink-0 mr-5">
                    <i className="bi bi-telephone text-sm"></i>
                  </div>
                  <div>
                    <h5 className="text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2">Phone</h5>
                    <p className="text-sm font-light text-sio-text leading-relaxed">+63 912 345 6789<br />(02) 8123 4567</p>
                  </div>
                </div>
              </div>

              <div className="mt-16 pt-10 border-t-[0.5px] border-sio-border">
                <h5 className="text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-6">Socials</h5>
                <div className="flex gap-4">
                  <a href="#" className="w-10 h-10 rounded-full border-[0.5px] border-sio-border bg-sio-surface flex items-center justify-center text-sio-text-muted hover:border-sio-yellow hover:text-sio-yellow transition-colors">
                    <i className="bi bi-facebook text-sm"></i>
                  </a>
                  <a href="#" className="w-10 h-10 rounded-full border-[0.5px] border-sio-border bg-sio-surface flex items-center justify-center text-sio-text-muted hover:border-sio-yellow hover:text-sio-yellow transition-colors">
                    <i className="bi bi-instagram text-sm"></i>
                  </a>
                  <a href="#" className="w-10 h-10 rounded-full border-[0.5px] border-sio-border bg-sio-surface flex items-center justify-center text-sio-text-muted hover:border-sio-yellow hover:text-sio-yellow transition-colors">
                    <i className="bi bi-twitter-x text-sm"></i>
                  </a>
                </div>
              </div>
            </div>
          </motion.div>
          
          {/* Contact Form Card */}
          <motion.div 
            initial="hidden" animate="visible" variants={fadeInUp}
            className="lg:w-3/5"
          >
            <div className="bg-sio-surface border-[0.5px] border-sio-border p-10 md:p-14 shadow-2xl">
              <h3 className="text-3xl font-heading italic text-sio-text mb-4">Send a Message</h3>
              <p className="text-xs font-light tracking-wide text-sio-text-muted mb-10">Complete the form below and our concierge will respond promptly.</p>
              
              <form className="space-y-8" onSubmit={(e) => e.preventDefault()}>
                <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
                  <div>
                    <label className="block text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2">First Name</label>
                    <input type="text" className="w-full bg-transparent border-b border-sio-border rounded-none px-0 py-3 focus:ring-0 focus:border-sio-yellow text-sm text-sio-text transition-colors" placeholder="Juan" required />
                  </div>
                  <div>
                    <label className="block text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2">Last Name</label>
                    <input type="text" className="w-full bg-transparent border-b border-sio-border rounded-none px-0 py-3 focus:ring-0 focus:border-sio-yellow text-sm text-sio-text transition-colors" placeholder="Dela Cruz" required />
                  </div>
                </div>
                
                <div>
                  <label className="block text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2">Email Address</label>
                  <input type="email" className="w-full bg-transparent border-b border-sio-border rounded-none px-0 py-3 focus:ring-0 focus:border-sio-yellow text-sm text-sio-text transition-colors" placeholder="juan@example.com" required />
                </div>
                
                <div>
                  <label className="block text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2">Subject</label>
                  <input type="text" className="w-full bg-transparent border-b border-sio-border rounded-none px-0 py-3 focus:ring-0 focus:border-sio-yellow text-sm text-sio-text transition-colors" placeholder="Inquiry Topic" required />
                </div>
                
                <div>
                  <label className="block text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2">Message</label>
                  <textarea className="w-full bg-transparent border-b border-sio-border rounded-none px-0 py-3 focus:ring-0 focus:border-sio-yellow text-sm text-sio-text transition-colors resize-none" rows="5" placeholder="Your detailed message..." required></textarea>
                </div>
                
                <button type="submit" className="w-full btn-primary py-4 text-xs uppercase tracking-widest mt-6 flex items-center justify-center gap-3 transition-all hover:bg-black">
                  Dispatch Message <i className="bi bi-arrow-right"></i>
                </button>
              </form>
            </div>
          </motion.div>
          
        </div>
      </section>
    </main>
  );
}
