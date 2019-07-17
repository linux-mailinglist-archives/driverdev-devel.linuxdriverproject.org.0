Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 554BA6BE8A
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jul 2019 16:51:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 33DE586D85;
	Wed, 17 Jul 2019 14:51:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w245LGpqzldC; Wed, 17 Jul 2019 14:51:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 89EA785782;
	Wed, 17 Jul 2019 14:51:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D20E1BF342
 for <devel@linuxdriverproject.org>; Wed, 17 Jul 2019 14:50:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0A612204D4
 for <devel@linuxdriverproject.org>; Wed, 17 Jul 2019 14:50:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1f360qMlwk-u for <devel@linuxdriverproject.org>;
 Wed, 17 Jul 2019 14:50:54 +0000 (UTC)
X-Greylist: delayed 00:09:07 by SQLgrey-1.7.6
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
 [64.147.123.25])
 by silver.osuosl.org (Postfix) with ESMTPS id E100E2045F
 for <devel@driverdev.osuosl.org>; Wed, 17 Jul 2019 14:50:54 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 7630C447;
 Wed, 17 Jul 2019 10:41:45 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 17 Jul 2019 10:41:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jaseg.net; h=
 from:subject:to:cc:references:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm3; bh=r
 //nzcRetFe1mQcf2ZScBZlmXMRRWgYkY3HhEVoUW5g=; b=QjDKjunKNKXsQdGTK
 YGMgsIKhOOuhTj5HoZEACFt97Cu6KgNCEUO1tzlGKozWGUg+YCktXX73+KyK6q1D
 tK/KCna0OHHdCyXwkFQZ4YMVEbqpyaH1hqJRmY1Y5vOLddFEcSLCtu6hr0fSZNuj
 11WCVYgtovJmbVmttPIbw//sDu9V7zJpzBrhwrLzXiZgCUR173wgJjQBrJh3GIc6
 n+aMEmHnHCIqTkrg9PFcjonsVy9Celj/DrsM6yj3q4I62r11+pwRiyJqZbzcSEAT
 BVXHhP6/jiXvoMlias5zHAXXPudpxkhYjg1Y9N91p5/iHXxeOBMiaozyQwZ1QLVe
 VedSQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; bh=r//nzcRetFe1mQcf2ZScBZlmXMRRWgYkY3HhEVoUW
 5g=; b=HorNKpy4Kd2hLgdJW84OOMnn5hD7jq8EZORqyd+rnO7jr3eLuFtNUT7nH
 q3eIhgsIft8vm/73afzJOF8WP6e9UDCC/7D4nu4duBRh7uUjJZZJJgZhoAh4c0Kp
 oCwC1PkqPdV01+KPntd60ycCAmyyVXjZqI/bRYqwHXvxf+90dKvvCqOwxqK4Tq3h
 ahRXIUupan7r9SIVcZEyfNX9EvQk7qZDjzjCpk8BVcbOIo64XrSYOXRqGiaPX4qM
 Yd1KWKkgaF/EYuaERDJkX1+9LRSVJ2ZsT9w77J0EVG9pAcqhoJI8y8VnJZ5nh8jH
 7SJwwYlWTWkVKBcrt5RqusLmYTBdA==
X-ME-Sender: <xms:pjMvXRRe3-Kzp_k7PsuSWDICiSFroLqpAdt6tOOU9bcogU1dHPThWQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrieefgdehhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
 etfedtuddqtdduucdludehmdenucfjughrpefhuffvfhfkffgfgggjtgfgsehtkeertddt
 feehnecuhfhrohhmpeflrghnpgfuvggsrghsthhirghnpgfinphtthgvuceolhhinhhugi
 esjhgrshgvghdrnhgvtheqnecukfhppeeitddrjedurdeifedrjeehnecurfgrrhgrmhep
 mhgrihhlfhhrohhmpehlihhnuhigsehjrghsvghgrdhnvghtnecuvehluhhsthgvrhfuih
 iivgeptd
X-ME-Proxy: <xmx:pjMvXX7DJo_hodvFt5Yft56QLLNvvak47rBn7LT2N5SQzMXBxMuivw>
 <xmx:pjMvXV3KSEdHv5hYxzAyZjuHEB0HHfDalLT7xYKvqrr0TGrLjGu9AQ>
 <xmx:pjMvXaD_wkn3P1eBlAlw8VUl_0QSxZrbZzpk8ss_KMyKJsTB_gzNmA>
 <xmx:qTMvXT0DuJp9IqC2S0OSsgmVrTb2XdvFbtk5NKyNXaLprMgpFMzxtg>
