Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C06B4E20A5
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Oct 2019 18:30:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5FA78876EF;
	Wed, 23 Oct 2019 16:30:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0lc4lf9f8kJu; Wed, 23 Oct 2019 16:30:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 10168876CF;
	Wed, 23 Oct 2019 16:30:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A4001BF2FF
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 16:30:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 76F88876C4
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 16:30:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GZM5MNYSfNjS for <devel@linuxdriverproject.org>;
 Wed, 23 Oct 2019 16:30:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6E5D8876C5
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 16:30:46 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id o49so25337689qta.7
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 09:30:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O/gGINuO4rZ1Q1b4siMstjOWEKgW2+OR5xi6Uu2Zpfw=;
 b=fmuAMC8IrJunvfr9s/spVdumHPvY5Okfcj+sisnh2+hJJ9W2PmFVq+5LO4w4TOVLm3
 q8xSTIWiOnC8qERJV9iDQLiGWQCfiM3bLPn+VrtIJlfMhvHM001dyEbyDrUuIHQoMP8x
 h2xhFWEGgRw/n60NmANQ0lmC9WvLvu6gJk7ahLzu//T8rpKagvcri924bKLZBOzTXL02
 MJcCglKoBR2RkZUrl7jDVWV/N73AodzhZaNfST6MvX7W0PfZdwIoyl1LQRV/yJmgdY2s
 tlB7gUHOHt3fH25WYLHJBP+Lte2mR9v9kJokjpZEeqVZAtuumCCW+YYi3w7NIxzWtClO
 H/gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O/gGINuO4rZ1Q1b4siMstjOWEKgW2+OR5xi6Uu2Zpfw=;
 b=bsIn+FjpKapGkEpg2wdmA+cNqsDHlMDFfnFDeeKG4vzkdrUCo2qTm+pLqk+jno660D
 PQ24FQekUjumAFk5urApgJ8WUDOgZu4cQoCpB6ueLEN8rFPyFD1fcJpI6PdpGcup/poN
 WDTvpv+uINrESCCvmWVZLQ1RRcRta4c7wDyWm27uw7TnFwQkaamzPwLglEjTCCbvk2LV
 vsum1a7OBq+skAm5vrwvtGv1ioiPsBOCFw1UqCYhpPWPkU9oasHo4miXgkXzUhxVEv4L
 BuxytWZJGktV3HuafzfbvrWZnlzwN50WI6sWnK3Ydz9tPPQV4yzsAJkmBro+qSaDQuz7
 FUoQ==
X-Gm-Message-State: APjAAAVEH76gYT0CqXMzf0ITZfq2dADzQ6JMO/17jy5HFxNo3iswLeUU
 50yQDZt9/O5912d2qTSTcxw=
X-Google-Smtp-Source: APXvYqzTTBzPrgQGJRaI/V1zt4W2mqFdSyI1aqGpEPuBzCvlKtC3nDqkRA0E460FN6hc7FqUghggDw==
X-Received: by 2002:ac8:70c3:: with SMTP id g3mr9955825qtp.391.1571848245230; 
 Wed, 23 Oct 2019 09:30:45 -0700 (PDT)
Received: from localhost.localdomain ([201.53.210.37])
 by smtp.gmail.com with ESMTPSA id t13sm8349067qtn.18.2019.10.23.09.30.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 09:30:44 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
 teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org
Subject: [PATCH v3 1/2] staging: sm750fb: format description of parameters in
 accel.c
Date: Wed, 23 Oct 2019 13:30:13 -0300
Message-Id: <20191023163016.30217-2-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191023163016.30217-1-gabrielabittencourt00@gmail.com>
References: <20191023163016.30217-1-gabrielabittencourt00@gmail.com>
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

Formatting comments in file drivers/staging/sm750fb/sm750_accel.c.

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>

---

Changes v2:
 - Add name of function at the begining of comment
 - Separate each parameter in individuals lines

Here are the commands that I used to test my documentation and the
respective outputs:

$ kdoc_function sm750_accel.c sm750_hw_imageblit man
In NAME:
 there is the name of the function, but it's without a brief description
In ARGUMENTS:
 argument 'accel' is presented as '-- undescribed --'

$ kdoc_function sm750_accel.c sm750_hw_copyarea man
In NAME:
 there is the name of the function, but it's without a brief description
In ARGUMENTS:
 argument 'accel' is presented as '-- undescribed --'

$ kernel-doc -none sm750_accel.c
2 Warnings:
sm750_accel.c:155: warning: Function parameter or member 'accel'
			    not described in 'sm750_hw_copyarea'
sm750_accel.c:321: warning: Function parameter or member 'accel'
			    not described in 'sm750_hw_imageblit'

I appreciate Randy's explanation about how to test documentation.
Thank you very much.

