import React from 'react';
import { Link } from 'react-router-dom';
import '../styles/home.css';

export default function HomePage() {
  return (
    <main>
      <section className="hero">
        <div className="hero-overlay"></div>
        <div className="hero-content">
          <h2 className="hero-title">
            The <span className="sio-highlight">medyo NO.1 <span className="sio-highlight">Sio</span>mai and <span className="sio-highlight">Sio</span>pao Brand</span>
          </h2>
          <p className="hero-subtitle">in the Philippines</p>
          <p className="hero-tagline">
            <em><span className="sio-highlight">Sio</span>per Sarap, <span className="sio-highlight">Sio</span>per Affordable pa!</em>
          </p>
        </div>
        <div className="hero-bottom"></div>
      </section>

      <section id="siomai-section" className="py-5">
        <div className="container">
          <h2 className="section-title"><span className="sio-highlight">Sio</span>mai Flavors</h2>
          <div className="flavors-grid">
            {[
              { name: 'Pork Siomai', img: 'https://media.istockphoto.com/id/2182583656/photo/chinese-steamed-dumpling-or-shumai-in-japanese-language-meatball-dumpling-with-wanton-skin.jpg?s=612x612&w=0&k=20&c=0K7_ee0dwfAZhcZZajZRSv8uTifXZhG6LVmlKnSe-0U=' },
              { name: 'Chicken Siomai', img: 'https://media.istockphoto.com/id/1336438874/photo/delicious-dim-sum-home-made-chinese-dumplings-served-on-plate.jpg?s=612x612&w=0&k=20&c=11KB0bXoZeMrlzaHN2q9aZq8kqtdvp-d4Oggc2TF8M4=' },
              { name: 'Beef Siomai', img: 'https://media.istockphoto.com/id/2189370578/photo/delicious-shumai-shumay-siomay-chicken-in-bowl-snack-menu.jpg?s=612x612&w=0&k=20&c=hD4kuZsiGIjgyUPq-seqv229pFE43CnS0Do3EH_2E_Y=' },
              { name: 'Tuna Siomai', img: 'https://media.istockphoto.com/id/1084916088/photo/close-up-cooking-homemade-shumai.jpg?s=612x612&w=0&k=20&c=M1RyWV62MACQffBC40UzZ_h-BsXOj4bkaMBrxnbMTzc=' },
              { name: 'Shark\'s Fin Siomai', img: 'https://media.istockphoto.com/id/1330456626/photo/steamed-shark-fin-dumplings-served-with-chili-garlic-oil-and-calamansi.jpg?s=612x612&w=0&k=20&c=9Zi1JmbwvYtIlZJqZb6tHOVC21rS-IbwZXS-IeflE30=' },
              { name: 'Japanese Siomai', img: 'https://media.istockphoto.com/id/1221287744/photo/ground-pork-with-crab-stick-wrapped-in-nori.jpg?s=612x612&w=0&k=20&c=Rniq7tdyCqVZHpwngsbzOk1dG1u8pTEeUDE8arsfOUY=' }
            ].map((flavor, idx) => (
              <div className="flavor-item" key={idx}>
                <div className="flavor-image">
                  <img src={flavor.img} alt={flavor.name} />
                </div>
                <h3 className="flavor-title">
                  {flavor.name.split('Siomai')[0]}<span className="sio-highlight">Sio</span>mai
                </h3>
              </div>
            ))}
          </div>
        </div>
      </section>

      <section id="siopao-section" className="py-5 bg-light">
        <div className="container">
          <h2 className="section-title"><span className="sio-highlight">Sio</span>pao Flavors</h2>
          <div className="flavors-grid">
            {[
              { name: 'Asado Siopao', img: 'https://media.istockphoto.com/id/1163708923/photo/hong-kong-style-chicken-char-siew-in-classic-polo-bun-polo-bun-or-is-a-kind-of-crunchy-and.jpg?s=612x612&w=0&k=20&c=R9DC49-UsxYUPlImX6O47LQyafOu1Cp5rNxp3XifFNI=' },
              { name: 'Bola-Bola Siopao', img: 'https://media.istockphoto.com/id/1184080523/photo/wanton-noodle-soup-and-siopao.jpg?s=612x612&w=0&k=20&c=oRJanjrTxICQfuzm9bXVPYkw9nKh74tcwjH1cVzXzN8=' },
              { name: 'Choco Siopao', img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxSCl2zlIK85vMZ6nRYuWpqde6JnIxBUTe-w&s' },
              { name: 'Ube Siopao', img: 'https://media.istockphoto.com/id/2161276374/photo/vivid-steamed-purple-ube-sweet-potato-dumplings.jpg?s=612x612&w=0&k=20&c=Mb2rl1JZPvG0d5v-_gSC7Mx50DNggFJiTEcoTayqB1Q=' },
              { name: 'Red Bean Siopao', img: 'https://media.istockphoto.com/id/1172915611/photo/asian-steamed-bun-with-adzuki-red-bean-paste-filling-or-bakpao.jpg?s=612x612&w=0&k=20&c=hImY86ZyoR8y2FC17yLpkCA5amxrZDxCeuVokJnY5w0=' },
              { name: 'Custard Siopao', img: 'https://media.istockphoto.com/id/957584318/photo/chinese-steamed-bun-and-orange-sweet-creamy-lava-on-chinese-pattern-dish.jpg?s=612x612&w=0&k=20&c=5CJuHZdTLVIlN5gq_jmer--RWri-TDliTtQoIvAc97M=' }
            ].map((flavor, idx) => (
              <div className="flavor-item" key={idx}>
                <div className="flavor-image">
                  <img src={flavor.img} alt={flavor.name} />
                </div>
                <h3 className="flavor-title">
                  {flavor.name.split('Siopao')[0]}<span className="sio-highlight">Sio</span>pao
                </h3>
              </div>
            ))}
          </div>
        </div>
      </section>

      <section className="contact-section">
        <div className="container">
          <div className="contact-wrapper">
            <div className="contact-image">
              <img src="/images/mascot.png" alt="Contact Us" className="contact-img" />
            </div>
            <div className="contact-form-container">
              <h2 className="contact-title">Message Us</h2>
              <form className="contact-form">
                <div className="form-row">
                  <div className="form-group">
                    <label htmlFor="fullName">Your Complete Name</label>
                    <input type="text" id="fullName" name="fullName" required />
                  </div>
                  <div className="form-group">
                    <label htmlFor="email">Email Address</label>
                    <input type="email" id="email" name="email" required />
                  </div>
                </div>
                <div className="form-group">
                  <label htmlFor="subject">Subject</label>
                  <input type="text" id="subject" name="subject" required />
                </div>
                <div className="form-group">
                  <label htmlFor="message">Message</label>
                  <textarea id="message" name="message" rows="6" required></textarea>
                </div>
                <div className="form-group captcha-group">
                  <div className="captcha-placeholder">
                    <input type="checkbox" id="captcha" name="captcha" required />
                    <label htmlFor="captcha">I'm not a robot</label>
                    <div className="captcha-icon">🔒</div>
                  </div>
                </div>
                <button type="submit" className="submit-btn">Send Message</button>
              </form>
            </div>
          </div>
        </div>
      </section>
    </main>
  );
}
