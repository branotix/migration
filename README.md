## Migration হলো ডাটাবেসের schema পরিবর্তনকে কোড আকারে সংরক্ষণ করার একটি প্রক্রিয়া। উদাহরণস্বরূপ: নতুন টেবিল তৈরি করা, কলাম যোগ/মুছে ফেলা, index তৈরি করা ইত্যাদি কাজগুলো migration ফাইলের মাধ্যমে করা হয়।

# কেন Migration ব্যবহার করা হয়?
-Version Control: ডাটাবেসের পরিবর্তনগুলো step-by-step track করা যায়।
-Consistency: টিমে কাজ করলে সবাই একই schema ব্যবহার করতে পারে।
-Rollback সুবিধা: কোনো ভুল হলে আগের অবস্থায় ফিরে যাওয়া যায়।
-Automation: কোড রান করলেই schema update হয়, আলাদা করে ম্যানুয়ালি SQL চালাতে হয় না।
-Deployment সহজ হয়: Production এ নতুন ফিচার রিলিজ করার সময় database schema update স্বয়ংক্রিয়ভাবে হয়।