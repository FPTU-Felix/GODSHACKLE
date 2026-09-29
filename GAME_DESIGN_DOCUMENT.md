# TÀI LIỆU THIẾT KẾ GAME TOÀN DIỆN (COMPREHENSIVE GAME DESIGN DOCUMENT)
**Tên dự án (Working Title):** *The Penitent: Blood & Sin* (Hiệp Sĩ Khổ Hạnh)  
**Thể loại:** Dark Fantasy Turn-based RPG (Chiến thuật theo lượt tàn khốc, Sinh tồn - Rủi ro cao, Phần thưởng lớn)  
**Phong cách hình ảnh:** 2D Góc Nhìn Ngang (Side-scrolling - Kiểu *Darkest Dungeon*, *Blasphemous*)  
**Nguồn cảm hứng:** *Berserk*, *Blasphemous*, *Fear & Hunger*, *Dark Souls*.

---

## 1. BỐI CẢNH THẾ GIỚI (WORLD LORE)

### 1.1. Thánh Đô Cẩm Thạch: Sancta Aurelia
- Từng là đỉnh cao của tôn giáo và quyền lực trung cổ, được xây dựng bằng cẩm thạch trắng, mái vòm dát vàng và tháp chuông ngân vang. Người dân tôn thờ **Chân Giáo Tinh Khiết (The Pure Faith)**, bài trừ mọi lỗi lầm trần thế.
- **Thực tại suy tàn:** Đá cẩm thạch bị nhuộm đen bởi bồ hóng và máu khô. Chuông bạc nứt toác rên rỉ, tượng thiên thần nhỏ lệ nhựa đen, tro xám rơi lả tả phủ kín các bãi tha ma.

### 1.2. Thảm Họa Khởi Nguồn: "Đại Lễ Tẩy Trần" & Đấng Tội Thần
- **Nghi lễ sai lầm:** Giáo Hoàng **Innocentius V** bí mật cử hành nghi lễ cấm *"Lễ Tẩy Trần Vĩnh Hằng"* dưới đáy Thánh Điện nhằm xóa bỏ tội lỗi nhân loại để nghênh đón Thần Linh.
- **Thực thể giáng thế:** Thứ bước ra từ vết nứt hư không là **"Kẻ Mang Ngàn Tội" (The Primeval Sin / Abyssal Paragon)**.
- **Bản chất Dịch Bệnh (The Scourge of Guilt):**
  - Biến mọi tội lỗi giấu kín trong tâm trí con người thành hiện thực vật lý tàn bạo:
    - Kẻ tham lam: Thịt biến thành vàng nóng chảy nung chín nội tạng.
    - Kẻ bạo lực: Xương thịt mọc ra gai nhọn, tự xé rách da dẻ.
    - Kẻ đạo đức giả: Mặt biến thành mặt nạ đá vỡ khóc ra mủ đen.

### 1.3. Ba Phe Phái Còn Sót Lại Trong Đống Đổ Nát
1. **Giáo Triều Biến Tính (The Blighted Synod):** Những giám mục, linh mục, nữ tu cuồng tín bị biến dạng nhưng tin rằng lở loét và gai nhọn là *"Ân Sủng Thánh Hóa"*. Tiếp tục tổ chức các buổi "Thánh Lễ Máu" để cưỡng ép rửa tội người sống sót.
2. **Hội Hiệp Sĩ Rỉ Sét (The Rustbound Order):** Đội quân cấm vệ từng cố thủ trong các pháo đài. Giáp sắt nung chảy và hàn dính vĩnh viễn vào xương tủy họ, biến họ thành những "cỗ máy thịt và thép" rỗng tuếch tuần tra trong vô thức.
3. **Những Kẻ Đau Khổ (The Afflicted / Penitent Remnants):** Thường dân, thợ thủ công lẩn trốn dưới hầm ngục. Họ **tự hành xác (Self-Mortification)** mỗi ngày (quất roi, tự đâm mù mắt) để nỗi đau thể xác xua tan tội lỗi, ngăn dịch bệnh biến tính mình.

---

## 2. HỆ THỐNG CHIẾN ĐẤU CỐT LÕI: ĐỐI XỨNG TỘI LỖI (THE DUALITY OF SIN)

