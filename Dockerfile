# 1. ใช้ Node.js 20 บน Linux Alpine ซึ่งมีขนาดเล็กมาก (ไม่เปลืองทรัพยากร)
FROM node:20-alpine

# 2. กำหนดโฟลเดอร์ทำงานหลักภายใน Container
WORKDIR /app

# 3. คัดลอกเฉพาะ package.json เข้ามาก่อนเพื่อลง Dependencies (ช่วยทำ Caching ให้รันไวขึ้น)
COPY package*.json ./
RUN npm install

# 4. คัดลอกโค้ดทั้งหมดที่เหลือเข้า Container
COPY . .

# 5. แจ้งระบบว่า Container นี้ใช้พอร์ต 5173
EXPOSE 5173

# 6. คำสั่งเริ่มต้นรัน Dev Server เมื่อ Container ทำงาน
CMD ["npm", "run", "dev"]