Received: from [10.137.0.16] (softbank060071063075.bbtec.net [60.71.63.75])
 by mail.messagingengine.com (Postfix) with ESMTPA id 31D5580060;
 Wed, 17 Jul 2019 10:41:40 -0400 (EDT)
From: =?UTF-8?Q?Jan_Sebastian_G=c3=b6tte?= <linux@jaseg.net>
Subject: [PATCH v2] Staging: fbtft: Fix GPIO handling
To: =?UTF-8?Q?Jan_Sebastian_G=c3=b6tte?= <linux@jaseg.net>
References: <20190715143003.12819-1-nsaenzjulienne@suse.de>
 <7b8242ab-cc0c-d90b-60af-ff1c53789e44@opensynergy.com>
 <5a77c18f-7338-888f-2379-12171b6a545e@jaseg.net>
Message-ID: <75ada52f-afa1-08bc-d0ce-966fc1110e70@jaseg.net>
Date: Wed, 17 Jul 2019 23:41:37 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <5a77c18f-7338-888f-2379-12171b6a545e@jaseg.net>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, leobras.c@gmail.com,
 linux-fbdev@vger.kernel.org, nishadkamdar@gmail.com,
 gregkh@linuxfoundation.org, dri-devel@lists.freedesktop.org,
 bhanusreemahesh@gmail.com, Phil Reid <preid@electromag.com.au>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Commit c440eee1a7a1 ("Staging: fbtft: Switch to the gpio descriptor
interface") breaks GPIO handling. In several places, checks to only set
a GPIO if it was configured ended up backwards.
I have tested this fix. The fixed driver works with a ili9486
display connected to a raspberry pi via SPI.

Fixes: commit c440eee1a7a1d ("Staging: fbtft: Switch to the gpio descriptor=
 interface")
Tested-by: Jan Sebastian G=F6tte <linux@jaseg.net>
Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Jan Sebastian G=F6tte <linux@jaseg.net>
---
 drivers/staging/fbtft/fb_bd663474.c  | 2 +-
 drivers/staging/fbtft/fb_ili9163.c   | 2 +-
 drivers/staging/fbtft/fb_ili9325.c   | 2 +-
 drivers/staging/fbtft/fb_s6d1121.c   | 2 +-
 drivers/staging/fbtft/fb_ssd1289.c   | 2 +-
 drivers/staging/fbtft/fb_ssd1331.c   | 4 ++--
 drivers/staging/fbtft/fb_upd161704.c | 2 +-
 drivers/staging/fbtft/fbtft-bus.c    | 2 +-
 drivers/staging/fbtft/fbtft-core.c   | 4 ++--
 9 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/fbtft/fb_bd663474.c b/drivers/staging/fbtft/fb=
_bd663474.c
index b6c6d66e4eb1..e2c7646588f8 100644
--- a/drivers/staging/fbtft/fb_bd663474.c
+++ b/drivers/staging/fbtft/fb_bd663474.c
@@ -24,7 +24,7 @@
 =

 static int init_display(struct fbtft_par *par)
 {
-	if (!par->gpio.cs)
+	if (par->gpio.cs)
 		gpiod_set_value(par->gpio.cs, 0);  /* Activate chip */
 =

 	par->fbtftops.reset(par);
diff --git a/drivers/staging/fbtft/fb_ili9163.c b/drivers/staging/fbtft/fb_=
ili9163.c
index d609a2b67db9..fd32376700e2 100644
--- a/drivers/staging/fbtft/fb_ili9163.c
+++ b/drivers/staging/fbtft/fb_ili9163.c
@@ -77,7 +77,7 @@ static int init_display(struct fbtft_par *par)
 {
 	par->fbtftops.reset(par);
 =

-	if (!par->gpio.cs)
+	if (par->gpio.cs)
 		gpiod_set_value(par->gpio.cs, 0);  /* Activate chip */
 =

 	write_reg(par, MIPI_DCS_SOFT_RESET); /* software reset */
diff --git a/drivers/staging/fbtft/fb_ili9325.c b/drivers/staging/fbtft/fb_=
ili9325.c
index b090e7ab6fdd..85e54a10ed72 100644
--- a/drivers/staging/fbtft/fb_ili9325.c
+++ b/drivers/staging/fbtft/fb_ili9325.c
@@ -85,7 +85,7 @@ static int init_display(struct fbtft_par *par)
 {
 	par->fbtftops.reset(par);
 =

-	if (!par->gpio.cs)
+	if (par->gpio.cs)
 		gpiod_set_value(par->gpio.cs, 0);  /* Activate chip */
 =

 	bt &=3D 0x07;
diff --git a/drivers/staging/fbtft/fb_s6d1121.c b/drivers/staging/fbtft/fb_=
s6d1121.c
index b3d0701880fe..5a129b1352cc 100644
--- a/drivers/staging/fbtft/fb_s6d1121.c
+++ b/drivers/staging/fbtft/fb_s6d1121.c
@@ -29,7 +29,7 @@ static int init_display(struct fbtft_par *par)
 {
 	par->fbtftops.reset(par);
 =

-	if (!par->gpio.cs)
+	if (par->gpio.cs)
 		gpiod_set_value(par->gpio.cs, 0);  /* Activate chip */
 =

 	/* Initialization sequence from Lib_UTFT */
diff --git a/drivers/staging/fbtft/fb_ssd1289.c b/drivers/staging/fbtft/fb_=
ssd1289.c
index bbf75f795234..88a5b6925901 100644
--- a/drivers/staging/fbtft/fb_ssd1289.c
+++ b/drivers/staging/fbtft/fb_ssd1289.c
@@ -28,7 +28,7 @@ static int init_display(struct fbtft_par *par)
 {
 	par->fbtftops.reset(par);
 =

-	if (!par->gpio.cs)
+	if (par->gpio.cs)
 		gpiod_set_value(par->gpio.cs, 0);  /* Activate chip */
 =

 	write_reg(par, 0x00, 0x0001);
diff --git a/drivers/staging/fbtft/fb_ssd1331.c b/drivers/staging/fbtft/fb_=
ssd1331.c
index 4cfe9f8535d0..37622c9462aa 100644
--- a/drivers/staging/fbtft/fb_ssd1331.c
+++ b/drivers/staging/fbtft/fb_ssd1331.c
@@ -81,7 +81,7 @@ static void write_reg8_bus8(struct fbtft_par *par, int le=
n, ...)
 	va_start(args, len);
 =

 	*buf =3D (u8)va_arg(args, unsigned int);
-	if (!par->gpio.dc)
+	if (par->gpio.dc)
 		gpiod_set_value(par->gpio.dc, 0);
 	ret =3D par->fbtftops.write(par, par->buf, sizeof(u8));
 	if (ret < 0) {
@@ -104,7 +104,7 @@ static void write_reg8_bus8(struct fbtft_par *par, int =
len, ...)
 			return;
 		}
 	}
-	if (!par->gpio.dc)
+	if (par->gpio.dc)
 		gpiod_set_value(par->gpio.dc, 1);
 	va_end(args);
 }
diff --git a/drivers/staging/fbtft/fb_upd161704.c b/drivers/staging/fbtft/f=
b_upd161704.c
index 564a38e34440..c77832ae5e5b 100644
--- a/drivers/staging/fbtft/fb_upd161704.c
+++ b/drivers/staging/fbtft/fb_upd161704.c
@@ -26,7 +26,7 @@ static int init_display(struct fbtft_par *par)
 {
 	par->fbtftops.reset(par);
 =

-	if (!par->gpio.cs)
+	if (par->gpio.cs)
 		gpiod_set_value(par->gpio.cs, 0);  /* Activate chip */
 =

 	/* Initialization sequence from Lib_UTFT */
diff --git a/drivers/staging/fbtft/fbtft-bus.c b/drivers/staging/fbtft/fbtf=
t-bus.c
index 2ea814d0dca5..63c65dd67b17 100644
--- a/drivers/staging/fbtft/fbtft-bus.c
+++ b/drivers/staging/fbtft/fbtft-bus.c
@@ -135,7 +135,7 @@ int fbtft_write_vmem16_bus8(struct fbtft_par *par, size=
_t offset, size_t len)
 	remain =3D len / 2;
 	vmem16 =3D (u16 *)(par->info->screen_buffer + offset);
 =

-	if (!par->gpio.dc)
+	if (par->gpio.dc)
 		gpiod_set_value(par->gpio.dc, 1);
 =

 	/* non buffered write */
diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbt=
ft-core.c
index bc750250ccd6..5127de922f6a 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -916,7 +916,7 @@ static int fbtft_init_display_dt(struct fbtft_par *par)
 		return -EINVAL;
 =

 	par->fbtftops.reset(par);
-	if (!par->gpio.cs)
+	if (par->gpio.cs)
 		gpiod_set_value(par->gpio.cs, 0);  /* Activate chip */
 =

 	while (p) {
@@ -1007,7 +1007,7 @@ int fbtft_init_display(struct fbtft_par *par)
 	}
 =

 	par->fbtftops.reset(par);
-	if (!par->gpio.cs)
+	if (par->gpio.cs)
 		gpiod_set_value(par->gpio.cs, 0);  /* Activate chip */
 =

 	i =3D 0;
-- =

2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
