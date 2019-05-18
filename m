Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDB322146
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 04:31:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6A54C87927;
	Sat, 18 May 2019 02:31:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I023Qyon1eyG; Sat, 18 May 2019 02:31:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 59A90878ED;
	Sat, 18 May 2019 02:31:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 284991BF306
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 02:31:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 20BFD878D0
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 02:31:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XbrzvQ9lSOUn for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 02:31:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 735C5821E2
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 02:31:12 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id a17so10283998qth.3
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 19:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Jx7wOgjO71cyvryJW/ALg7Y34849UqscRe/zdQWObUQ=;
 b=HyAG7rMv3BEUuyj9kZ97Pyx3nP2G+He64Vc/T+z5iEq6S7vbPpTTEJ5CsyefdAkMXP
 OFEmK7e4xWR6nL4IHQNz6aOXhCFeTuWgC0GieX63aTM5rQjg+egveUFW5em71vAJRbt7
 B+MZtKenHp7mGKN1YzIG4mmDz7uwzQQHOmRVAtuNgDw8wTPsdDA0BzXRvl238WdzF2ib
 jZHM1y4Cm3WqdHFOJUyoBBzcrZVSJCGdHZuuvwulX7VdSBeZVAEVPkcnvx4fzLoFbxH7
 Qzhx+r+qud5zk7vQwuei270GYm+yc5/rCB1Nt2/xPT+zpJgLg8/zRlUnxQZZ+0hcysrb
 xU8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Jx7wOgjO71cyvryJW/ALg7Y34849UqscRe/zdQWObUQ=;
 b=JXmkPLThwtCALsZXa+/WX5me2qWm/ZB4BZNijiTVffIP3uQSCP45we+4l906+4m231
 cwKhvdcMCJl+2x1jNjnfKj7ibsJRNyTI+LdUSgDjWP+ar4L5xvE9KaZGbKEaMhj7fo1f
 K0BT4lUiOFeRjcVIPrsvBOHCD2/KymkXjTjhOruRDR0CRO1p4pwXaQ4GbJH9acSBBB1D
 Y8ZYhVKFCPVlL4j2NqQecL9L4vZQylcO5npBUKYJu7RnSO/RyfKIEufW8F96A4ompW8q
 RPw2clJ34mj9fsKmO1X0d6QmTWFoMRIwNdSH8vsWALa+4jsS9okVKzZVwrP/CCAMzZUb
 7CbA==
X-Gm-Message-State: APjAAAV6nGryCp4adbfcjr6/5EpNo6ftNX06lYtJ8iBsgP+fvMsAaWkC
 WfcpAA/P8qmD16eSriqUsNs=
X-Google-Smtp-Source: APXvYqzV3iF+9yyRJp56As3DgJ4K6qFxCx3cRrp3JFL7fXnyUl0tb1yWsiDUqRCBe0D02GZmC5TdzA==
X-Received: by 2002:aed:354c:: with SMTP id b12mr53038932qte.251.1558146671624; 
 Fri, 17 May 2019 19:31:11 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.dc.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id n66sm5210322qke.6.2019.05.17.19.31.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 19:31:11 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: gneukum1@gmail.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] staging: kpc2000: kpc_i2c: fixup block comment style in
 i2c_driver.c
Date: Sat, 18 May 2019 02:30:00 +0000
Message-Id: <1103bc883e10f356a4eb6f78ec3c52ebe1f9b043.1558146549.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1558146549.git.gneukum1@gmail.com>
References: <cover.1558146549.git.gneukum1@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Throughout i2c_driver.c, there are numerous deviations from the two
standards of:
	- placing a '*' at the beginning of every line containing a
	  block comment.
	- placing the closing comment marker '*/' on a new line.

Instead, use a block comment style that is more consistent with the
prescribed guidelines.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc_i2c/i2c_driver.c | 36 ++++++++++++--------
 1 file changed, 21 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c b/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
