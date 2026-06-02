

import express from 'express';
import { db } from './database-connection';

const router = express.Router();

router.post('/login', async (req, res) => {
  const email = req.body.email;
  const password = req.body.password;

  try {
    // VULNERABILITY FOUND HERE: 
    // The developer used template literals to directly concatenate 
    // user input into the SQL query without sanitization or parameterization.

    const rawQuery = `
      SELECT * FROM public.profiles 
      WHERE email = '${email}' 
      AND password = '${password}';
    `;

    // Executing the raw SQL string directly against the database
    const result = await db.query(rawQuery);

    if (result.rows.length > 0) {
      // Login successful
      const user = result.rows[0];
      res.status(200).json({ success: true, token: user.auth_token });
    } else {
      // Login failed
      res.status(401).json({ success: false, message: "Invalid credentials" });
    }

  } catch (error) {
    res.status(500).json({ error: "Database error querying schema" });
  }
});

export default router;
