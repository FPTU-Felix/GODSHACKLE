# ⚔️ BỘ PROMPT AI TẠO HÌNH ẢNH 2D: GODSHACKLE (PHƯỢC THẦN CHI TỎA)
**Dự án:** *GODSHACKLE: PHƯỢC THẦN CHI TỎA (The Bound Divinity)*  
**Thể loại:** 2D Fast-paced Dark Fantasy Action Platformer (Phong cách *Dead Cells*, *Berserk*, *Nine Sols*, *Darkest Dungeon*)  
**Phong cách mỹ thuật:** Dark Fantasy Grimdark, Gothic Trung Cổ, Chiaroscuro tương phản gắt, giáp sắt xám chém sứt mẻ, xích sắt phong ấn, vầng hào quang trật tự sắc lạnh xen lẫn tà khí Cổ Thần, viền nét rõ ràng để đưa vào game 2D.

---

## 💡 1. MẸO VÀNG KHI GEN ẢNH CHO GAME PLATFORMER 2D

1. **Góc nhìn bắt buộc là Góc Nghiêng (Side-view 2D Profile)**:
   - Trong prompt luôn phải có: `2d side-view platformer`, `profile view`, `facing right or left`.
   - Tránh góc nhìn 3/4 hay top-down để nhân vật không bị lệch khi đứng trên bục đá.
2. **Quy tắc nền đơn sắc để tách nền (Remove Background)**:
   - Luôn thêm: `isolated on solid pure black background`. Tách nền ra ảnh PNG trong suốt cực nhanh.
3. **Độ cao mặt đất (Ground Baseline)**:
   - Chân nhân vật đứng thẳng trên mặt phẳng nằm ngang để khớp hộp va chạm `CollisionShape2D`.

---

## 🛡️ 2. GÓI TẠO HÌNH NHÂN VẬT CHÍNH: HIỆP SĨ TIÊN PHONG TRẬT TỰ

### 2.1. Dáng Đứng Thủ Kiếm Đơn (Idle Combat Pose - Side View)
* **Mục đích**: Sprite chuẩn khi nhân vật đứng yên.
* **Tỉ lệ**: `--ar 3:4`
```text
2d side-view platformer character sprite, full body profile view facing right, a battle-hardened dark fantasy vanguard knight in chipped worn iron plate armor, tattered dark gray cloak, right arm bound with glowing meteorite chains fused to the hilt of an ornate longsword, the blade emitting a faint geometric golden order aura, solemn disciplined stance, style of Berserk and Darkest Dungeon, isolated on solid pure black background, crisp character outline, 8k --ar 3:4
```

### 2.2. Dải Ảnh Chạy Ngang Tốc Độ Cao (Run Cycle - Sprite Sheet)
* **Mục đích**: Khung hình bước chạy thần tốc.
* **Tỉ lệ**: `--ar 16:9`
```text
2d platformer sprite sheet, character sprint animation sequence, 6 frames progression from left to right, side-view profile of a dark fantasy knight sprinting forward at high speed, ragged cloak billowing behind, holding one-handed straight sword poised forward low, sparks trailing from iron boots, isolated on solid pure black background, crisp lines, Dead Cells aesthetic --ar 16:9
```

### 2.3. Bật Nhảy Đúp & Bổ Kiếm Không Chiến (Double Jump & Aerial Slash)
* **Mục đích**: Ảnh nhảy lên và vung kiếm từ trên không.
* **Tỉ lệ**: `--ar 1:1`
```text
2d side-view action sprite sheet, 2 poses of a dark fantasy knight, pose 1 leaping high into the air with double-jump wind trail, pose 2 plunging downward executing a downward vertical slash with gleaming sword emitting golden spark arc, side profile, isolated on pure black background, dynamic high-impact action --ar 1:1
```

