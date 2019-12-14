Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5338E11F3DD
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Dec 2019 21:16:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3538C881AB;
	Sat, 14 Dec 2019 20:16:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xcJd+JoGQWtc; Sat, 14 Dec 2019 20:16:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 67F6488178;
	Sat, 14 Dec 2019 20:16:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A84F41BF342
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 20:15:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8A9EA876A4
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 20:15:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5L4BcEI0OU0c for <devel@linuxdriverproject.org>;
 Sat, 14 Dec 2019 20:15:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 79B9587653
 for <devel@driverdev.osuosl.org>; Sat, 14 Dec 2019 20:15:56 +0000 (UTC)
Received: from faui04e.informatik.uni-erlangen.de
 (faui04e.informatik.uni-erlangen.de [131.188.30.135])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 484D124144E;
 Sat, 14 Dec 2019 21:15:55 +0100 (CET)
Received: by faui04e.informatik.uni-erlangen.de (Postfix, from userid 28475)
 id 3A8A23C1272; Sat, 14 Dec 2019 21:15:55 +0100 (CET)
From: Sven Leykauf <sven_leykauf1@web.de>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 14/24] sm750fb: Fix Avoid CamelCase
Date: Sat, 14 Dec 2019 21:09:45 +0100
Message-Id: <20191214200937.10795-14-sven_leykauf1@web.de>
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

Change names of struct member variables, according to coding style.

Patch upholds compileability.

Dependencies: sm750.h
	      sm750.c
	      sm750_hw.c

Co-developed-by: Daniel Bauer <daniel.j.bauer@fau.de>
Signed-off-by: Daniel Bauer <daniel.j.bauer@fau.de>
Signed-off-by: Sven Leykauf <sven_leykauf1@web.de>
---
 drivers/staging/sm750fb/sm750.c    | 44 +++++++++++++++---------------
 drivers/staging/sm750fb/sm750.h    |  8 +++---
 drivers/staging/sm750fb/sm750_hw.c |  6 ++--
 3 files changed, 29 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 2eb1497f33b6..5b24d7e29921 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -175,7 +175,7 @@ static void lynxfb_ops_fillrect(struct fb_info *info,
 	 * each time 2d function begin to work,below three variable always need
 	 * be set, seems we can put them together in some place
 	 */
-	base = par->crtc.oScreen;
+	base = par->crtc.o_screen;
 	pitch = info->fix.line_length;
 	Bpp = info->var.bits_per_pixel >> 3;
 
@@ -213,7 +213,7 @@ static void lynxfb_ops_copyarea(struct fb_info *info,
 	 * each time 2d function begin to work,below three variable always need
 	 * be set, seems we can put them together in some place
 	 */
-	base = par->crtc.oScreen;
+	base = par->crtc.o_screen;
 	pitch = info->fix.line_length;
 	Bpp = info->var.bits_per_pixel >> 3;
 
@@ -247,7 +247,7 @@ static void lynxfb_ops_imageblit(struct fb_info *info,
 	 * each time 2d function begin to work,below three variable always need
 	 * be set, seems we can put them together in some place
 	 */
-	base = par->crtc.oScreen;
+	base = par->crtc.o_screen;
 	pitch = info->fix.line_length;
 	Bpp = info->var.bits_per_pixel >> 3;
 
@@ -483,7 +483,7 @@ static int lynxfb_resume(struct pci_dev *pdev)
 		crtc = &par->crtc;
 		cursor = &crtc->cursor;
 		memset_io(cursor->vstart, 0x0, cursor->size);
-		memset_io(crtc->vScreen, 0x0, crtc->vidmem_size);
+		memset_io(crtc->v_screen, 0x0, crtc->vidmem_size);
 		lynxfb_ops_set_par(info);
 		fb_set_suspend(info, 0);
 	}
@@ -495,7 +495,7 @@ static int lynxfb_resume(struct pci_dev *pdev)
 		crtc = &par->crtc;
 		cursor = &crtc->cursor;
 		memset_io(cursor->vstart, 0x0, cursor->size);
-		memset_io(crtc->vScreen, 0x0, crtc->vidmem_size);
+		memset_io(crtc->v_screen, 0x0, crtc->vidmem_size);
 		lynxfb_ops_set_par(info);
 		fb_set_suspend(info, 0);
 	}
@@ -676,42 +676,42 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 	case sm750_simul_pri:
 		output->paths = sm750_pnc;
 		crtc->channel = sm750_primary;
-		crtc->oScreen = 0;
-		crtc->vScreen = sm750_dev->pv_mem;
+		crtc->o_screen = 0;
+		crtc->v_screen = sm750_dev->pv_mem;
 		pr_info("use simul primary mode\n");
 		break;
 	case sm750_simul_sec:
 		output->paths = sm750_pnc;
 		crtc->channel = sm750_secondary;
-		crtc->oScreen = 0;
-		crtc->vScreen = sm750_dev->pv_mem;
+		crtc->o_screen = 0;
+		crtc->v_screen = sm750_dev->pv_mem;
 		break;
 	case sm750_dual_normal:
 		if (par->index == 0) {
 			output->paths = sm750_panel;
 			crtc->channel = sm750_primary;
-			crtc->oScreen = 0;
-			crtc->vScreen = sm750_dev->pv_mem;
+			crtc->o_screen = 0;
+			crtc->v_screen = sm750_dev->pv_mem;
 		} else {
 			output->paths = sm750_crt;
 			crtc->channel = sm750_secondary;
-			/* not consider of padding stuffs for oScreen,need fix */
-			crtc->oScreen = sm750_dev->vidmem_size >> 1;
-			crtc->vScreen = sm750_dev->pv_mem + crtc->oScreen;
+			/* not consider of padding stuffs for o_screen,need fix */
+			crtc->o_screen = sm750_dev->vidmem_size >> 1;
+			crtc->v_screen = sm750_dev->pv_mem + crtc->o_screen;
 		}
 		break;
 	case sm750_dual_swap:
 		if (par->index == 0) {
 			output->paths = sm750_panel;
 			crtc->channel = sm750_secondary;
-			crtc->oScreen = 0;
-			crtc->vScreen = sm750_dev->pv_mem;
+			crtc->o_screen = 0;
+			crtc->v_screen = sm750_dev->pv_mem;
 		} else {
 			output->paths = sm750_crt;
 			crtc->channel = sm750_primary;
-			/* not consider of padding stuffs for oScreen,need fix */
-			crtc->oScreen = sm750_dev->vidmem_size >> 1;
-			crtc->vScreen = sm750_dev->pv_mem + crtc->oScreen;
+			/* not consider of padding stuffs for o_screen,need fix */
+			crtc->o_screen = sm750_dev->vidmem_size >> 1;
+			crtc->v_screen = sm750_dev->pv_mem + crtc->o_screen;
 		}
 		break;
 	default:
@@ -778,7 +778,7 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 	 * set current cursor variable and proc pointer,
 	 * must be set after crtc member initialized
 	 */
-	crtc->cursor.offset = crtc->oScreen + crtc->vidmem_size - 1024;
+	crtc->cursor.offset = crtc->o_screen + crtc->vidmem_size - 1024;
 	crtc->cursor.mmio = sm750_dev->pv_reg +
 		0x800f0 + (int)crtc->channel * 0x140;
 
@@ -861,7 +861,7 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 			    crtc->line_pad);
 
 	info->pseudo_palette = &par->pseudo_palette[0];
