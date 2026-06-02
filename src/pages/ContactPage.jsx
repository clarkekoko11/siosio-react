import React from 'react';
import '../styles/contact.css';

export default function ContactPage() {
  return (
    <div className="contact-page-container">
      <section className="contact-hero py-5 bg-dark text-white text-center">
        <div className="container">
          <h1 className="display-4 fw-bold mb-3">Get in <span className="sio-highlight">Touch</span></h1>
          <p className="lead">We'd love to hear from you. Reach out to us for any inquiries.</p>
        </div>
      </section>

      <section className="contact-content py-5">
        <div className="container">
          <div className="row g-5">
            <div className="col-lg-5">
              <div className="contact-info p-4 bg-light rounded shadow-sm h-100">
                <h3 className="fw-bold mb-4">Contact Information</h3>
                
                <div className="d-flex align-items-start mb-4 info-item">
                  <div className="icon-box bg-white text-danger rounded-circle p-3 me-3 shadow-sm">
                    <i className="bi bi-geo-alt-fill fs-4"></i>
                  </div>
                  <div>
                    <h5 className="fw-bold mb-1">Our Location</h5>
                    <p className="text-muted mb-0">123 Food Street, Brgy. Masarap<br />Manila, Philippines 1000</p>
                  </div>
                </div>
                
                <div className="d-flex align-items-start mb-4 info-item">
                  <div className="icon-box bg-white text-danger rounded-circle p-3 me-3 shadow-sm">
                    <i className="bi bi-envelope-fill fs-4"></i>
                  </div>
                  <div>
                    <h5 className="fw-bold mb-1">Email Us</h5>
                    <p className="text-muted mb-0">hello@siosio.com.ph<br />support@siosio.com.ph</p>
                  </div>
                </div>
                
                <div className="d-flex align-items-start mb-4 info-item">
                  <div className="icon-box bg-white text-danger rounded-circle p-3 me-3 shadow-sm">
                    <i className="bi bi-telephone-fill fs-4"></i>
                  </div>
                  <div>
                    <h5 className="fw-bold mb-1">Call Us</h5>
                    <p className="text-muted mb-0">+63 912 345 6789<br />(02) 8123 4567</p>
                  </div>
                </div>

                <hr className="my-4" />
                
                <h5 className="fw-bold mb-3">Follow Us</h5>
                <div className="d-flex gap-2 social-buttons">
                  <a href="#" className="btn btn-outline-primary rounded-circle"><i className="bi bi-facebook"></i></a>
                  <a href="#" className="btn btn-outline-danger rounded-circle"><i className="bi bi-instagram"></i></a>
                  <a href="#" className="btn btn-outline-info rounded-circle"><i className="bi bi-twitter"></i></a>
                </div>
              </div>
            </div>
            
            <div className="col-lg-7">
              <div className="contact-form-wrapper p-4 p-md-5 bg-white rounded shadow-sm">
                <h3 className="fw-bold mb-4">Send us a Message</h3>
                <form>
                  <div className="row g-3 mb-3">
                    <div className="col-md-6">
                      <label className="form-label">First Name</label>
                      <input type="text" className="form-control" placeholder="Juan" required />
                    </div>
                    <div className="col-md-6">
                      <label className="form-label">Last Name</label>
                      <input type="text" className="form-control" placeholder="Dela Cruz" required />
                    </div>
                  </div>
                  
                  <div className="mb-3">
                    <label className="form-label">Email Address</label>
                    <input type="email" className="form-control" placeholder="juan@example.com" required />
                  </div>
                  
                  <div className="mb-3">
                    <label className="form-label">Subject</label>
                    <input type="text" className="form-control" placeholder="How can we help you?" required />
                  </div>
                  
                  <div className="mb-4">
                    <label className="form-label">Message</label>
                    <textarea className="form-control" rows="5" placeholder="Write your message here..." required></textarea>
                  </div>
                  
                  <button type="submit" className="btn btn-danger px-4 py-2 fw-bold w-100">
                    Send Message <i className="bi bi-send ms-2"></i>
                  </button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  );
}