index 03e401322a18..986148c72185 100644
--- a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
+++ b/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
@@ -137,7 +137,8 @@ MODULE_PARM_DESC(disable_features, "Disable selected driver features");
 #define outb_p(d,a) writeq(d,(void*)a)
 
 /* Make sure the SMBus host is ready to start transmitting.
-   Return 0 if it is, -EBUSY if it is not. */
+ * Return 0 if it is, -EBUSY if it is not.
+ */
 static int i801_check_pre(struct i2c_device *priv)
 {
 	int status;
@@ -226,7 +227,8 @@ static int i801_transaction(struct i2c_device *priv, int xact)
 		return result;
 	}
 	/* the current contents of SMBHSTCNT can be overwritten, since PEC,
-	 * INTREN, SMBSCMD are passed in xact */
+	 * INTREN, SMBSCMD are passed in xact
+	 */
 	outb_p(xact | I801_START, SMBHSTCNT(priv));
 
 	/* We will always wait for a fraction of a second! */
@@ -424,8 +426,9 @@ static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data
 	}
 
 	/* Experience has shown that the block buffer can only be used for
-	   SMBus (not I2C) block transactions, even though the datasheet
-	   doesn't mention this limitation. */
+	 * SMBus (not I2C) block transactions, even though the datasheet
+	 * doesn't mention this limitation.
+	 */
 	if ((priv->features & FEATURE_BLOCK_BUFFER) && command != I2C_SMBUS_I2C_BLOCK_DATA && i801_set_block_buffer_mode(priv) == 0) {
 		result = i801_block_transaction_by_block(priv, data, read_write, hwpec);
 	} else {
@@ -499,11 +502,13 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 	case I2C_SMBUS_I2C_BLOCK_DATA:
 		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_I2C_BLOCK_DATA\n");
 		/* NB: page 240 of ICH5 datasheet shows that the R/#W
-		 * bit should be cleared here, even when reading */
+		 * bit should be cleared here, even when reading
+		 */
 		outb_p((addr & 0x7f) << 1, SMBHSTADD(priv));
 		if (read_write == I2C_SMBUS_READ) {
 			/* NB: page 240 of ICH5 datasheet also shows
-			 * that DATA1 is the cmd field when reading */
+			 * that DATA1 is the cmd field when reading
+			 */
 			outb_p(command, SMBHSTDAT1(priv));
 		} else {
 			outb_p(command, SMBHSTCMD(priv));
@@ -533,8 +538,9 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 	}
 
 	/* Some BIOSes don't like it when PEC is enabled at reboot or resume
-	   time, so we forcibly disable it after every transaction. Turn off
-	   E32B for the same reason. */
+	 * time, so we forcibly disable it after every transaction. Turn off
+	 * E32B for the same reason.
+	 */
 	if (hwpec || block) {
 		dev_dbg(&priv->adapter.dev, "  [acc] hwpec || block\n");
 		outb_p(inb_p(SMBAUXCTL(priv)) & ~(SMBAUXCTL_CRC | SMBAUXCTL_E32B), SMBAUXCTL(priv));
@@ -573,13 +579,13 @@ static u32 i801_func(struct i2c_adapter *adapter)
 	struct i2c_device *priv = i2c_get_adapdata(adapter);
 
 	/* original settings
-	   u32 f = I2C_FUNC_SMBUS_QUICK | I2C_FUNC_SMBUS_BYTE |
-	   I2C_FUNC_SMBUS_BYTE_DATA | I2C_FUNC_SMBUS_WORD_DATA |
-	   I2C_FUNC_SMBUS_BLOCK_DATA | I2C_FUNC_SMBUS_WRITE_I2C_BLOCK |
-	   ((priv->features & FEATURE_SMBUS_PEC) ? I2C_FUNC_SMBUS_PEC : 0) |
-	   ((priv->features & FEATURE_I2C_BLOCK_READ) ?
-	   I2C_FUNC_SMBUS_READ_I2C_BLOCK : 0);
-	*/
+	 * u32 f = I2C_FUNC_SMBUS_QUICK | I2C_FUNC_SMBUS_BYTE |
+	 * I2C_FUNC_SMBUS_BYTE_DATA | I2C_FUNC_SMBUS_WORD_DATA |
+	 * I2C_FUNC_SMBUS_BLOCK_DATA | I2C_FUNC_SMBUS_WRITE_I2C_BLOCK |
+	 * ((priv->features & FEATURE_SMBUS_PEC) ? I2C_FUNC_SMBUS_PEC : 0) |
+	 * ((priv->features & FEATURE_I2C_BLOCK_READ) ?
+	 * I2C_FUNC_SMBUS_READ_I2C_BLOCK : 0);
+	 */
 
 	// http://lxr.free-electrons.com/source/include/uapi/linux/i2c.h#L85
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
