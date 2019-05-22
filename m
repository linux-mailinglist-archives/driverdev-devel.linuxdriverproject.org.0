Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA15126396
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 14:15:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3B2343059A;
	Wed, 22 May 2019 12:15:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Np5ZgP8npO1; Wed, 22 May 2019 12:15:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 25DD72F989;
	Wed, 22 May 2019 12:14:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D7BDA1BF2BB
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 12:14:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D4EE485BAE
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 12:14:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fYuty6iRc7CX for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:14:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A07C885B55
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 12:14:54 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id q197so1272789qke.7
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 05:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nrrFf5jPyFl/413hkwocQVvbRFpG3X2ac3ZXAgGL0fk=;
 b=BHplIj21ouH1CPEeBdRJET6uPmvNfutmVv3Q/qYh61PSD48ja48H0btCCwbHETZ4ln
 PgIS/XJf/9f/8o7l1QSJN+JLK8gfkH9zf/RiNnl3bpMKUJ9++Ng0V1J+OzDqjehbp6Sv
 SZ7vKRYQfh8QXsXr8ZxxR2Yr4Oupnkz2UeqvsiinISRSAtcldtcFaGGH8KOL5aevo3CF
 G9cLWfn8u10UVRbywhVNLSSLnGlTnWDuCsSfQZ26ocvcYZTP7CA1gP7AYhmUuN6GxHzY
 CDkdCIG7IA9Gk5KwIjpYu7SVDFKFFKYxCMtUe6ROgscIghzI6pmWjhhlDTp50Degh+6O
 O4sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nrrFf5jPyFl/413hkwocQVvbRFpG3X2ac3ZXAgGL0fk=;
 b=jqVErA34x8jgBa/2X6pvmRAj7KpF5e/WxRDpRsqCZXwaH5HM6TxLZgTeVHNC4UJL7V
 DsEjYOrd7b4FFVi0hE1OLYyAxo4/7T8PamNM3bZc1XlpYTb2PzYQgcfFZutApwBla4mW
 8Y+7vLhaPUjsLTWCRGJwBGoHnVvPDPK1hYfL3ycAZF4tAfo3M5/NEosnqD3RMomiMpkP
 uD+lCdfJyRXH0DWJ6W9EtKNVIiL7XecgMfKNczji1VXUqnKH4np+2gShugstmsgLOSfi
 P/j0IKwNSuBpesOsmXnZ6a/QdZpJq/j3JIIxCosiEXIfEyRo8nXfUY1rxY5AfgrXGJas
 qvow==
X-Gm-Message-State: APjAAAVvV5EjmKSg+LxJAlaEAuj2JwJkZckuKmQENA5yUjN5+WF/3TS0
 vX/8twp9K1KmGmVPDGlIdPo=
X-Google-Smtp-Source: APXvYqzTsLVHeGnRIcM/Sdgvrh+ueNPL72MIEPFklGrdTHoMOwTKEnlODCixsbJFa/VgTf/JWeup6g==
X-Received: by 2002:a05:620a:1641:: with SMTP id
 c1mr68784078qko.103.1558527293814; 
 Wed, 22 May 2019 05:14:53 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.dc.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id w2sm8742070qto.19.2019.05.22.05.14.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 05:14:53 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 5/6] staging: kpc2000: kpc_i2c: Remove unnecessary function
 tracing prints
