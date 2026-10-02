import { defineConfig } from 'vite';

export default defineConfig({
    server: {
        host: '0.0.0.0', // เปิดให้ Docker Container กระจายพอร์ตออกสู่ภายนอก
        port: 5173,      // กำหนดพอร์ตหลัก
        strictPort: true,
        watch: {
            usePolling: true // สั่งให้สแกนการเปลี่ยนแปลงไฟล์อย่างสม่ำเสมอบน Docker Volume
        }
    }
});