-	info->screen_base = crtc->vScreen;
+	info->screen_base = crtc->v_screen;
 	pr_debug("screen_base vaddr = %p\n", info->screen_base);
 	info->screen_size = line_length * var->yres_virtual;
 	info->flags = FBINFO_FLAG_DEFAULT | 0;
@@ -876,7 +876,7 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 
 	strlcpy(fix->id, fixId[index], sizeof(fix->id));
 
-	fix->smem_start = crtc->oScreen + sm750_dev->vidmem_start;
+	fix->smem_start = crtc->o_screen + sm750_dev->vidmem_start;
 	pr_info("fix->smem_start = %lx\n", fix->smem_start);
 	/*
 	 * according to mmap experiment from user space application,
diff --git a/drivers/staging/sm750fb/sm750.h b/drivers/staging/sm750fb/sm750.h
index 4f773d498fa5..d6cf655e5990 100644
--- a/drivers/staging/sm750fb/sm750.h
+++ b/drivers/staging/sm750fb/sm750.h
@@ -125,10 +125,10 @@ struct lynx_cursor {
 };
 
 struct lynxfb_crtc {
-	unsigned char __iomem *vCursor; /* virtual address of cursor */
-	unsigned char __iomem *vScreen; /* virtual address of on_screen */
-	int oCursor; /* cursor address offset in vidmem */
-	int oScreen; /* onscreen address offset in vidmem */
+	unsigned char __iomem *v_cursor; /* virtual address of cursor */
+	unsigned char __iomem *v_screen; /* virtual address of on_screen */
+	int o_cursor; /* cursor address offset in vidmem */
+	int o_screen; /* onscreen address offset in vidmem */
 	int channel;/* which channel this crtc stands for*/
 	resource_size_t vidmem_size;/* this view's video memory max size */
 
diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index f62952d9831a..0f279f8bc15a 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -314,7 +314,7 @@ int hw_sm750_crtc_set_mode(struct lynxfb_crtc *crtc,
 	if (crtc->channel != sm750_secondary) {
 		/* set pitch, offset, width, start address, etc... */
 		poke32(PANEL_FB_ADDRESS,
-		       crtc->oScreen & PANEL_FB_ADDRESS_ADDRESS_MASK);
+		       crtc->o_screen & PANEL_FB_ADDRESS_ADDRESS_MASK);
 
 		reg = var->xres * (var->bits_per_pixel >> 3);
 		/*
@@ -350,7 +350,7 @@ int hw_sm750_crtc_set_mode(struct lynxfb_crtc *crtc,
 		poke32(PANEL_DISPLAY_CTRL, reg | (var->bits_per_pixel >> 4));
 	} else {
 		/* not implemented now */
-		poke32(CRT_FB_ADDRESS, crtc->oScreen);
+		poke32(CRT_FB_ADDRESS, crtc->o_screen);
 		reg = var->xres * (var->bits_per_pixel >> 3);
 		/*
 		 * crtc->channel is not equal to par->index on numeric,
@@ -554,7 +554,7 @@ int hw_sm750_pan_display(struct lynxfb_crtc *crtc,
 
 	total = var->yoffset * info->fix.line_length +
 		((var->xoffset * var->bits_per_pixel) >> 3);
-	total += crtc->oScreen;
+	total += crtc->o_screen;
 	if (crtc->channel == sm750_primary) {
 		poke32(PANEL_FB_ADDRESS,
 		       peek32(PANEL_FB_ADDRESS) |
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
