Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D7611F3E2
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Dec 2019 21:16:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C942A20478;
	Sat, 14 Dec 2019 20:16:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vFA9uJ2egfKB; Sat, 14 Dec 2019 20:16:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DCA5A2043A;
	Sat, 14 Dec 2019 20:16:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A9F001BF342
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 20:16:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A711588178
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 20:16:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nw+oaTTFL0nl for <devel@linuxdriverproject.org>;
 Sat, 14 Dec 2019 20:16:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 74DE287E88
 for <devel@driverdev.osuosl.org>; Sat, 14 Dec 2019 20:16:31 +0000 (UTC)
Received: from faui04e.informatik.uni-erlangen.de
 (faui04e.informatik.uni-erlangen.de [IPv6:2001:638:a000:4130:131:188:30:135])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 42C7524144E;
 Sat, 14 Dec 2019 21:16:30 +0100 (CET)
Received: by faui04e.informatik.uni-erlangen.de (Postfix, from userid 28475)
 id 349F53C1272; Sat, 14 Dec 2019 21:16:30 +0100 (CET)
From: Sven Leykauf <sven_leykauf1@web.de>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 17/24] sm750fb: Fix Avoid CamelCase
Date: Sat, 14 Dec 2019 21:09:51 +0100
Message-Id: <20191214200937.10795-17-sven_leykauf1@web.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191214200937.10795-1-sven_leykauf1@web.de>
References: <20191214200937.10795-1-sven_leykauf1@web.de>
MIME-Version: 1.0
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: Daniel Bauer <daniel.j.bauer@fau.de>, Sven Leykauf <sven_leykauf1@web.de>,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change names functions and their parameters, according to coding style.
Patch upholds compileability.

Co-developed-by: Daniel Bauer <daniel.j.bauer@fau.de>
Signed-off-by: Daniel Bauer <daniel.j.bauer@fau.de>
Signed-off-by: Sven Leykauf <sven_leykauf1@web.de>
---
 drivers/staging/sm750fb/sm750_accel.c | 104 +++++++++++++-------------
 1 file changed, 52 insertions(+), 52 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index 0de18c1c8317..85ba131c7ef6 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -18,9 +18,9 @@
 
 #include "sm750.h"
 #include "sm750_accel.h"
-static inline void write_dpr(struct lynx_accel *accel, int offset, u32 regValue)
+static inline void write_dpr(struct lynx_accel *accel, int offset, u32 reg_value)
 {
-	writel(regValue, accel->dpr_base + offset);
+	writel(reg_value, accel->dpr_base + offset);
 }
 
 static inline u32 read_dpr(struct lynx_accel *accel, int offset)
@@ -28,7 +28,7 @@ static inline u32 read_dpr(struct lynx_accel *accel, int offset)
 	return readl(accel->dpr_base + offset);
 }
 
-static inline void write_dpPort(struct lynx_accel *accel, u32 data)
+static inline void write_dp_port(struct lynx_accel *accel, u32 data)
 {
 	writel(data, accel->dp_port_base);
 }