### 2.4. Lướt Né Bất Tử (I-Frames Dash / Shadow Trail)
* **Mục đích**: Dáng lướt thần tốc né đòn.
* **Tỉ lệ**: `--ar 16:9`
```text
2d side-view action game sprite, a dark fantasy knight performing a rapid low-profile dash forward, body angled low, straight sword trailing behind, ethereal silver and gold geometric order afterimage trail, side perspective, isolated on solid black background, high speed dynamic action --ar 16:9
```

### 2.5. Phản Đòn Nảy Lửa (The Parry "KENG!" Pose)
* **Mục đích**: Dáng giơ kiếm đơn chặn đứng đòn đánh, bùng nổ tia lửa vàng kim.
* **Tỉ lệ**: `--ar 1:1`
```text
2d action platformer sprite, dark fantasy knight executing a flawless parry stance with a straight sword, deflecting a heavy strike, massive explosive bright golden-white sparks and circular shockwave bursting at the blade contact point, violent impact frame, time-freeze feel, isolated on pure black background, 8k --ar 1:1
```

### 2.6. Đòn [E] Kiếm Đơn: Nhất Kiếm Tịch Diệt (Spatial Fracture [E])
* **Mục đích**: Cú vung kiếm chém đôi không gian khi đầy 100% Khát Máu.
* **Tỉ lệ**: `--ar 16:9`
```text
2d side-view cinematic combat climax sprite, dark fantasy knight in follow-through pose after an ultra-fast sword draw, screen cracked with a razor-sharp glowing golden geometric spatial fracture slicing through the air, shattered glass reality effect, violent impactful posture, isolated on solid black background, graphic novel style --ar 16:9
```

### 2.7. Đòn [E] Cặp Vuốt: Hắc Ảnh Loạn Vũ (Shadow Dance - 6 Zigzag Slashes)
* **Mục đích**: Chuỗi 6 vệt chém ziczac bóng ma bất tử toàn màn hình.
* **Tỉ lệ**: `--ar 16:9`
```text
2d action platformer climax FX sprite, an ethereal dark assassin dissolving into an invulnerable shadowy silhouette, executing 6 rapid criss-cross zigzag slashes across the screen, razor-sharp glowing violet-black void claw trails slicing through midair, explosive dark glass-shattering detonation on enemy at center, dynamic motion blur, isolated on pure black background --ar 16:9
```

---

## 🔱 3. GÓI TỨ ĐẠI THẦN KHÍ (THE FOUR GOD-WEAPONS)

### 3.1. Kiếm Đơn Trật Tự (Aethelgard)
```text
2d video game weapon icon sprite, ornate steel straight longsword wrapped in glowing golden celestial runes and meteorite chain at hilt, blade reflects a cold geometric divine glow, elegant, lethal and noble, dark fantasy asset, transparent background --ar 1:1
```

### 3.2. Cặp Vuốt Sắt Bóng Tối (Umbrath)
```text
2d video game weapon icon sprite, pair of sleek curved assassin iron claws dripping with abyssal black void smoke, etched with glowing shadowy purple eyes, razor-sharp blades causing dark withering corruption, transparent background --ar 1:1
```

### 3.3. Lưỡi Liềm Tham Ăn (Vorax)
```text
2d video game weapon icon sprite, a large curved executioner scythe shaped like a ravenous jagged jaw, carved with hungry teeth motifs along the inner blade, dripping with ethereal pale mist that devours life force, dark gothic fantasy game asset, transparent background --ar 1:1
```

### 3.4. Đại Kiếm Cuồng Nộ (Vargon)
```text
2d video game weapon icon sprite, colossal broad greatsword of jagged black iron and molten red basalt, fissures glowing with volcanic wrath, a demonic beast eye burning with primal berserker fury on the crossguard, violent aura, transparent background --ar 1:1
```

---

## 👑 4. GÓI CÁC TƯỚNG LĨNH & CỔ THẦN (BOSSES)

