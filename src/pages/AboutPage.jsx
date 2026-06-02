import React from 'react';
import '../styles/company.css';

export default function AboutPage() {
  return (
    <div className="about-container">
      <section className="about-hero position-relative">
        <div className="hero-overlay"></div>
        <div className="container position-relative text-center text-white py-5">
          <h1 className="display-4 fw-bold mb-3">About <span className="sio-highlight">Sio</span><span className="sio-highlight">Sio</span></h1>
          <p className="lead">Discover the story behind your favorite siomai and siopao</p>
        </div>
      </section>

      <section className="story-section py-5">
        <div className="container">
          <div className="row align-items-center mb-5">
            <div className="col-lg-6 mb-4 mb-lg-0">
              <img src="/images/Homebg.jpg" alt="Our Story" className="img-fluid rounded shadow-lg story-img" />
            </div>
            <div className="col-lg-6 px-lg-5">
              <h2 className="mb-4 fw-bold"><span className="sio-highlight">Sio</span>per Sarap na Kwento</h2>
              <p className="fs-5 text-muted mb-4">
                Founded with a simple mission: to provide Filipinos with the most delicious and affordable siomai and siopao. 
                SioSio has grown from a humble stall to a beloved brand.
              </p>
              <p className="text-muted">
                Every bite of our products is crafted with love, using only the finest ingredients. 
                We believe that great taste doesn't have to be expensive. Our recipe has been perfected 
                over the years to ensure that signature "SioSio" flavor that keeps our customers coming back.
              </p>
            </div>
          </div>
        </div>
      </section>

      <section className="values-section py-5 bg-light">
        <div className="container">
          <h2 className="text-center mb-5 fw-bold">Our Core <span className="sio-highlight">Values</span></h2>
          <div className="row g-4">
            <div className="col-md-4">
              <div className="card h-100 border-0 shadow-sm text-center p-4 value-card">
                <div className="value-icon mb-3 text-danger" style={{ fontSize: '3rem' }}>
                  <i className="bi bi-star-fill"></i>
                </div>
                <h4 className="fw-bold mb-3">Quality</h4>
                <p className="text-muted">We never compromise on the quality of our ingredients, ensuring every piece meets our high standards.</p>
              </div>
            </div>
            <div className="col-md-4">
              <div className="card h-100 border-0 shadow-sm text-center p-4 value-card">
                <div className="value-icon mb-3 text-danger" style={{ fontSize: '3rem' }}>
                  <i className="bi bi-tag-fill"></i>
                </div>
                <h4 className="fw-bold mb-3">Affordability</h4>
                <p className="text-muted">Delicious food should be accessible to everyone. We keep our prices friendly without sacrificing taste.</p>
              </div>
            </div>
            <div className="col-md-4">
              <div className="card h-100 border-0 shadow-sm text-center p-4 value-card">
                <div className="value-icon mb-3 text-danger" style={{ fontSize: '3rem' }}>
                  <i className="bi bi-emoji-smile-fill"></i>
                </div>
                <h4 className="fw-bold mb-3">Customer Joy</h4>
                <p className="text-muted">Your satisfaction is our success. We aim to bring a smile to your face with every order.</p>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  );
}