Date: Wed, 22 May 2019 12:14:01 +0000
Message-Id: <47d7da2db4c4cbb40476fb80383184525919c65b.1558526487.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1558526487.git.gneukum1@gmail.com>
References: <cover.1558526487.git.gneukum1@gmail.com>
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
Cc: Geordan Neukum <gneukum1@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Many of the functions in kpc_i2c log debug-level messages to the
kernel log message buffer upon invocation. This is unnecessary, as
debugging tools like kgdb, kdb, etc. or the tracing tool ftrace
should be able to provide this same information. Therefore, remove
these print statements.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 26 --------------------------
 1 file changed, 26 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index 5d98ed54c05c..f9259c06b605 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -139,8 +139,6 @@ static int i801_check_pre(struct i2c_device *priv)
 {
 	int status;
 
-	dev_dbg(&priv->adapter.dev, "%s\n", __func__);
-
 	status = inb_p(SMBHSTSTS(priv));
 	if (status & SMBHSTSTS_HOST_BUSY) {
 		dev_err(&priv->adapter.dev, "SMBus is busy, can't use it! (status=%x)\n", status);
@@ -165,8 +163,6 @@ static int i801_check_post(struct i2c_device *priv, int status, int timeout)
 {
 	int result = 0;
 
-	dev_dbg(&priv->adapter.dev, "%s\n", __func__);
-
 	/* If the SMBus is still busy, we give up */
 	if (timeout) {
 		dev_err(&priv->adapter.dev, "Transaction timeout\n");
@@ -214,8 +210,6 @@ static int i801_transaction(struct i2c_device *priv, int xact)
 	int result;
 	int timeout = 0;
 
-	dev_dbg(&priv->adapter.dev, "%s\n", __func__);
-
 	result = i801_check_pre(priv);
 	if (result < 0)
 		return result;
@@ -244,8 +238,6 @@ static void i801_wait_hwpec(struct i2c_device *priv)
 	int timeout = 0;
 	int status;
 
-	dev_dbg(&priv->adapter.dev, "%s\n", __func__);
-
 	do {
 		usleep_range(250, 500);
 		status = inb_p(SMBHSTSTS(priv));
@@ -262,8 +254,6 @@ static int i801_block_transaction_by_block(struct i2c_device *priv, union i2c_sm
 	int i, len;
 	int status;
 
-	dev_dbg(&priv->adapter.dev, "%s\n", __func__);
-
 	inb_p(SMBHSTCNT(priv)); /* reset the data buffer index */
 
 	/* Use 32-byte buffer to process this transaction */
@@ -298,8 +288,6 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
 	int result;
 	int timeout;
 
-	dev_dbg(&priv->adapter.dev, "%s\n", __func__);
-
 	result = i801_check_pre(priv);
 	if (result < 0)
 		return result;
@@ -364,8 +352,6 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
 
 static int i801_set_block_buffer_mode(struct i2c_device *priv)
 {
-	dev_dbg(&priv->adapter.dev, "%s\n", __func__);
-
 	outb_p(inb_p(SMBAUXCTL(priv)) | SMBAUXCTL_E32B, SMBAUXCTL(priv));
 	if ((inb_p(SMBAUXCTL(priv)) & SMBAUXCTL_E32B) == 0)
 		return -EIO;
@@ -378,8 +364,6 @@ static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data
 	int result = 0;
 	//unsigned char hostc;
 
-	dev_dbg(&priv->adapter.dev, "%s\n", __func__);
-
 	if (command == I2C_SMBUS_I2C_BLOCK_DATA) {
 		if (read_write == I2C_SMBUS_WRITE) {
 			/* set I2C_EN bit in configuration register */
@@ -427,10 +411,6 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 	int ret, xact = 0;
 	struct i2c_device *priv = i2c_get_adapdata(adap);
 
-	dev_dbg(&priv->adapter.dev,
-		"%s (addr=%0d)  flags=%x  read_write=%x  command=%x  size=%x",
-		__func__, addr, flags, read_write, command, size);
-
 	hwpec = (priv->features & FEATURE_SMBUS_PEC) && (flags & I2C_CLIENT_PEC) && size != I2C_SMBUS_QUICK && size != I2C_SMBUS_I2C_BLOCK_DATA;
 
 	switch (size) {
@@ -605,9 +585,6 @@ int pi2c_probe(struct platform_device *pldev)
 	struct i2c_device *priv;
 	struct resource *res;
 
-	dev_dbg(&pldev->dev, "%s(pldev = %p '%s')\n", __func__, pldev,
-		pldev->name);
-
 	priv = devm_kzalloc(&pldev->dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
 		return -ENOMEM;
@@ -653,9 +630,6 @@ int pi2c_remove(struct platform_device *pldev)
 {
 	struct i2c_device *lddev;
 
-	dev_dbg(&pldev->dev, "%s(pldev = %p '%s')\n", __func__, pldev,
-		pldev->name);
-
 	lddev = (struct i2c_device *)pldev->dev.platform_data;
 
 	i2c_del_adapter(&lddev->adapter);
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
