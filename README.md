## Migration হলো ডাটাবেসের schema পরিবর্তনকে কোড আকারে সংরক্ষণ করার একটি প্রক্রিয়া। উদাহরণস্বরূপ: নতুন টেবিল তৈরি করা, কলাম যোগ/মুছে ফেলা, index তৈরি করা ইত্যাদি কাজগুলো migration ফাইলের মাধ্যমে করা হয়।

# কেন Migration ব্যবহার করা হয়?
- **Version Control:** ডাটাবেসের পরিবর্তনগুলো step-by-step track করা যায়।
- **Consistency:** টিমে কাজ করলে সবাই একই schema ব্যবহার করতে পারে।
- **Rollback সুবিধা:** কোনো ভুল হলে আগের অবস্থায় ফিরে যাওয়া যায়।
- **Automation:** কোড রান করলেই schema update হয়, আলাদা করে ম্যানুয়ালি SQL চালাতে হয় না।
- **Deployment সহজ হয়:** Production এ নতুন ফিচার রিলিজ করার সময় database schema update স্বয়ংক্রিয়ভাবে হয়।

# 🛠️ (Ubuntu/Debian) সিস্টেমে golang-migrate  Install করার ধাপ ঃ 

**০১ Binary download করো (latest release থেকে):**
```c program
curl -L https://github.com/golang-migrate/migrate/releases/download/v4.16.2/migrate.linux-amd64.tar.gz | tar xvz
```
**০২ Binary move করো /usr/local/bin এ:**
```c program
sudo mv migrate /usr/local/bin/
```
**০৩ Check করো install হয়েছে কিনা:**
```c program
migrate -version
```
👉 এখন তোমার সিস্টেমে version number দেখালে বুঝবে install ঠিক হয়েছে।

## এখন তুমি তোমার প্রজেক্ট এ migration ব্যবহার করার জন্য প্রস্তুত হইয়ে গেছও 
**তুমি তোমার প্রজেক্ট এ migration added  করার জন্য নিচের কমান্ড ব্যবহার কর এতে তোমার প্রজেক্ট এ থাকা database namer folder এর মধ্যে দুইটা .sql file create হবে**

```c program
migrate create -ext sql -dir db/migrations -seq add_users_table
```