Cả hai phe (Người chơi và Kẻ địch) đều vận hành xoay quanh hai cực: **MÁU (SINH MỆNH VẬT LÝ)** và **TỘI LỖI (SỨC NẶNG LINH HỒN)**:

```
[ PHE TA: HIỆP SĨ KHỔ HẠNH ]                [ PHE ĐỊCH: QUÁI VẬT DỊ GIÁO ]
        Dung Tích Sinh Mệnh                            Thanh Sinh Mệnh
┌──────────────────────────────┐              ┌──────────────────────────────┐
│  MÁU (BLOOD) │ GUILT (TỘI)   │              │          MÁU (HP)            │
└──────────────────────────────┘              └──────────────────────────────┘
 ◄── Ăn đòn        Sám Hối ──►                 ◄── Đòn đánh chém mất máu ──►
     Tội dâng      Đổi Tội->Máu               
                                              ┌──────────────────────────────┐
                                              │   THANH NGHIỆP TỘI (SIN)     │
                                              └──────────────────────────────┘
                                               ◄── Hiệp sĩ nhồi Nghiệp Tội ──►
                                                   Đầy 100% -> CHOÁNG (STUN)
                                                   -> Kích hoạt [ TRỪNG PHẠT ]
```

# 2. HỆ THỐNG CHIẾN ĐẤU CỐT LÕI (2D ACTION PLATFORMER)

### 2.1. Phe Ta: Bình Thông Nhau "Blood & Guilt"
1. **Khởi đầu:** `Máu (Blood)` = 100%, `Tội Lỗi (Guilt)` = 0.
2. **Nỗi Đau Biến Thành Sức Mạnh (Cuồng Tội):** 
   - Bị quái đánh hoặc chủ động bấm phím [K] tự rạch máu $\rightarrow$ Máu mất đi biến thành **Điểm Guilt**.
   - Guilt càng cao $\rightarrow$ Sát thương kiếm tăng vọt (+20% đến +120%), đòn đánh phát sáng rực lửa.
3. **Hành Động: SÁM HỐI / CHUỘC TỘI (Atonement - Giữ phím [L] để Quỳ Vận Niệm):**
   - **Không hồi máu tức thì!** Người chơi phải **nhấn và GIỮ phím [L]** trong 1.0 - 1.2 giây.
   - **Hình tượng:** Hiệp Sĩ cắm thanh cự kiếm xuống sàn đá, quỳ một chân chắp tay cầu nguyện (khóa di chuyển).
   - **Khung cửa rủi ro (Risk Window):** 
     - Người chơi có thể chủ động thả tay ra sớm để hủy niệm nếu thấy quái sắp lao vào.
     - **Nếu bị địch đánh trúng khi đang quỳ $\rightarrow$ Bị NGẮT NIỆM (Interrupted)!** Ăn trọn sát thương và không được hồi giọt máu nào!
     - Nếu giữ trọn vẹn 1.2s an toàn $\rightarrow$ Toàn bộ Guilt được thanh tẩy chuyển hóa thành Máu tươi!

### 2.2. Phe Địch: Thanh Nghiệp Tội & Đòn Trừng Phạt (Sin & Verdict)
1. **Thanh Nghiệp Tội (Sin Burden - 0 đến 100):**
   - Đòn chém 1 (+15 Sin), đòn chém 2 (+20 Sin), đòn chém 3 nện đất (+35 Sin).
2. **Trạng Thái Choáng Khi Đầy Sin (Stagger):**
   - Khi chạm mốc **100 Sin**: Quái vật bị **CHOÁNG VÁNG (Stagger)** trong **2.5 giây** đầu tiên (lảo đảo, không thể di chuyển hay tấn công).
   - Trên đầu hiện biểu tượng nhấp nháy: `⚡ [E] TRỪNG PHẠT!`.
3. **Cơ Chế Khóa Tội (Sin Lock) & Dứt Điểm Tự Do:**
   - Sau khi hết 2.5s choáng, quái vật tỉnh dậy và tiếp tục truy đuổi tấn công, **NHƯNG thanh Sin vẫn bị khóa cứng ở 100/100** và biểu tượng `[E]` vẫn chờ sẵn.
   - Người chơi có thể chọn thời điểm thích hợp nhất áp sát và bấm **[E]**:
     - Hiệp Sĩ lướt vút tới trước, thời gian ngưng đọng (Hit-stop slow motion 0.15s), chém vệt chữ X đỏ huyết xé toạc màn hình.
     - Gây sát thương chí mạng cực lớn (140 - 300 dmg), reset Sin về 0 và thưởng nóng cho Hiệp Sĩ +25 Guilt!