Changes v3:
 - Transforming patch into a patch serie
 - Apply similar changes in accel.h
---
 drivers/staging/sm750fb/sm750_accel.c | 72 ++++++++++++++++-----------
 1 file changed, 44 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index dbcbbd1055da..645813a87490 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -130,20 +130,28 @@ int sm750_hw_fillrect(struct lynx_accel *accel,
 	return 0;
 }
 
-int sm750_hw_copyarea(
-struct lynx_accel *accel,
-unsigned int sBase,  /* Address of source: offset in frame buffer */
-unsigned int sPitch, /* Pitch value of source surface in BYTE */
-unsigned int sx,
-unsigned int sy,     /* Starting coordinate of source surface */
-unsigned int dBase,  /* Address of destination: offset in frame buffer */
-unsigned int dPitch, /* Pitch value of destination surface in BYTE */
-unsigned int Bpp,    /* Color depth of destination surface */
-unsigned int dx,
-unsigned int dy,     /* Starting coordinate of destination surface */
-unsigned int width,
-unsigned int height, /* width and height of rectangle in pixel value */
-unsigned int rop2)   /* ROP value */
+/**
+ * sm750_hm_copyarea
+ * @sBase: Address of source: offset in frame buffer
+ * @sPitch: Pitch value of source surface in BYTE
+ * @sx: Starting x coordinate of source surface
+ * @sy: Starting y coordinate of source surface
+ * @dBase: Address of destination: offset in frame buffer
+ * @dPitch: Pitch value of destination surface in BYTE
+ * @Bpp: Color depth of destination surface
+ * @dx: Starting x coordinate of destination surface
+ * @dy: Starting y coordinate of destination surface
+ * @width: width of rectangle in pixel value
+ * @height: height of rectangle in pixel value
+ * @rop2: ROP value
+ */
+int sm750_hw_copyarea(struct lynx_accel *accel,
+		      unsigned int sBase, unsigned int sPitch,
+		      unsigned int sx, unsigned int sy,
+		      unsigned int dBase, unsigned int dPitch,
+		      unsigned int Bpp, unsigned int dx, unsigned int dy,
+		      unsigned int width, unsigned int height,
+		      unsigned int rop2)
 {
 	unsigned int nDirection, de_ctrl;
 
@@ -288,20 +296,28 @@ static unsigned int deGetTransparency(struct lynx_accel *accel)
 	return de_ctrl;
 }
 
-int sm750_hw_imageblit(struct lynx_accel *accel,
-		 const char *pSrcbuf, /* pointer to start of source buffer in system memory */
-		 u32 srcDelta,          /* Pitch value (in bytes) of the source buffer, +ive means top down and -ive mean button up */
-		 u32 startBit, /* Mono data can start at any bit in a byte, this value should be 0 to 7 */
-		 u32 dBase,    /* Address of destination: offset in frame buffer */
-		 u32 dPitch,   /* Pitch value of destination surface in BYTE */
-		 u32 bytePerPixel,      /* Color depth of destination surface */
-		 u32 dx,
-		 u32 dy,       /* Starting coordinate of destination surface */
-		 u32 width,
-		 u32 height,   /* width and height of rectangle in pixel value */
-		 u32 fColor,   /* Foreground color (corresponding to a 1 in the monochrome data */
-		 u32 bColor,   /* Background color (corresponding to a 0 in the monochrome data */
-		 u32 rop2)     /* ROP value */
+/**
+ * sm750_hw_imageblit
+ * @pSrcbuf: pointer to start of source buffer in system memory
+ * @srcDelta: Pitch value (in bytes) of the source buffer, +ive means top down
+ *	      and -ive mean button up
+ * @startBit: Mono data can start at any bit in a byte, this value should be
+ *	      0 to 7
+ * @dBase: Address of destination: offset in frame buffer
+ * @dPitch: Pitch value of destination surface in BYTE
+ * @bytePerPixel: Color depth of destination surface
+ * @dx: Starting x coordinate of destination surface
+ * @dy: Starting y coordinate of destination surface
+ * @width: width of rectangle in pixel value
+ * @height: height of rectangle in pixel value
+ * @fColor: Foreground color (corresponding to a 1 in the monochrome data
+ * @bColor: Background color (corresponding to a 0 in the monochrome data
+ * @rop2: ROP value
+ */
+int sm750_hw_imageblit(struct lynx_accel *accel, const char *pSrcbuf,
+		       u32 srcDelta, u32 startBit, u32 dBase, u32 dPitch,
+		       u32 bytePerPixel, u32 dx, u32 dy, u32 width,
+		       u32 height, u32 fColor, u32 bColor, u32 rop2)
 {
 	unsigned int ulBytesPerScan;
 	unsigned int ul4BytesPerScan;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
