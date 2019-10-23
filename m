Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F56DE20A6
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Oct 2019 18:31:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6070622851;
	Wed, 23 Oct 2019 16:30:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JEbeO7LJCDwC; Wed, 23 Oct 2019 16:30:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D5C3020336;
	Wed, 23 Oct 2019 16:30:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9AF051BF2FF
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 16:30:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 96AF9876C6
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 16:30:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YLehtYEIwnbw for <devel@linuxdriverproject.org>;
 Wed, 23 Oct 2019 16:30:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C9ABC876C5
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 16:30:52 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id o49so25338282qta.7
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 09:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SucdjKTGQcanI63L94XU0ndX+0QHtlZGsavJY3p6BqA=;
 b=NhyKubbIifRt3AhK5Egtx9QnOPj1v//tXutsSnBwRmGH1pPaeiFJm04d/udCUcFHVA
 2pgEq3W3mODPiR3aXH2hqyK87JAc/WoFuGI9Nrs6pj9lwRnZZ+n3e+OgoLVqH5EICScL
 tRfVk7Em36cn5n/p+w2+VimZLKyjzoAm6huuRee3vgPld5M30vipDo3yQnLzRXDwOgZe
 6zemSjktm3iZEQpJgVb4BcV4FkAajvF1iEKmUWeyApUatAR9iBtJrN6k8ia+kFRUxzRp
 DYhpm2kFg4eNwlHTL/MKF6//+R6djzAY5zCucG9n+hV/gqhRMyINYIv05502j1RxHv3h
 KRAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SucdjKTGQcanI63L94XU0ndX+0QHtlZGsavJY3p6BqA=;
 b=p06fndzV7Ea9SdW3BCK0Ec4tC4PNHGRs8KCr9liJUb4sq6h7NG7Vlj0CjjEALC0Btw
 56lE62S+dDDt2Z/K86xazCYkel9+xmPAqyY6YA/ncU8u4wv+99RWogYIf0Cm3l4r2vzu
 sVoyeeJcBUZ/OCaw7nnNESG7Jk6UDXL5c6PtjRqrwbvLFiEuLVp6U0Vhj4oHs9NuYtzj
 Wgw6o2pMQhFRA2DkMRxrXRshfQ8kuWtPmzhuQ8LbdwCGH3/f67++2KLNlSy+azgUvOcW
 AW1p0ADJ7T5clU0xvA4fgWJVwiSKUZTn1MC7dBA/PDcS1IYXAbj/+WU0pt3WgxVqZDTl
 GLtA==
X-Gm-Message-State: APjAAAXG5Xrnljk96EQSqABZNvnWikGmYngm4iXgHstNcs2j5A8FKBj9
 /eXUdYYvxGKZkDwZuRARqO4=
X-Google-Smtp-Source: APXvYqyG2V4NiZpZM4P1guHPLXEeKEO2Xp95ekklTvi1Lr7qsHknOkOqzKB3ugzL0sKKYdXh7EYSgg==
X-Received: by 2002:ac8:fda:: with SMTP id f26mr10287344qtk.34.1571848251776; 
 Wed, 23 Oct 2019 09:30:51 -0700 (PDT)
Received: from localhost.localdomain ([201.53.210.37])
 by smtp.gmail.com with ESMTPSA id t13sm8349067qtn.18.2019.10.23.09.30.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 09:30:51 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
 teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org
Subject: [PATCH v3 2/2] staging: sm750fb: format description of parameters in
 accel.h
Date: Wed, 23 Oct 2019 13:30:14 -0300
Message-Id: <20191023163016.30217-3-gabrielabittencourt00@gmail.com>
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

Formatting comments in file drivers/staging/sm750fb/sm750_accel.h.

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>

---

Changes v3:
 - Apply changes in file accel.h
---
 drivers/staging/sm750fb/sm750_accel.h | 75 ++++++++++++++++-----------
 1 file changed, 46 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_accel.h b/drivers/staging/sm750fb/sm750_accel.h
index c4f42002a50f..c16350b5a310 100644
--- a/drivers/staging/sm750fb/sm750_accel.h
+++ b/drivers/staging/sm750fb/sm750_accel.h
@@ -194,33 +194,50 @@ int sm750_hw_fillrect(struct lynx_accel *accel,
 				u32 x, u32 y, u32 width, u32 height,
 				u32 color, u32 rop);
 
-int sm750_hw_copyarea(
-struct lynx_accel *accel,
-unsigned int sBase,  /* Address of source: offset in frame buffer */
-unsigned int sPitch, /* Pitch value of source surface in BYTE */
-unsigned int sx,
-unsigned int sy,     /* Starting coordinate of source surface */
-unsigned int dBase,  /* Address of destination: offset in frame buffer */
-unsigned int dPitch, /* Pitch value of destination surface in BYTE */
-unsigned int bpp,    /* Color depth of destination surface */
-unsigned int dx,
-unsigned int dy,     /* Starting coordinate of destination surface */
-unsigned int width,
-unsigned int height, /* width and height of rectangle in pixel value */
-unsigned int rop2);
-
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
-		 u32 rop2);
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
+		      unsigned int rop2);
+
+/**
+ * sm750_hw_imageblit
+ * @pSrcbuf: pointer to start of source buffer in system memory
+ * @srcDelta: Pitch value (in bytes) of the source buffer, +ive means top down
+ *>-----      and -ive mean button up
+ * @startBit: Mono data can start at any bit in a byte, this value should be
+ *>-----      0 to 7
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
+		       u32 height, u32 fColor, u32 bColor, u32 rop2);
+
 #endif
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
