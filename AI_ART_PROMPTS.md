# ⚔️ BỘ PROMPT AI TẠO HÌNH ẢNH GAME 2D PLATFORMER / HACK & SLASH
**Dự án:** *SIN EATER (Hiệp Sĩ Khổ Hạnh)*  
**Thể loại:** 2D Action Platformer / Metroidvania Hack & Slash (Phong cách *Blasphemous*, *Hollow Knight*, *Dead Cells*, *Berserk*)  
**Phong cách mỹ thuật:** Dark Fantasy Grimdark, Gothic Trung Cổ, Chiaroscuro tương phản gắt, giáp sắt gỉ gai nhọn, máu sẫm khô, viền nét rõ ràng để đưa vào game 2D.

---

## 💡 1. MẸO VÀNG KHI GEN ẢNH CHO GAME PLATFORMER 2D

Làm game 2D đi cảnh có những yêu cầu **rất khác** so với game thẻ bài hay turn-based:

1. **Góc nhìn bắt buộc phải là Góc Nghiêng (Side-view 2D)**:
   - Trong prompt luôn phải có: `2d side-view platformer`, `profile view`, `facing left or right`.
   - Tuyệt đối tránh góc nhìn 3/4 hay góc nhìn từ trên xuống (top-down), vì sẽ làm nhân vật bị lệch góc khi đứng trên sàn đá!
