# Node.js 16.0.0 sürümü üzerine inşa edilmiş alpine tabanlı bir imaj kullanıyor$
FROM node:16.0.0-alpine

# Çalışma dizinini /app olarak belirliyoruz
WORKDIR /app

# package.json ve package-lock.json dosyalarını kopyalıyoruz
COPY package.json .

# Bağımlılıkları yüklüyoruz
RUN npm install

# Tüm proje dosyalarını kopyalıyoruz
COPY . .

ENV PORT 3003

EXPOSE 3003

# Uygulamayı başlatıyoruz
CMD ["npm", "run" ,"start"]