### 4.1. Sát Thủ Vô Ảnh Corina & Cổ Thần Umbrath (Ải 1 - Quân Đoàn Sát Thủ)
* **Phase 1: Sát Thủ Vô Ảnh Corina:**
```text
2d side-view platformer boss sprite, lethal female shadow assassin in form-fitting dark leather and black tattered cape, twin iron beast claws strapped to wrists, face obscured by a dark silk veil with glowing violet eyes, agile crouching stance, afterimage trails of shadow, profile facing left, isolated on solid pure black background --ar 3:4
```
* **Phase 2: Umbrath Bung Xích (Cổ Thần Bóng Tối):**
```text
2d side-view platformer boss sprite, colossal cosmic shadow entity, a towering amorphous nightmare of undulating black tentacles and dozens of weeping crimson eyes, surrounded by floating phantom daggers, cosmic void horror, profile facing left, isolated on pure black background --ar 16:9
```

### 4.2. Nữ Trưởng Tu Morwenna & Cổ Thần Vorax (Ải 2 - Giáo Hội Phàm Thực)
* **Phase 1: Nữ Trưởng Tu Morwenna:**
```text
2d side-view platformer boss sprite, gothic priestess of endless hunger, wearing black mourning shroud and iron bridal crown, wielding a long chained curved scythe, floating ghostly jaws swirling around her robes, profile facing left, isolated on solid pure black background --ar 3:4
```
* **Phase 2: Vorax Bung Xích (Cổ Thần Tham Ăn):**
```text
2d side-view platformer boss sprite, a gigantic floating cosmic maw of thousands of jagged teeth, gaping dark vortex swallowing all light and matter, dripping with ethereal sludge, Lovecraftian eldritch horror, profile facing left, isolated on pure black background --ar 16:9
```

### 4.3. Thống Chế Thiết Hạm Roderick & Cổ Thần Vargon (Ải 3 - Quân Thiết Bọc Cuồng Chiến)
* **Phase 1: Thống Chế Roderick:**
```text
2d side-view platformer boss sprite, hulking muscular titan warlord clad in obsidian plate armor, holding a colossal two-handed greatsword engulfed in berserker crimson flames, cracked iron helm with glowing red gaze, profile facing left, isolated on pure black background --ar 3:4
```
* **Phase 2: Vargon Bung Xích (Cổ Thần Cuồng Nộ):**
```text
2d side-view platformer boss sprite, colossal magma stone titan roaring in berserk madness, burning fissures erupting with molten lava and black smoke, fists raised to shatter the earth, terrifying colossal platformer boss, profile facing left, isolated on pure black background --ar 16:9
```

### 4.4. Đoàn Trưởng Valerius & Quái Thai Thần Vị (Ải 4 - Final Boss)
* **Phase 1: Valerius Đấng Cứu Thế Bi Kịch:**
```text
2d side-view platformer boss sprite, tragic charismatic grand commander on royal sun altar, immaculate gilded silver plate armor stained with tears and fresh blood, flowing white cape, holding a gleaming glowing rapier in one hand and clutching a pulsating dark cosmic prophetic shard in the other, weeping anguished gaze, eyes filled with desperate resolve and sorrow, profile view facing left, isolated on solid pure black background --ar 3:4
```
* **Phase 2: Quái Thai Thần Vị Dung Hợp (The Ascended Abomination):**
```text
2d side-view platformer colossal final boss sprite, a monstrous divine entity born from four fused Old Gods, grotesque fusion of gilded holy armor torn apart by shadowy beast claws, spectral decaying wings, rocky magma plates, and dozens of glowing cosmic eyes staring from a fractured golden crown, terrifying cosmic horror boss, profile facing left, isolated on pure black background, 8k --ar 16:9
```

---

## 🖥️ 5. GÓI THIẾT KẾ GIAO DIỆN (UI / HUD)

### 5.1. Thanh Máu Hắc Huyết Xâm Thực (Withering Black Health UI)
```text
2d video game UI HUD sprite, dark gothic fantasy boss health bar, long ornate stone frame, layered progress bar showing three sections: bright crimson active health on the left, a corrupted pulsating pitch-black withering health section in the center, and empty dark background on the right, surrounded by thorny iron filigree, transparent background --ar 16:9
```