2. **Quy tắc nền đơn sắc để tách nền (Remove Background) 1 nốt nhạc**:
   - Luôn thêm: `isolated on solid pure black background` (hoặc `green background`).
   - Sau khi gen xong, bạn dùng trang web như [remove.bg](https://www.remove.bg) hoặc Photoshop/Godot tách nền trong 2 giây là có ảnh trong suốt (PNG Transparent).
3. **Cách tạo Dải Chuyển Động (Sprite Sheet)**:
   - Khi muốn tạo chuyển động chạy hoặc chém nhiều dáng, dùng từ khóa:  
     `2d sprite sheet sequence, 6 frames animation, character movement progression, grid layout, side scrolling view`.
4. **Độ cao mặt đất (Ground Baseline)**:
   - Chân nhân vật phải đứng thẳng thớm trên một mặt phẳng nằm ngang, không vẽ bóng xiên xẹo để đặt hộp va chạm (`CollisionShape2D`) chuẩn xác.

---

## 🛡️ 2. GÓI TẠO HÌNH NHÂN VẬT CHÍNH: HIỆP SĨ KHỔ HẠNH (THE PENITENT)

### 2.1. Dáng Đứng Thủ Kiếm (Idle Pose - Side View)
* **Mục đích**: Sprite chuẩn của người chơi khi đứng yên trên sàn đá.
* **Tỉ lệ**: `--ar 3:4` hoặc `--ar 1:1`
```text
2d side-view platformer character sprite, full body profile view facing right, a grim dark fantasy penitent knight in heavy chipped rusted black iron plate armor, barbed wire wrapped around forearms and neck, featureless blind conical iron helmet with no eye slits, holding a colossal two-handed jagged executioner greatsword resting point down on stone ground, solemn ready combat posture, gritty dark textures, style of Blasphemous and Berserk, isolated on solid pure black background, crisp character outline, 8k --ar 3:4
```

### 2.2. Dải Ảnh Chạy Ngang (Run Cycle - Sprite Sheet)
* **Mục đích**: 6 khung hình bước chạy nhịp nhàng để cắt ghép vào `AnimatedSprite2D`.
* **Tỉ lệ**: `--ar 16:9`
```text
2d platformer sprite sheet, character run cycle animation sequence, 6 frames progression from left to right, side-view profile of a dark fantasy knight running, tattered cloak flowing behind, heavy iron boots striding, holding greatsword forward, consistent character proportions, isolated on solid pure black background, crisp pixel-perfect lines, Blasphemous aesthetic, high resolution --ar 16:9
```

### 2.3. Dáng Nhảy Lên & Rơi Tự Do (Jump & Fall)
* **Mục đích**: Ảnh bật nhảy lên không trung và ảnh rơi xuống bục đá.
* **Tỉ lệ**: `--ar 1:1`
```text
2d side-view platformer sprite sheet, 2 action poses of a dark fantasy penitent knight, pose 1 leaping upward with greatsword drawn back, pose 2 falling downward with cloak billowing up and sword poised to plunge, profile side view, isolated on solid pure black background, grimdark gothic art, sharp silhouette --ar 1:1
```

### 2.4. Dáng Lướt Thần Tốc (Dash / Dodge Roll)
* **Mục đích**: Dáng lao vút né đòn kèm hiệu ứng bóng mờ (I-frames).
* **Tỉ lệ**: `--ar 16:9`
```text
2d side-view action game sprite, a dark fantasy knight performing a rapid low-profile dash slide forward, body angled forward, greatsword trailing behind, ethereal dark red motion blur trail, afterimage smoke ghost effect, side perspective, isolated on solid black background, high speed dynamic action --ar 16:9
```

### 2.5. Combo 3 Nhát Kiếm (Melee 3-Hit Slash Combo)
* **Mục đích**: Dải hình 3 đòn chém: Chém ngang $\rightarrow$ Chém hất $\rightarrow$ Nện đất xé toạc.
* **Tỉ lệ**: `--ar 16:9`
```text
2d action platformer sprite sheet, 3 sequential sword attack poses of a penitent knight, pose 1 rapid horizontal slash with white blade arc, pose 2 powerful upward diagonal swing, pose 3 two-handed colossal downward ground slam shattering stone with dust impact, side profile view, dark fantasy medieval gothic, isolated on pure black background, 8k --ar 16:9
```

### 2.6. Đòn Kết Liễu: Trừng Phạt Chí Mạng (The Verdict Execution Strike)
* **Mục đích**: Dáng đâm kiếm chữ X dứt điểm khi địch đầy 100 Sin.
* **Tỉ lệ**: `--ar 1:1`
```text
2d side-view cinematic execution pose, penitent knight thrusting greatsword in a devastating cross slash, explosive deep crimson blood flare and holy golden divine crackle bursting outward, violent impactful posture, dark fantasy hack and slash climax, isolated on solid black background, sharp graphic novel art style --ar 1:1
```

---

## ⛓️ 3. GÓI QUÁI VẬT & TRÙM (ENEMIES & BOSSES)

### 3.1. Quái Thường: Kẻ Tử Tù Bị Xích (The Chained Sinner)
* **Mục đích**: Quái đi tuần tra dưới hầm mộ, vung xích sắt quất người chơi.
* **Tỉ lệ**: `--ar 3:4`
```text
2d side-view platformer enemy sprite, full body profile view, an emaciated grotesque undead prisoner, rotting ashen flesh, torn bloodstained rags, wrists bound in heavy rusted iron chains with spiked flail ends, hunched menacing patrol stance, glowing sunken hollow eyes, isolated on solid pure black background, style of Blasphemous and Darkest Dungeon, 8k --ar 3:4
```

### 3.2. Dải Ảnh Quái Vung Xích & Bị Choáng (Attack & Stagger)
* **Mục đích**: Ảnh quất xích (tấn công) và ảnh đứng lảo đảo choáng váng khi đầy 100 Sin (Stagger).
* **Tỉ lệ**: `--ar 16:9`
```text
2d platformer monster sprite sheet, 3 action states of chained undead prisoner, frame 1 raising rusted chain overhead with red warning telegraph glow, frame 2 whipping chain forward in violent slash arc, frame 3 dizzy staggered stunned pose clutching head with broken chains dangling, side view, isolated on solid black background --ar 16:9
```

### 3.3. Quái Nhanh: Chó Săn Hủi (The Blighted Hound)
* **Mục đích**: Quái thú bò sát đất, lao cắn tầm thấp.
* **Tỉ lệ**: `--ar 16:9`
```text
2d side-view monster sprite, a grotesque mutated hunting hound, rotting skin, protruding spinal bone spikes, jaw split wide showing bloodied jagged fangs, low crouched leaping sprint pose, facing right, side profile platformer asset, isolated on solid pure black background, dark gothic horror --ar 16:9
```

### 3.4. Trùm Ải 1: Giám Ngục Khóc Than (Sir Gervaise - The Weeping Jailer)
* **Mục đích**: Boss khổng lồ cao gấp 2.5 lần người chơi ở cuối hầm mộ.
* **Tỉ lệ**: `--ar 3:4`
```text
2d side-view platformer boss sprite, colossal 3-meter tall hulking executioner prison warden, heavy rusted spiked plate armor, weeping iron death mask crying streams of dark blood, carrying a gigantic iron cage filled with glowing skulls strapped to hunched back, wielding a massive spiked mace in one hand and iron chain flail in other, terrifying boss battle stance, profile view facing left, isolated on solid pure black background, Blasphemous masterpiece --ar 3:4
```

### 3.5. Chiêu Thức Boss: Nện Đất & Quét Xích (Boss Attack Moves)
* **Mục đích**: Các đòn đánh uy lực tạo sóng xung kích trên mặt đất của Boss.
* **Tỉ lệ**: `--ar 16:9`
```text
2d action game boss sprite sheet, Sir Gervaise boss attack states, pose 1 raising colossal mace high overhead, pose 2 slamming mace into stone floor creating a forward shockwave of stone spikes and red energy, pose 3 sweeping massive chain horizontally across floor level, side-view platformer combat, isolated on solid black background --ar 16:9
```

---

## 🏛️ 4. GÓI MÔI TRƯỜNG, ĐỊA HÌNH & BỤC NHẢY (ENVIRONMENT & PLATFORMS)

### 4.1. Hậu Cảnh Đa Lớp Cuộn Cảnh (Parallax Background Layers)
* **Mục đích**: Tạo chiều sâu 3D cho game 2D khi người chơi chạy ngang.
* **Tỉ lệ**: `--ar 16:9`

#### Lớp Xa (Far Background - Tốc độ cuộn 0.2):
```text
2d platformer far parallax background layer, vast subterranean gothic catacomb cavern, distant towering stone arches, shadowy vaulted ceilings, faint cold pale moonlight through distant high ceiling grates, soft volumetric fog, dark gloomy atmosphere, seamless horizontally repeatable, painterly dark fantasy, 8k --ar 16:9
```

#### Lớp Giữa (Mid Background - Tốc độ cuộn 0.5):
```text
2d platformer mid parallax background layer, ancient gothic stone pillars carved with sorrowful weeping saints, rusted iron cages and spiked chains hanging from vaulted arches, iron cell doors in background walls, flickering candle sconces, atmospheric haze, transparent background cutout, dark fantasy --ar 16:9
```

### 4.2. Sàn Đá & Bục Nhảy Nổi (Ground & Floating Platforms)
* **Mục đích**: Làm gạch lát nền đất và các bục đá để Hiệp Sĩ nhảy lên nhảy xuống.
* **Tỉ lệ**: `--ar 16:9`
```text
2d platformer tileable tileset pieces, dark gothic catacomb architecture, top surface: cracked ancient stone slabs with chipped edges, side cross section: dark masonry bricks stained with dried blood and dark moss, floating stone platform slabs supported by rusted iron brackets, crisp collision edges, side-view 2d game asset, isolated on pure black background --ar 16:9
```

### 4.3. Đồ Vật Phá Hủy & Tương Tác (Destructible Props & Containers)
* **Mục đích**: Các vật thể người chơi chém vỡ được trên đường đi.
* **Tỉ lệ**: `--ar 1:1`
```text
2d side-view platformer game props set, 4 items: ancient clay burial urn filled with skeletal dust, rusted iron maiden torture cage, wooden practice dummy wrapped in barbed wire, standing stone shrine brazier with flickering flame, side perspective, crisp clean edges, isolated on pure black background, dark fantasy medieval --ar 1:1
```

---

## 💥 5. GÓI HIỆU ỨNG HÌNH ẢNH (VFX & SLASH ARCS)

### 5.1. Vệt Kiếm Chém Cung Tròn (Blade Slash Arcs)
* **Mục đích**: Ghép vào đầu lưỡi kiếm khi người chơi vung đòn.
* **Tỉ lệ**: `--ar 1:1`
```text
2d game visual effect sprite, sharp curved sword slash arc, glowing pure white steel edge with dark crimson blood trail, sharp crescent moon shape, motion blur effect, transparent clean background, high contrast hack and slash VFX asset --ar 1:1
```

### 5.2. Vệt Chém Chữ X Trừng Phạt (Verdict Cross Slash VFX)
* **Mục đích**: Hiệu ứng bùng nổ khi bấm phím E Trừng Phạt.
* **Tỉ lệ**: `--ar 1:1`
```text
2d game impact VFX, large stylized explosive X-shaped double slash mark, glowing burning holy crimson and golden divine sparks bursting outward, shattering crack lines, sharp comic book graphic impact effect, isolated on pure black background --ar 1:1
```

### 5.3. Bụi Đất Va Chạm (Ground Dust & Shockwave)
* **Mục đích**: Bụi bay lên khi nhân vật tiếp đất hoặc nện kiếm đòn 3.
* **Tỉ lệ**: `--ar 1:1`
```text
2d platformer dust impact particle effect, horizontal shockwave cloud puff rising from ground impact, stylized puff of grey ash and stone debris flying left and right, clean cartoon stylized VFX, isolated on pure black background --ar 1:1
```

---

## 🎮 6. GÓI GIAO DIỆN HÀNH ĐỘNG (ACTION HUD & ICONS)

### 6.1. Khung Thanh Máu & Guilt (Vessel HUD Frame)
* **Mục đích**: Thanh hiển thị Máu/Guilt ở góc trên bên trái màn hình.
* **Tỉ lệ**: `--ar 16:9`
```text
2d action RPG health bar UI frame, ornate gothic dark metal border adorned with thorny iron vines and weeping skull motif, slots for red blood bar and dark purple guilt bar, weathered rusted iron texture, clean UI game asset, transparent background --ar 16:9
```

### 6.2. Nút Bấm Tương Tác: [E] TRỪNG PHẠT!
* **Mục đích**: Icon nhấp nháy trên đầu quái khi nó đạt 100 Sin.
* **Tỉ lệ**: `--ar 1:1`
```text
Game UI prompt button icon, gothic golden glowing letter E inside an ornate spiked iron diamond frame, glowing with divine radiant golden and red light, execution trigger indicator, pixel perfect clean game UI asset, transparent background --ar 1:1
```

---

> 🚀 **Gợi ý sử dụng**: Giờ đây, bất kỳ khi nào bạn cần thêm một động tác chạy, một cú chém hay một bục đá, bạn chỉ cần copy prompt tương ứng bên trên dán vào Midjourney/Leonardo/Flux là có ngay tài nguyên chuẩn chỉ cho game 2D Platformer!