---

## 3. CẤU TRÚC KỊCH BẢN: ĐÍCH ĐẾN CHUNG & 4 KẾT CỤC RIÊNG

### 3.1. Đích Đến Tối Cao Chung (The Grand Convergence)
- Mọi nhân vật đều bị thôi thúc tiến về **Thánh Điện Tối Cao (The Grand Sanctum / Abyssal Cradle)** ở trung tâm vương quốc để đối mặt với **Giáo Hoàng Innocentius V** và **Thực Thể Kẻ Mang Ngàn Tội**.

### 3.2. Dàn 4 Nhân Vật Khởi Đầu (Sinners Roster)
1. 🗡️ **The Penitent Knight (Hiệp Sĩ Khổ Hạnh) – [Đại Kiếm]**
   - *Tội lỗi:* Sự Hèn Nhát & Phản Bội (Từng bỏ rơi huynh đệ trong Hội Hiệp Sĩ Rỉ Sét).
   - *Động lực:* Tìm sự xá tội và tự tay giải thoát cho anh em cũ.
   - *Kết cục riêng (The Absolution):* Chém đầu Giáo Hoàng, lần đầu cởi bỏ chiếc mũ sắt vô diện dưới ánh bình minh và ngã xuống thanh thản giữa đống gai nhọn rụng rời.
2. 📿 **The Chained Nun (Nữ Tu Mù Gông Xiềng) – [Roi Gai & Thánh Tích Máu]**
   - *Tội lỗi:* Sự Cuồng Tín Mù Quáng (Từng giao nộp chính gia đình lên giàn thiêu).
   - *Động lực:* Tìm lại đức tin, chất vấn sự giả tạo của Giáo Hoàng.
   - *Kết cục riêng (The False Saint):* Nhận ra Thần linh không tồn tại, tự mình hấp thụ tàn tích thực thể để trở thành "Thánh Mẫu Dị Giáo Mới".
3. 🪓 **The Condemned Headsman (Đao Phủ Bị Đày Ải) – [Đại Rìu / Chùy Gai]**
   - *Tội lỗi:* Sự Tàn Bạo & Khát Máu (Nghiện sát sinh, bị Giáo triều vứt bỏ xuống hầm ngục).
   - *Động lực:* Báo thù Giáo triều.
   - *Kết cục riêng (The Eternal Slaughter):* Chặt nát đầu Giáo Hoàng, đầu hàng hoàn toàn trước bản tính thú dữ, trở thành quái vật đao phủ mới canh giữ tàn tích.
4. 🧪 **The Heretic Apothecary (Thầy Thuốc Dị Giáo) – [Dao Mổ & Độc Dược]**
   - *Tội lỗi:* Lòng Kiêu Ngạo Của Kẻ Tìm Kiếm Tri Thức (Thử nghiệm vô nhân đạo trên người sống).
   - *Động lực:* Giải phẫu thực thể để tìm thuốc kiểm soát dịch bệnh.
   - *Kết cục riêng (The Flesh Transmutation):* Chiết xuất thành công huyết thanh bất tử từ tim thực thể, nhưng biến dị thành sinh vật nửa người nửa quái vật sống cô độc vĩnh viễn.

---

## 4. CẤU TRÚC MÀN CHƠI: BÁN PHI TUYẾN TÍNH (THE HUB & SPOKE)

```
                  [ TẦNG 1: HẦM MỘ GÔNG XIỀNG ]
                   (Tuyến tính - Dạy luật chơi)
                                 │
                                 ▼
                     [ ĐỀN THỜ HOANG PHẾ (HUB) ]
                   (Nơi nghỉ chân, nâng cấp đồ)
                                 │
         ┌───────────────────────┼───────────────────────┐
         ▼                       ▼                       ▼
  [ NHÁNH A: KHU PHỐ ]   [ NHÁNH B: TU VIỆN ]   [ NHÁNH C: ĐẦM LẦY ]
  - Gặp Hiệp Sĩ Rỉ Sét   - Gặp Giáo Triều        - Gặp Quái Dị Giáo
  - Nhặt Chùy & Khiên    - Nhặt Roi Gai          - Nhặt Dao Mổ
  - Cứu Đao Phủ          - Cứu Nữ Tu             - Cứu Thầy Thuốc
         │                       │                       │
         └───────────────────────┼───────────────────────┘
                                 ▼
                 [ TẦNG CUỐI: ĐẠI THÁNH ĐIỆN ]
               (Mở khóa khi hạ đủ 3 Boss nhánh)
```

