Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4062E1BF3
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Oct 2019 15:13:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1BD5186352;
	Wed, 23 Oct 2019 13:13:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2IiBowmw36hR; Wed, 23 Oct 2019 13:13:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6B3D386207;
	Wed, 23 Oct 2019 13:13:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 74B4B1BF357
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 13:13:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4FE9F86207
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 13:13:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gefJKVDt8Jex for <devel@linuxdriverproject.org>;
 Wed, 23 Oct 2019 13:13:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6F22D861F1
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 13:13:11 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id m15so32253972qtq.2
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 06:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ohRiKoQhkRpaqt9hJhdQvzQzR+t9Fsg+JL8RFCA1XEE=;
 b=OQbB3ahkNcYiRxKZW8WuEY2S5xKzEhTNB/yLXCb1NRI8+c7ma5fAM9xNufogBcCpNg
 V5siEzpBSch8ntre1ZdrN8kiOhhZX8AIUIELqxg5XWp11+Wn6SMTVEtWb7T2sKxwiCn0
 AQxaWPGf9ayNFpQPdasmdYfV4vXuSjxaqeI9mN4kSB6ETuY4xI+Cotu/jBQHp22f94va
 p/daWLWBPAxV9x2V2EwGYeMLWAj69yJelgOqu+70IE33ofgUlvNXfugBhApkps3Og5rD
 EWc6s2CMCuPgPeMhpAWbVIbo0Y6+/csSEDR85pxw0Ixxi3LOUdDn46zToyKDyl/Y9Rkm
 rUyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ohRiKoQhkRpaqt9hJhdQvzQzR+t9Fsg+JL8RFCA1XEE=;
 b=rv1+TfnzDSB4y1UPlQ3vQJRMFRmclkUoG1bQmMfNUr8wz2nFKgXgiVxiWligfbXS1e
 5rUmmUPI5ia6lgrDX/BcS+uVazOKSYyIdb8rIsuNbQhq6Z4mdvh9cWc7hbiupCZ0fug2
 A5htldPeLHxc9/jz++jvAH4kV8pndm0ML943Zf4oXYqe92T5RMRpI6UHrEy3FTNeO3Ip
 TXcC9WmyGjGJPMFcaqE3VE726Qhnh72fJYCW2A83P4nUGEXRrIYjUfrSmtxljvo06XJl
 KOdlWyuUemKIjSshOv23YNj/AaClEgp7n14rLMgPvifTNyZibUDo5A1VREhStuDCIQad
 JmiQ==
X-Gm-Message-State: APjAAAWFD2TxfGCLLtbmmfAxQw6ZhJGhI/h6w8yklKMDbtHXPgVaHZOa
 jbVcsbiMEdvmXzCIVWNVkKA=
X-Google-Smtp-Source: APXvYqxUNw3eGYQPCjmEl+DfjUt6gNVhcVwP5JaM+9whBAfh/v4ApQcotxJJS9TmAmZJoSI+LPypCQ==
X-Received: by 2002:aed:3063:: with SMTP id 90mr7472229qte.242.1571836390299; 
 Wed, 23 Oct 2019 06:13:10 -0700 (PDT)
Received: from localhost.localdomain ([201.53.210.37])
 by smtp.gmail.com with ESMTPSA id p22sm9863919qkk.92.2019.10.23.06.13.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 06:13:09 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
 teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org
Subject: [PATCH v2] staging: sm750fb: Format description of parameters the to
 kernel doc format
Date: Wed, 23 Oct 2019 10:12:53 -0300
Message-Id: <20191023131253.20819-2-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191023131253.20819-1-gabrielabittencourt00@gmail.com>
References: <20191023131253.20819-1-gabrielabittencourt00@gmail.com>
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

Cluster comments that describes parameters of functions and create one
single comment before the function in kernel doc format.

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>

---

Changes v2:
 - Add name of function at the begining of comment
 - Separate each parameter in individuals lines

Here are the commands that I used to test my documentation and the
respective outputs:

$ kdoc_function sm750_acc.c sm750_hw_imageblit man
In NAME:
 there is the name of the function, but it's without a brief description
In ARGUMENTS:
 argument 'accel' is presented as '-- undescribed --'

$ kdoc_function sm750_acc.c sm750_hw_copyarea man
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
