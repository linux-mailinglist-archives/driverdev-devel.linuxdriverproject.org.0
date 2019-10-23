Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ABDFE1BF2
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Oct 2019 15:13:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 59DF9207A8;
	Wed, 23 Oct 2019 13:13:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MkhuWkSSWmXU; Wed, 23 Oct 2019 13:13:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0A5A720763;
	Wed, 23 Oct 2019 13:13:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD6EF1BF357
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 13:13:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 91BD085DB1
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 13:13:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DzdWSyjhSiuf for <devel@linuxdriverproject.org>;
 Wed, 23 Oct 2019 13:13:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9141385CC3
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 13:13:03 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id c17so29164895qtn.8
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 06:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ohRiKoQhkRpaqt9hJhdQvzQzR+t9Fsg+JL8RFCA1XEE=;
 b=QaqaR1qOT89rUu8StdHeaRI2FrFjxRCrlbXfhbbHR9vZnzKThIdbKrmyRWSBN2bdba
 sE46IsgHzgT9XYWG4UdfQyRWXTMVeJ7VpFPmkCa9vj/+DpX1g7evROqCXHGhIcJN2JNO
 8aErTqkuxElpgoSh8cNYzAjW33boa8eGOwYgwdUEbdfsQ+wnAj2GDUUzHJv5i5C5bJ21
 6rjUKT54WjEeNI+v4/pfTwYinBFUPFIKHYhC2u8idnVI7ulG4Ascu6dmTCtCPgYNMjnl
 uxM6Kw22wp3J3MMxVWzjjjcXHrCafX3kkVC13+EaGqgJzpbeLwjb3HKn79iWQORVb1PJ
 wXvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ohRiKoQhkRpaqt9hJhdQvzQzR+t9Fsg+JL8RFCA1XEE=;
 b=TnvfSwc7jOWPY5J4eHBPgZuR9nvp0w86sZSyHjpl1Fd3s0QQsc6DHxBA7GMEQX4PH+
 AgvIWzTb0TUYURHtC9w1HuSqBvZuldsxvMWCpyDmFh7hvftyeKAvjrysX+Vhob1hEAEF
 84iVWCrrQTLYVjwl7koNh4MUkZ/vu6gDJsZkuUnOEVC0obV7CU4qv6QIAZgEodYdMOjE
 WM7Tryh+63ODP7Rwzdc003rrfZPa8nyWlOUF7bAp90v8vCxkpvR6bUeQAc8KZdvpzekK
 viW/9FvQMdL9eDKmCN3qVfANiWBNLpOg4+sA1udavmjdj3/m72QVLsLFyQvjmtBC0muJ
 LdfA==
X-Gm-Message-State: APjAAAUKIhssuN6+ug2B+AE8HvIDwXmO59aHy4pV9OqtV65N/jJT2ZuO
 LIALk0D5OkWAQPGtaRklC8c=
X-Google-Smtp-Source: APXvYqxGnTnLSmtjHmmtUd6SAIDMk96N1A+bQlwUdf8F7JNwJM03WvMYsFIuKtRsNHcSlyvJbnvIsQ==
X-Received: by 2002:ac8:76d9:: with SMTP id q25mr9148063qtr.23.1571836382491; 
 Wed, 23 Oct 2019 06:13:02 -0700 (PDT)
Received: from localhost.localdomain ([201.53.210.37])
 by smtp.gmail.com with ESMTPSA id p22sm9863919qkk.92.2019.10.23.06.12.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 06:13:01 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
 teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org
Subject: [PATCH v2] staging: sm750fb: format description of parameters the to
 kernel doc format
Date: Wed, 23 Oct 2019 10:12:52 -0300
Message-Id: <20191023131253.20819-1-gabrielabittencourt00@gmail.com>
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