### 4.1. Con Boss Đầu Tiên: Kẻ Cai Ngục Khóc Máu (Sir Gervaise)
- **Ngoại hình:** Khổng lồ 3m, cõng lồng sắt chứa đầy đầu lâu người chết đói, mặt nạ sắt chảy máu ròng ròng từ hốc mắt. Tay cầm chùm chìa khóa gai nhọn và thanh thiết bổng đóng đinh.
- **Vai trò:** Dạy người chơi cảm giác sinh tử của cơ chế: Ăn đòn nặng tích Guilt $\rightarrow$ Phản đòn nhồi Sin $\rightarrow$ Stun Boss để Phán Xét $\rightarrow$ Sám Hối hồi đầy máu.

---

## 5. THIẾT KẾ TRỰC QUAN & VẬN HÀNH (VISUAL & GAMEPLAY PACING)

### 5.1. Phong Cách 2D Góc Nhìn Ngang (Side-scrolling)
- **Hành lang khám phá:** Nhân vật bước đi ngang qua các hành lang Gothic u tối (bước chân nặng nề, kéo lê cự kiếm trên sàn đá). Đến cửa bấm tương tác để sang phòng mới.
- **Tiết kiệm Asset:** Nhân vật di chuyển ngoài bản đồ và nhân vật khi vào trận giao chiến **dùng chung 1 góc nhìn ngang**, tối ưu 50% chi phí vẽ sprite.

### 5.2. Nhịp Độ Chơi: Vượt Ải Sinh Tồn (Không Cày Level Ảo)
- Quái vật hiện rõ trên đường đi (không có random encounter). Người chơi có thể chọn giao chiến hoặc tìm đường né tránh nếu kiệt sức.
- Tiêu diệt quái rơi ra **Máu Tội Lỗi (Sin Remnants)** để dùng tại Bàn Thờ Khổ Hạnh:
  - Mở khóa chiêu thức mới trên Cây Vũ Khí.
  - Mở thêm ô gắn Chuỗi Tràng Hạt (Rosary Slots).
  - Nâng cấp bình máu/thánh tích.

---

## 6. PROMPTS CONCEPT ART (DÀNH CHO HỌA SĨ / AI GENERATION)

### 6.1. Nhân Vật Chính (The Penitent Knight)
> `Dark fantasy concept art, full body, a solemn penitent knight standing in heavy rusted black iron armor, the interior of the armor is lined with cruel iron thorns digging into flesh, dried blood dripping from joints, a completely featureless blind iron helmet with no eye slits, wrapped with rusted barbed wire and thorn rosary beads, wielding a massive colossal chipped executioner greatsword with blood channels, dark grim atmosphere, style of Berserk Kentaro Miura, Blasphemous, Darkest Dungeon, cinematic lighting, gothic, grimdark, highly detailed, 8k --ar 9:16`

### 6.2. Kẻ Cai Ngục Khóc Máu (The Weeping Jailer)
> `Dark fantasy boss concept art, a grotesque hulking 3-meter tall prison warden, rusted armor, wearing a weeping iron mask crying streams of dark red blood, carrying a large rusted iron cage full of starving human skulls on his back, wielding a giant key flail and a spiked rusted iron club, dark medieval dungeon background, horrific atmosphere, style of Berserk and Blasphemous, 8k --ar 9:16`

### 6.3. Bối Cảnh Chiến Trường (Gothic Cathedral Corridor)
> `Side-view battle stage background for a turn-based dark fantasy RPG, a ruined desecrated gothic cathedral corridor, shattered stained glass windows with faint moonlight shining through, blood-soaked stone floor, hanging rusted cages and chains, crumbling stone pillars with thorny vines, grim and oppressive atmosphere, Blasphemous aesthetic, painterly dark fantasy concept art --ar 16:9`