@@ -86,7 +86,7 @@ void sm750_hw_set2dformat(struct lynx_accel *accel, int fmt)
 }
 
 int sm750_hw_fillrect(struct lynx_accel *accel,
-		      u32 base, u32 pitch, u32 Bpp,
+		      u32 base, u32 pitch, u32 bpp,
 		      u32 x, u32 y, u32 width, u32 height,
 		      u32 color, u32 rop)
 {
@@ -103,14 +103,14 @@ int sm750_hw_fillrect(struct lynx_accel *accel,
 
 	write_dpr(accel, DE_WINDOW_DESTINATION_BASE, base); /* dpr40 */
 	write_dpr(accel, DE_PITCH,
-		  ((pitch / Bpp << DE_PITCH_DESTINATION_SHIFT) &
+		  ((pitch / bpp << DE_PITCH_DESTINATION_SHIFT) &
 		   DE_PITCH_DESTINATION_MASK) |
-		  (pitch / Bpp & DE_PITCH_SOURCE_MASK)); /* dpr10 */
+		  (pitch / bpp & DE_PITCH_SOURCE_MASK)); /* dpr10 */
 
 	write_dpr(accel, DE_WINDOW_WIDTH,
-		  ((pitch / Bpp << DE_WINDOW_WIDTH_DST_SHIFT) &
+		  ((pitch / bpp << DE_WINDOW_WIDTH_DST_SHIFT) &
 		   DE_WINDOW_WIDTH_DST_MASK) |
-		   (pitch / Bpp & DE_WINDOW_WIDTH_SRC_MASK)); /* dpr44 */
+		   (pitch / bpp & DE_WINDOW_WIDTH_SRC_MASK)); /* dpr44 */
 
 	write_dpr(accel, DE_FOREGROUND, color); /* DPR14 */
 
@@ -132,13 +132,13 @@ int sm750_hw_fillrect(struct lynx_accel *accel,
 
 /**
  * sm750_hm_copyarea
- * @sBase: Address of source: offset in frame buffer
- * @sPitch: Pitch value of source surface in BYTE
+ * @s_base: Address of source: offset in frame buffer
+ * @s_pitch: Pitch value of source surface in BYTE
  * @sx: Starting x coordinate of source surface
  * @sy: Starting y coordinate of source surface
- * @dBase: Address of destination: offset in frame buffer
- * @dPitch: Pitch value of destination surface in BYTE
- * @Bpp: Color depth of destination surface
+ * @d_base: Address of destination: offset in frame buffer
+ * @d_pitch: Pitch value of destination surface in BYTE
+ * @bpp: Color depth of destination surface
  * @dx: Starting x coordinate of destination surface
  * @dy: Starting y coordinate of destination surface
  * @width: width of rectangle in pixel value
@@ -146,10 +146,10 @@ int sm750_hw_fillrect(struct lynx_accel *accel,
  * @rop2: ROP value
  */
 int sm750_hw_copyarea(struct lynx_accel *accel,
-		      unsigned int sBase, unsigned int sPitch,
+		      unsigned int s_base, unsigned int s_pitch,
 		      unsigned int sx, unsigned int sy,
-		      unsigned int dBase, unsigned int dPitch,
-		      unsigned int Bpp, unsigned int dx, unsigned int dy,
+		      unsigned int d_base, unsigned int d_pitch,
+		      unsigned int bpp, unsigned int dx, unsigned int dy,
 		      unsigned int width, unsigned int height,
 		      unsigned int rop2)
 {
@@ -160,7 +160,7 @@ int sm750_hw_copyarea(struct lynx_accel *accel,
 	de_ctrl = 0;
 
 	/* If source and destination are the same surface, need to check for overlay cases */
-	if (sBase == dBase && sPitch == dPitch) {
+	if (s_base == d_base && s_pitch == d_pitch) {
 		/* Determine direction of operation */
 		if (sy < dy) {
 			/*  +----------+
@@ -234,14 +234,14 @@ int sm750_hw_copyarea(struct lynx_accel *accel,
 	 * It is an address offset (128 bit aligned)
 	 * from the beginning of frame buffer.
 	 */
-	write_dpr(accel, DE_WINDOW_SOURCE_BASE, sBase); /* dpr40 */
+	write_dpr(accel, DE_WINDOW_SOURCE_BASE, s_base); /* dpr40 */
 
 	/*
 	 * 2D Destination Base.
 	 * It is an address offset (128 bit aligned)
 	 * from the beginning of frame buffer.
 	 */
-	write_dpr(accel, DE_WINDOW_DESTINATION_BASE, dBase); /* dpr44 */
+	write_dpr(accel, DE_WINDOW_DESTINATION_BASE, d_base); /* dpr44 */
 
 	/*
 	 * Program pitch (distance between the 1st points of two adjacent lines).
@@ -249,9 +249,9 @@ int sm750_hw_copyarea(struct lynx_accel *accel,
 	 * pixel values. Need Byte to pixel conversion.
 	 */
 	write_dpr(accel, DE_PITCH,
-		  ((dPitch / Bpp << DE_PITCH_DESTINATION_SHIFT) &
+		  ((d_pitch / bpp << DE_PITCH_DESTINATION_SHIFT) &
 		   DE_PITCH_DESTINATION_MASK) |
-		  (sPitch / Bpp & DE_PITCH_SOURCE_MASK)); /* dpr10 */
+		  (s_pitch / bpp & DE_PITCH_SOURCE_MASK)); /* dpr10 */
 
 	/*
 	 * Screen Window width in Pixels.
@@ -259,9 +259,9 @@ int sm750_hw_copyarea(struct lynx_accel *accel,
 	 * for a given point.
 	 */
 	write_dpr(accel, DE_WINDOW_WIDTH,
-		  ((dPitch / Bpp << DE_WINDOW_WIDTH_DST_SHIFT) &
+		  ((d_pitch / bpp << DE_WINDOW_WIDTH_DST_SHIFT) &
 		   DE_WINDOW_WIDTH_DST_MASK) |
-		  (sPitch / Bpp & DE_WINDOW_WIDTH_SRC_MASK)); /* dpr3c */
+		  (s_pitch / bpp & DE_WINDOW_WIDTH_SRC_MASK)); /* dpr3c */
 
 	if (accel->de_wait() != 0)
 		return -1;
@@ -284,7 +284,7 @@ int sm750_hw_copyarea(struct lynx_accel *accel,
 	return 0;
 }
 
-static unsigned int deGetTransparency(struct lynx_accel *accel)
+static unsigned int de_get_transparency(struct lynx_accel *accel)
 {
 	unsigned int de_ctrl;
 
@@ -298,26 +298,26 @@ static unsigned int deGetTransparency(struct lynx_accel *accel)
 
 /**
  * sm750_hw_imageblit
- * @pSrcbuf: pointer to start of source buffer in system memory
- * @srcDelta: Pitch value (in bytes) of the source buffer, +ive means top down
+ * @p_srcbuf: pointer to start of source buffer in system memory
+ * @src_delta: Pitch value (in bytes) of the source buffer, +ive means top down
  *	      and -ive mean button up
- * @startBit: Mono data can start at any bit in a byte, this value should be
+ * @start_bit: Mono data can start at any bit in a byte, this value should be
  *	      0 to 7
- * @dBase: Address of destination: offset in frame buffer
- * @dPitch: Pitch value of destination surface in BYTE
- * @bytePerPixel: Color depth of destination surface
+ * @d_base: Address of destination: offset in frame buffer
+ * @d_pitch: Pitch value of destination surface in BYTE
+ * @byte_per_pixel: Color depth of destination surface
  * @dx: Starting x coordinate of destination surface
  * @dy: Starting y coordinate of destination surface
  * @width: width of rectangle in pixel value
  * @height: height of rectangle in pixel value
- * @fColor: Foreground color (corresponding to a 1 in the monochrome data
- * @bColor: Background color (corresponding to a 0 in the monochrome data
+ * @f_color: Foreground color (corresponding to a 1 in the monochrome data
+ * @b_color: Background color (corresponding to a 0 in the monochrome data
  * @rop2: ROP value
  */
-int sm750_hw_imageblit(struct lynx_accel *accel, const char *pSrcbuf,
-		       u32 srcDelta, u32 startBit, u32 dBase, u32 dPitch,
-		       u32 bytePerPixel, u32 dx, u32 dy, u32 width,
-		       u32 height, u32 fColor, u32 bColor, u32 rop2)
+int sm750_hw_imageblit(struct lynx_accel *accel, const char *p_srcbuf,
+		       u32 src_delta, u32 start_bit, u32 d_base, u32 d_pitch,
+		       u32 byte_per_pixel, u32 dx, u32 dy, u32 width,
+		       u32 height, u32 f_color, u32 b_color, u32 rop2)
 {
 	unsigned int ulBytesPerScan;
 	unsigned int ul4BytesPerScan;
@@ -326,8 +326,8 @@ int sm750_hw_imageblit(struct lynx_accel *accel, const char *pSrcbuf,
 	unsigned char ajRemain[4];
 	int i, j;
 
-	startBit &= 7; /* Just make sure the start bit is within legal range */
-	ulBytesPerScan = (width + startBit + 7) / 8;
+	start_bit &= 7; /* Just make sure the start bit is within legal range */
+	ulBytesPerScan = (width + start_bit + 7) / 8;
 	ul4BytesPerScan = ulBytesPerScan & ~3;
 	ulBytesRemain = ulBytesPerScan & 3;
 
@@ -344,7 +344,7 @@ int sm750_hw_imageblit(struct lynx_accel *accel, const char *pSrcbuf,
 	 * It is an address offset (128 bit aligned)
 	 * from the beginning of frame buffer.
 	 */
-	write_dpr(accel, DE_WINDOW_DESTINATION_BASE, dBase);
+	write_dpr(accel, DE_WINDOW_DESTINATION_BASE, d_base);
 
 	/*
 	 * Program pitch (distance between the 1st points of two adjacent
@@ -352,9 +352,9 @@ int sm750_hw_imageblit(struct lynx_accel *accel, const char *pSrcbuf,
 	 * register uses pixel values. Need Byte to pixel conversion.
 	 */
 	write_dpr(accel, DE_PITCH,
-		  ((dPitch / bytePerPixel << DE_PITCH_DESTINATION_SHIFT) &
+		  ((d_pitch / byte_per_pixel << DE_PITCH_DESTINATION_SHIFT) &
 		   DE_PITCH_DESTINATION_MASK) |
-		  (dPitch / bytePerPixel & DE_PITCH_SOURCE_MASK)); /* dpr10 */
+		  (d_pitch / byte_per_pixel & DE_PITCH_SOURCE_MASK)); /* dpr10 */
 
 	/*
 	 * Screen Window width in Pixels.
@@ -362,17 +362,17 @@ int sm750_hw_imageblit(struct lynx_accel *accel, const char *pSrcbuf,
 	 * in frame buffer for a given point.
 	 */
 	write_dpr(accel, DE_WINDOW_WIDTH,
-		  ((dPitch / bytePerPixel << DE_WINDOW_WIDTH_DST_SHIFT) &
+		  ((d_pitch / byte_per_pixel << DE_WINDOW_WIDTH_DST_SHIFT) &
 		   DE_WINDOW_WIDTH_DST_MASK) |
-		  (dPitch / bytePerPixel & DE_WINDOW_WIDTH_SRC_MASK));
+		  (d_pitch / byte_per_pixel & DE_WINDOW_WIDTH_SRC_MASK));
 
 	 /*
 	  * Note: For 2D Source in Host Write, only X_K1_MONO field is needed,
 	  * and Y_K2 field is not used.
-	  * For mono bitmap, use startBit for X_K1.
+	  * For mono bitmap, use start_bit for X_K1.
 	  */
 	write_dpr(accel, DE_SOURCE,
-		  (startBit << DE_SOURCE_X_K1_SHIFT) &
+		  (start_bit << DE_SOURCE_X_K1_SHIFT) &
 		  DE_SOURCE_X_K1_MONO_MASK); /* dpr00 */
 
 	write_dpr(accel, DE_DESTINATION,
@@ -383,28 +383,28 @@ int sm750_hw_imageblit(struct lynx_accel *accel, const char *pSrcbuf,
 		  ((width << DE_DIMENSION_X_SHIFT) & DE_DIMENSION_X_MASK) |
 		  (height & DE_DIMENSION_Y_ET_MASK)); /* dpr08 */
 
-	write_dpr(accel, DE_FOREGROUND, fColor);
-	write_dpr(accel, DE_BACKGROUND, bColor);
+	write_dpr(accel, DE_FOREGROUND, f_color);
+	write_dpr(accel, DE_BACKGROUND, b_color);
 
 	de_ctrl = (rop2 & DE_CONTROL_ROP_MASK) |
 		DE_CONTROL_ROP_SELECT | DE_CONTROL_COMMAND_HOST_WRITE |
 		DE_CONTROL_HOST | DE_CONTROL_STATUS;
 
-	write_dpr(accel, DE_CONTROL, de_ctrl | deGetTransparency(accel));
+	write_dpr(accel, DE_CONTROL, de_ctrl | de_get_transparency(accel));
 
 	/* Write MONO data (line by line) to 2D Engine data port */
 	for (i = 0; i < height; i++) {
 		/* For each line, send the data in chunks of 4 bytes */
 		for (j = 0; j < (ul4BytesPerScan / 4); j++)
-			write_dpPort(accel, *(unsigned int *)(pSrcbuf + (j * 4)));
+			write_dp_port(accel, *(unsigned int *)(p_srcbuf + (j * 4)));
 
 		if (ulBytesRemain) {
-			memcpy(ajRemain, pSrcbuf + ul4BytesPerScan,
+			memcpy(ajRemain, p_srcbuf + ul4BytesPerScan,
 			       ulBytesRemain);
-			write_dpPort(accel, *(unsigned int *)ajRemain);
+			write_dp_port(accel, *(unsigned int *)ajRemain);
 		}
 
-		pSrcbuf += srcDelta;
+		p_srcbuf += src_delta;
 	}
 
 	return 0;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
