Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BA5D4BC3
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Oct 2019 03:20:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 84A6925DCD;
	Sat, 12 Oct 2019 01:20:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3IJbX+lgbxTP; Sat, 12 Oct 2019 01:20:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C088325D46;
	Sat, 12 Oct 2019 01:20:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B0C01BF314
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 01:20:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 66CB38895B
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 01:20:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LmYpXT0l+Ltc for <devel@linuxdriverproject.org>;
 Sat, 12 Oct 2019 01:20:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A218288934
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 01:20:10 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id z67so10584618qkb.12
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 18:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f59g/RciVZKoxqNX9kC3w6U69tnmtVV5CNkXdY+evAk=;
 b=P11949MuCzHOh2ktsdskijdbH2ZXJyKxKKUW/6KRGBL6qDtFcdJHhF0jU5hzJmhAWW
 CoAD6Xa7ht7fUA45ULBTLVL04HSQY7fUJSlj+u6OSBMko7xISTmXSj7yLNbBbUrFetMd
 Vixjq+gleE4IfUjyh3X/eftr807SM87bd7p1hmxUTKZMcXMITjly2RM5KYJTKezf3IKD
 bQXve2sj9+3Eb+1Gwsf2snBOWF742XpGGGjlR9+o5+JnZJL58wTAA0yTleClYOf0D6ta
 7+IeKvw4jfjTi7HcyKZds7krit1/Hm3hCtIx6A1qmkwDIhPZCGHPkgUiS0ZG5zBfXxBv
 kwFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f59g/RciVZKoxqNX9kC3w6U69tnmtVV5CNkXdY+evAk=;
 b=aT9L1hfQsNKwUgxA/m0EHs/1tqui/S2646w6BAfkmBO0tgU0oK4Bl2q0uOT/Pw1r8m
 VCM1Uv8h8lZhJJPPjRvdIL5vM/4Hdi7CQ1gNUfQIfdo3bouQg03RHYTdG2SFpzUe9207
 H0uotriqBAFkvvywUl5waTegpax5d8wi5tJ3yhfeAeyqvFjv0x6jX23F9N/a3w8dnfr2
 gNua+QqX2VcBC+WVsbJ1b0+Z+0vbTxnjyu8NW88pKXip2GVun7rM/9AOyYk0xxRr7K1Z
 mK+Uk5oSJFSMzagiZxKQzEU1Nse+Dn4iSyC5choG3VvRCpuUiBWPhtI3j9f7GejH9I7M
 0RbQ==
X-Gm-Message-State: APjAAAXihh2ZaVpY3ytAb8iyIHv69bCU8xKjZl6XHRApklcFAwmFqL+9
 4o/2xCTT54+QjG5hSa5olCo=
X-Google-Smtp-Source: APXvYqyhRYp+eePH4KkaE8rNlbcmiPdJZXbACZ4JIREHfbvDJmMdzvUQuhbl/UICNaCvmBjt0hhVcQ==
X-Received: by 2002:a37:9d10:: with SMTP id g16mr18836248qke.29.1570843209314; 
 Fri, 11 Oct 2019 18:20:09 -0700 (PDT)
Received: from localhost.localdomain ([187.106.44.83])
 by smtp.gmail.com with ESMTPSA id s17sm4618393qkg.79.2019.10.11.18.20.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 18:20:08 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
 teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
 trivial@kernel.org
Subject: [PATCH] staging: sm750fb: align arguments with open parenthesis
Date: Fri, 11 Oct 2019 22:19:56 -0300
Message-Id: <20191012011956.9452-1-gabrielabittencourt00@gmail.com>
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
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleans up checks of "Alignment should match open parenthesis" in tree sm750fb

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/sm750fb/ddk750_display.c |  2 +-
 drivers/staging/sm750fb/sm750_accel.c    |  2 +-
 drivers/staging/sm750fb/sm750_accel.h    |  8 ++++----
 drivers/staging/sm750fb/sm750_cursor.h   | 10 +++++-----
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
index 887ea8aef43f..8be98a1058d6 100644
--- a/drivers/staging/sm750fb/ddk750_display.c
+++ b/drivers/staging/sm750fb/ddk750_display.c
@@ -148,7 +148,7 @@ void ddk750_set_logical_disp_out(enum disp_output output)
 	if (output & PNL_SEQ_USAGE) {
 		/* set  panel sequence */
 		sw_panel_power_sequence((output & PNL_SEQ_MASK) >> PNL_SEQ_OFFSET,
-		4);
+					4);
 	}
 
 	if (output & DAC_USAGE)
diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index dbcbbd1055da..1a9555bb9edd 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -289,7 +289,7 @@ static unsigned int deGetTransparency(struct lynx_accel *accel)
 }
 
 int sm750_hw_imageblit(struct lynx_accel *accel,
-		 const char *pSrcbuf, /* pointer to start of source buffer in system memory */
+		       const char *pSrcbuf, /* pointer to start of source buffer in system memory */
 		 u32 srcDelta,          /* Pitch value (in bytes) of the source buffer, +ive means top down and -ive mean button up */
 		 u32 startBit, /* Mono data can start at any bit in a byte, this value should be 0 to 7 */
 		 u32 dBase,    /* Address of destination: offset in frame buffer */
diff --git a/drivers/staging/sm750fb/sm750_accel.h b/drivers/staging/sm750fb/sm750_accel.h
index c4f42002a50f..8fb79b09fdd0 100644
--- a/drivers/staging/sm750fb/sm750_accel.h
+++ b/drivers/staging/sm750fb/sm750_accel.h
@@ -190,9 +190,9 @@ void sm750_hw_set2dformat(struct lynx_accel *accel, int fmt);
 void sm750_hw_de_init(struct lynx_accel *accel);
 
 int sm750_hw_fillrect(struct lynx_accel *accel,
-				u32 base, u32 pitch, u32 Bpp,
-				u32 x, u32 y, u32 width, u32 height,
-				u32 color, u32 rop);
+		      u32 base, u32 pitch, u32 Bpp,
+		      u32 x, u32 y, u32 width, u32 height,
+		      u32 color, u32 rop);
 
 int sm750_hw_copyarea(
 struct lynx_accel *accel,
@@ -210,7 +210,7 @@ unsigned int height, /* width and height of rectangle in pixel value */
 unsigned int rop2);
 
 int sm750_hw_imageblit(struct lynx_accel *accel,
-		 const char *pSrcbuf, /* pointer to start of source buffer in system memory */
+		       const char *pSrcbuf, /* pointer to start of source buffer in system memory */
 		 u32 srcDelta,          /* Pitch value (in bytes) of the source buffer, +ive means top down and -ive mean button up */
 		 u32 startBit, /* Mono data can start at any bit in a byte, this value should be 0 to 7 */
 		 u32 dBase,    /* Address of destination: offset in frame buffer */
diff --git a/drivers/staging/sm750fb/sm750_cursor.h b/drivers/staging/sm750fb/sm750_cursor.h
index 16ac07eb58d6..039ebfdf0bd9 100644
--- a/drivers/staging/sm750fb/sm750_cursor.h
+++ b/drivers/staging/sm750fb/sm750_cursor.h
@@ -6,13 +6,13 @@
 void sm750_hw_cursor_enable(struct lynx_cursor *cursor);
 void sm750_hw_cursor_disable(struct lynx_cursor *cursor);
 void sm750_hw_cursor_setSize(struct lynx_cursor *cursor,
-						int w, int h);
+			     int w, int h);
 void sm750_hw_cursor_setPos(struct lynx_cursor *cursor,
-						int x, int y);
+			    int x, int y);
 void sm750_hw_cursor_setColor(struct lynx_cursor *cursor,
-						u32 fg, u32 bg);
+			      u32 fg, u32 bg);
 void sm750_hw_cursor_setData(struct lynx_cursor *cursor,
-			u16 rop, const u8 *data, const u8 *mask);
+			     u16 rop, const u8 *data, const u8 *mask);
 void sm750_hw_cursor_setData2(struct lynx_cursor *cursor,
-			u16 rop, const u8 *data, const u8 *mask);
+			      u16 rop, const u8 *data, const u8 *mask);
 #endif
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
