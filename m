Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4469ABC84
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Sep 2019 17:31:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 26E7F87C56;
	Fri,  6 Sep 2019 15:31:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nmXJZ-PXeNop; Fri,  6 Sep 2019 15:31:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B14B087B08;
	Fri,  6 Sep 2019 15:31:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5DB731BF31E
 for <devel@linuxdriverproject.org>; Fri,  6 Sep 2019 15:30:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5A8DD87E88
 for <devel@linuxdriverproject.org>; Fri,  6 Sep 2019 15:30:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hw59nz5NMNSN for <devel@linuxdriverproject.org>;
 Fri,  6 Sep 2019 15:30:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 81E6187E7B
 for <devel@driverdev.osuosl.org>; Fri,  6 Sep 2019 15:30:56 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1i6GCL-0003KH-3u; Fri, 06 Sep 2019 15:30:53 +0000
From: Colin King <colin.king@canonical.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: [PATCH] staging: fbtft: make several arrays static const,
 makes object smaller
Date: Fri,  6 Sep 2019 16:30:52 +0100
Message-Id: <20190906153052.31846-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

Don't populate the arrays on the stack but instead make them
static const. Makes the object code smaller by 1329 bytes.

Before:
   text	   data	    bss	    dec	    hex	filename
   5581	   1488	     64	   7133	   1bdd	drivers/staging/fbtft/fb_hx8340bn.o
   5444	   1264	      0	   6708	   1a34	drivers/staging/fbtft/fb_hx8347d.o
   3581	   1360	      0	   4941	   134d	drivers/staging/fbtft/fb_ili9163.o
   7154	   1552	      0	   8706	   2202	drivers/staging/fbtft/fb_ili9320.o
   7478	   2544	      0	  10022	   2726	drivers/staging/fbtft/fb_ili9325.o
   6327	   1424	      0	   7751	   1e47	drivers/staging/fbtft/fb_s6d1121.o
   6498	   1776	      0	   8274	   2052	drivers/staging/fbtft/fb_ssd1289.o

After:
   text	   data	    bss	    dec	    hex	filename
   5376	   1584	     64	   7024	   1b70	drivers/staging/fbtft/fb_hx8340bn.o
   5276	   1328	      0	   6604	   19cc	drivers/staging/fbtft/fb_hx8347d.o
   3581	   1360	      0	   4941	   134d	drivers/staging/fbtft/fb_ili9163.o
   6905	   1616	      0	   8521	   2149	drivers/staging/fbtft/fb_ili9320.o
   7229	   2608	      0	   9837	   266d	drivers/staging/fbtft/fb_ili9325.o
   6030	   1488	      0	   7518	   1d5e	drivers/staging/fbtft/fb_s6d1121.o
   6249	   1872	      0	   8121	   1fb9	drivers/staging/fbtft/fb_ssd1289.o

(gcc version 9.2.1, amd64)

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/fbtft/fb_hx8340bn.c | 2 +-
 drivers/staging/fbtft/fb_hx8347d.c  | 2 +-
 drivers/staging/fbtft/fb_ili9163.c  | 2 +-
 drivers/staging/fbtft/fb_ili9320.c  | 2 +-
 drivers/staging/fbtft/fb_ili9325.c  | 2 +-
 drivers/staging/fbtft/fb_s6d1121.c  | 2 +-
 drivers/staging/fbtft/fb_ssd1289.c  | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/fbtft/fb_hx8340bn.c b/drivers/staging/fbtft/fb_hx8340bn.c
index d47dcf31fffb..2fd7b87ea0ce 100644
--- a/drivers/staging/fbtft/fb_hx8340bn.c
+++ b/drivers/staging/fbtft/fb_hx8340bn.c
@@ -151,7 +151,7 @@ static int set_var(struct fbtft_par *par)
 #define CURVE(num, idx)  curves[(num) * par->gamma.num_values + (idx)]
 static int set_gamma(struct fbtft_par *par, u32 *curves)
 {
-	unsigned long mask[] = {
+	static const unsigned long mask[] = {
 		0x0f, 0x0f, 0x1f, 0x0f, 0x0f, 0x0f, 0x1f, 0x07, 0x07, 0x07,
 		0x07, 0x07, 0x07, 0x03, 0x03, 0x0f, 0x0f, 0x1f, 0x0f, 0x0f,
 		0x0f, 0x1f, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x00, 0x00,
diff --git a/drivers/staging/fbtft/fb_hx8347d.c b/drivers/staging/fbtft/fb_hx8347d.c
index 3427a858d17c..37eaf0862c5b 100644
--- a/drivers/staging/fbtft/fb_hx8347d.c
+++ b/drivers/staging/fbtft/fb_hx8347d.c
@@ -95,7 +95,7 @@ static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
 #define CURVE(num, idx)  curves[(num) * par->gamma.num_values + (idx)]
 static int set_gamma(struct fbtft_par *par, u32 *curves)
 {
-	unsigned long mask[] = {
+	static const unsigned long mask[] = {
 		0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x7f, 0x7f, 0x1f, 0x1f,
 		0x1f, 0x1f, 0x1f, 0x0f,
 	};
diff --git a/drivers/staging/fbtft/fb_ili9163.c b/drivers/staging/fbtft/fb_ili9163.c
index fd32376700e2..05648c3ffe47 100644
--- a/drivers/staging/fbtft/fb_ili9163.c
+++ b/drivers/staging/fbtft/fb_ili9163.c
@@ -195,7 +195,7 @@ static int set_var(struct fbtft_par *par)
 #define CURVE(num, idx)  curves[(num) * par->gamma.num_values + (idx)]
 static int gamma_adj(struct fbtft_par *par, u32 *curves)
 {
-	unsigned long mask[] = {
+	static const unsigned long mask[] = {
 		0x3F, 0x3F, 0x3F, 0x3F, 0x3F,
 		0x1f, 0x3f, 0x0f, 0x0f, 0x7f, 0x1f,
 		0x3F, 0x3F, 0x3F, 0x3F, 0x3F};
diff --git a/drivers/staging/fbtft/fb_ili9320.c b/drivers/staging/fbtft/fb_ili9320.c
index ea6e001288ce..f2e72d14431d 100644
--- a/drivers/staging/fbtft/fb_ili9320.c
+++ b/drivers/staging/fbtft/fb_ili9320.c
@@ -214,7 +214,7 @@ static int set_var(struct fbtft_par *par)
 #define CURVE(num, idx)  curves[(num) * par->gamma.num_values + (idx)]
 static int set_gamma(struct fbtft_par *par, u32 *curves)
 {
-	unsigned long mask[] = {
+	static const unsigned long mask[] = {
 		0x1f, 0x1f, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07,
 		0x1f, 0x1f, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07,
 	};
diff --git a/drivers/staging/fbtft/fb_ili9325.c b/drivers/staging/fbtft/fb_ili9325.c
index 85e54a10ed72..c9aa4cb43123 100644
--- a/drivers/staging/fbtft/fb_ili9325.c
+++ b/drivers/staging/fbtft/fb_ili9325.c
@@ -208,7 +208,7 @@ static int set_var(struct fbtft_par *par)
 #define CURVE(num, idx)  curves[(num) * par->gamma.num_values + (idx)]
 static int set_gamma(struct fbtft_par *par, u32 *curves)
 {
-	unsigned long mask[] = {
+	static const unsigned long mask[] = {
 		0x1f, 0x1f, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07,
 		0x1f, 0x1f, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07,
 	};
diff --git a/drivers/staging/fbtft/fb_s6d1121.c b/drivers/staging/fbtft/fb_s6d1121.c
index 5a129b1352cc..8c7de3290343 100644
--- a/drivers/staging/fbtft/fb_s6d1121.c
+++ b/drivers/staging/fbtft/fb_s6d1121.c
@@ -123,7 +123,7 @@ static int set_var(struct fbtft_par *par)
 #define CURVE(num, idx)  curves[(num) * par->gamma.num_values + (idx)]
 static int set_gamma(struct fbtft_par *par, u32 *curves)
 {
-	unsigned long mask[] = {
+	static const unsigned long mask[] = {
 		0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f,
 		0x3f, 0x3f, 0x1f, 0x1f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f,
 		0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x1f, 0x1f,
diff --git a/drivers/staging/fbtft/fb_ssd1289.c b/drivers/staging/fbtft/fb_ssd1289.c
index 88a5b6925901..7a3fe022cc69 100644
--- a/drivers/staging/fbtft/fb_ssd1289.c
+++ b/drivers/staging/fbtft/fb_ssd1289.c
@@ -129,7 +129,7 @@ static int set_var(struct fbtft_par *par)
 #define CURVE(num, idx)  curves[(num) * par->gamma.num_values + (idx)]
 static int set_gamma(struct fbtft_par *par, u32 *curves)
 {
-	unsigned long mask[] = {
+	static const unsigned long mask[] = {
 		0x1f, 0x1f, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07,
 		0x1f, 0x1f, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07,
 	};
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
