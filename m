Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BAAB72638F
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 14:15:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4270C85FF3;
	Wed, 22 May 2019 12:14:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TdM40g8d4UiP; Wed, 22 May 2019 12:14:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 658B785F5D;
	Wed, 22 May 2019 12:14:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9CAC71BF2BB
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 12:14:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9891285F34
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 12:14:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iN2b0CjM3lUO for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:14:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9E11A85F31
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 12:14:52 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id k24so1970565qtq.7
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 05:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hXh4bCmEwa+AxUGicBmFJFLbtCUNuHPP264+/JbrWoQ=;
 b=hRYnE1JRE0jvpBvCDewt+osyr31YDeowLBP46ZWh8aRljBKC4/JG+YHt3RayQ13B1h
 CltThGCPD3CdQEDp/ZssNgtYk0gE1LyQC7DTOs7E4psw/sa84ULDk12iJWAg5oyA8O3S
 e/vh2+Wf1eajwy4JFiYQyVeXcO4Ium2pEaZkpDHz2tSY/M+P9RKzu7IKuYOfxAQLNxnP
 bz7+KlZsV/jbG2jLieYxXsFvsy7VlQtGo6Bl/awFza2RxtYGYIlYmh7Xwqi3mL609IIw
 yfBv+eAyFP3LCL/dvAHljFtRLmKOrBSt5WEvmSUYqrpAWuhcr+TOj2zbTtetzfnROhkb
 Dy0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hXh4bCmEwa+AxUGicBmFJFLbtCUNuHPP264+/JbrWoQ=;
 b=Ny1yZOvVIKqS1NgfwWwzyF4toqsY/ZtnChbDVEJaRMPPxLnzrbpuoG1MrDswKY/VN0
 uY2nEhdxKs6zaLXD4j2bkfdW3BWx+A32yEK7JT/vsvJ9pZwmWkT+ibGXeRUJO+pI0wG6
 DOx/SKSGbbXB9jdjX8q6hNtt6HugZ3GuB+QXc9+wSJd4c0vmbWXj70nw7Q3m0JZYKESV
 oChifMm97PKOQzpMJGW4+YXl+2qKe3WvhSlI4X8C/ah2NUCTTrbdw7/85o9Ww69eMuAM
 qxEoWXXppMWfw/C3Dy6rgm3EAnaRS6nwUNnWY2iMCj/xCK0ZZa880d/ooP8W7USH2q5e
 fvvg==
X-Gm-Message-State: APjAAAUfkT5fcrzPnecXUe7YmRYLcLdgcBXSXZApfahieN/s4xNMG735
 vDwqZkMTaMl56XoHM9xK0UQcJHqanWo=
X-Google-Smtp-Source: APXvYqzhNFYWaMbIBmU3VAAID0mq8CCWphfSuFA7nGG5AABOJ5MGjM7sVs50lGCWOSe/kJTPQi2RvQ==
X-Received: by 2002:ac8:3801:: with SMTP id q1mr73691746qtb.250.1558527291671; 
 Wed, 22 May 2019 05:14:51 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.dc.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id w2sm8742070qto.19.2019.05.22.05.14.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 05:14:51 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/6] staging: kpc2000: kpc_i2c: newline fixups to meet linux
 style guide
Date: Wed, 22 May 2019 12:13:59 +0000
Message-Id: <1c1b8428a502e79f19af7bc2a98787ecc6a1ed5a.1558526487.git.gneukum1@gmail.com>
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

The linux coding style document states:

  1) That braces should not be used where a single single statement
     will do. Therefore all instances of single block statements
     wrapped in braces that do not meet the qualifications of any
     of the exceptions to the rule should be fixed up.

  2) That the declaration of variables local to a given function
     should be immediately followed by a blank newline. Therefore,
     the single instance of this in kpc2000_i2c.c should be fixed
     up.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 82 ++++++++++-----------------
 1 file changed, 29 insertions(+), 53 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index 40a89998726e..a1ebc2386d70 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -178,9 +178,8 @@ static int i801_check_post(struct i2c_device *priv, int status, int timeout)
 
 		/* Check if it worked */
 		status = inb_p(SMBHSTSTS(priv));
-		if ((status & SMBHSTSTS_HOST_BUSY) || !(status & SMBHSTSTS_FAILED)) {
+		if ((status & SMBHSTSTS_HOST_BUSY) || !(status & SMBHSTSTS_FAILED))
 			dev_err(&priv->adapter.dev, "Failed terminating the transaction\n");
-		}
 		outb_p(STATUS_FLAGS, SMBHSTSTS(priv));
 		return -ETIMEDOUT;
 	}
@@ -202,9 +201,8 @@ static int i801_check_post(struct i2c_device *priv, int status, int timeout)
 		/* Clear error flags */
 		outb_p(status & STATUS_FLAGS, SMBHSTSTS(priv));
 		status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
-		if (status) {
+		if (status)
 			dev_warn(&priv->adapter.dev, "Failed clearing status flags at end of transaction (%02x)\n", status);
-		}
 	}
 
 	return result;
@@ -219,9 +217,8 @@ static int i801_transaction(struct i2c_device *priv, int xact)
 	dev_dbg(&priv->adapter.dev, "%s\n", __func__);
 
 	result = i801_check_pre(priv);
-	if (result < 0) {
+	if (result < 0)
 		return result;
-	}
 	/* the current contents of SMBHSTCNT can be overwritten, since PEC,
 	 * INTREN, SMBSCMD are passed in xact
 	 */
@@ -234,9 +231,8 @@ static int i801_transaction(struct i2c_device *priv, int xact)
 	} while ((status & SMBHSTSTS_HOST_BUSY) && (timeout++ < MAX_RETRIES));
 
 	result = i801_check_post(priv, status, timeout > MAX_RETRIES);
-	if (result < 0) {
+	if (result < 0)
 		return result;
-	}
 
 	outb_p(SMBHSTSTS_INTR, SMBHSTSTS(priv));
 	return 0;
@@ -255,9 +251,8 @@ static void i801_wait_hwpec(struct i2c_device *priv)
 		status = inb_p(SMBHSTSTS(priv));
 	} while ((!(status & SMBHSTSTS_INTR)) && (timeout++ < MAX_RETRIES));
 
-	if (timeout > MAX_RETRIES) {
+	if (timeout > MAX_RETRIES)
 		dev_dbg(&priv->adapter.dev, "PEC Timeout!\n");
-	}
 
 	outb_p(status, SMBHSTSTS(priv));
 }
@@ -275,26 +270,22 @@ static int i801_block_transaction_by_block(struct i2c_device *priv, union i2c_sm
 	if (read_write == I2C_SMBUS_WRITE) {
 		len = data->block[0];
 		outb_p(len, SMBHSTDAT0(priv));
-		for (i = 0; i < len; i++) {
+		for (i = 0; i < len; i++)
 			outb_p(data->block[i+1], SMBBLKDAT(priv));
-		}
 	}
 
 	status = i801_transaction(priv, I801_BLOCK_DATA | ENABLE_INT9 | I801_PEC_EN * hwpec);
-	if (status) {
+	if (status)
 		return status;
-	}
 
 	if (read_write == I2C_SMBUS_READ) {
 		len = inb_p(SMBHSTDAT0(priv));
-		if (len < 1 || len > I2C_SMBUS_BLOCK_MAX) {
+		if (len < 1 || len > I2C_SMBUS_BLOCK_MAX)
 			return -EPROTO;
-		}
 
 		data->block[0] = len;
-		for (i = 0; i < len; i++) {
+		for (i = 0; i < len; i++)
 			data->block[i + 1] = inb_p(SMBBLKDAT(priv));
-		}
 	}
 	return 0;
 }
@@ -310,9 +301,8 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
 	dev_dbg(&priv->adapter.dev, "%s\n", __func__);
 
 	result = i801_check_pre(priv);
-	if (result < 0) {
+	if (result < 0)
 		return result;
-	}
 
 	len = data->block[0];
 
@@ -323,23 +313,20 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
 
 	for (i = 1; i <= len; i++) {
 		if (i == len && read_write == I2C_SMBUS_READ) {
-			if (command == I2C_SMBUS_I2C_BLOCK_DATA) {
+			if (command == I2C_SMBUS_I2C_BLOCK_DATA)
 				smbcmd = I801_I2C_BLOCK_LAST;
-			} else {
+			else
 				smbcmd = I801_BLOCK_LAST;
-			}
 		} else {
-			if (command == I2C_SMBUS_I2C_BLOCK_DATA && read_write == I2C_SMBUS_READ) {
+			if (command == I2C_SMBUS_I2C_BLOCK_DATA && read_write == I2C_SMBUS_READ)
 				smbcmd = I801_I2C_BLOCK_DATA;
-			} else {
+			else
 				smbcmd = I801_BLOCK_DATA;
-			}
 		}
 		outb_p(smbcmd | ENABLE_INT9, SMBHSTCNT(priv));
 
-		if (i == 1) {
+		if (i == 1)
 			outb_p(inb(SMBHSTCNT(priv)) | I801_START, SMBHSTCNT(priv));
-		}
 		/* We will always wait for a fraction of a second! */
 		timeout = 0;
 		do {
@@ -348,17 +335,15 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
 		} while ((!(status & SMBHSTSTS_BYTE_DONE)) && (timeout++ < MAX_RETRIES));
 
 		result = i801_check_post(priv, status, timeout > MAX_RETRIES);
-		if (result < 0) {
+		if (result < 0)
 			return result;
-		}
 		if (i == 1 && read_write == I2C_SMBUS_READ && command != I2C_SMBUS_I2C_BLOCK_DATA) {
 			len = inb_p(SMBHSTDAT0(priv));
 			if (len < 1 || len > I2C_SMBUS_BLOCK_MAX) {
 				dev_err(&priv->adapter.dev, "Illegal SMBus block read size %d\n", len);
 				/* Recover */
-				while (inb_p(SMBHSTSTS(priv)) & SMBHSTSTS_HOST_BUSY) {
+				while (inb_p(SMBHSTSTS(priv)) & SMBHSTSTS_HOST_BUSY)
 					outb_p(SMBHSTSTS_BYTE_DONE, SMBHSTSTS(priv));
-				}
 				outb_p(SMBHSTSTS_INTR, SMBHSTSTS(priv));
 				return -EPROTO;
 			}
@@ -366,12 +351,10 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
 		}
 
 		/* Retrieve/store value in SMBBLKDAT */
-		if (read_write == I2C_SMBUS_READ) {
+		if (read_write == I2C_SMBUS_READ)
 			data->block[i] = inb_p(SMBBLKDAT(priv));
-		}
-		if (read_write == I2C_SMBUS_WRITE && i+1 <= len) {
+		if (read_write == I2C_SMBUS_WRITE && i+1 <= len)
 			outb_p(data->block[i+1], SMBBLKDAT(priv));
-		}
 		/* signals SMBBLKDAT ready */
 		outb_p(SMBHSTSTS_BYTE_DONE | SMBHSTSTS_INTR, SMBHSTSTS(priv));
 	}
@@ -384,9 +367,8 @@ static int i801_set_block_buffer_mode(struct i2c_device *priv)
 	dev_dbg(&priv->adapter.dev, "%s\n", __func__);
 
 	outb_p(inb_p(SMBAUXCTL(priv)) | SMBAUXCTL_E32B, SMBAUXCTL(priv));
-	if ((inb_p(SMBAUXCTL(priv)) & SMBAUXCTL_E32B) == 0) {
+	if ((inb_p(SMBAUXCTL(priv)) & SMBAUXCTL_E32B) == 0)
 		return -EIO;
-	}
 	return 0;
 }
 
@@ -411,12 +393,10 @@ static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data
 	}
 
 	if (read_write == I2C_SMBUS_WRITE || command == I2C_SMBUS_I2C_BLOCK_DATA) {
-		if (data->block[0] < 1) {
+		if (data->block[0] < 1)
 			data->block[0] = 1;
-		}
-		if (data->block[0] > I2C_SMBUS_BLOCK_MAX) {
+		if (data->block[0] > I2C_SMBUS_BLOCK_MAX)
 			data->block[0] = I2C_SMBUS_BLOCK_MAX;
-		}
 	} else {
 		data->block[0] = 32;	/* max for SMBus block reads */
 	}
@@ -425,14 +405,12 @@ static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data
 	 * SMBus (not I2C) block transactions, even though the datasheet
 	 * doesn't mention this limitation.
 	 */
-	if ((priv->features & FEATURE_BLOCK_BUFFER) && command != I2C_SMBUS_I2C_BLOCK_DATA && i801_set_block_buffer_mode(priv) == 0) {
+	if ((priv->features & FEATURE_BLOCK_BUFFER) && command != I2C_SMBUS_I2C_BLOCK_DATA && i801_set_block_buffer_mode(priv) == 0)
 		result = i801_block_transaction_by_block(priv, data, read_write, hwpec);
-	} else {
+	else
 		result = i801_block_transaction_byte_by_byte(priv, data, read_write, command, hwpec);
-	}
-	if (result == 0 && hwpec) {
+	if (result == 0 && hwpec)
 		i801_wait_hwpec(priv);
-	}
 	if (command == I2C_SMBUS_I2C_BLOCK_DATA && read_write == I2C_SMBUS_WRITE) {
 		/* restore saved configuration register value */
 		//TODO: Figure out the right thing to do here...
@@ -465,18 +443,16 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_BYTE\n");
 
 		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
-		if (read_write == I2C_SMBUS_WRITE) {
+		if (read_write == I2C_SMBUS_WRITE)
 			outb_p(command, SMBHSTCMD(priv));
-		}
 		xact = I801_BYTE;
 		break;
 	case I2C_SMBUS_BYTE_DATA:
 		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_BYTE_DATA\n");
 		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
 		outb_p(command, SMBHSTCMD(priv));
-		if (read_write == I2C_SMBUS_WRITE) {
+		if (read_write == I2C_SMBUS_WRITE)
 			outb_p(data->byte, SMBHSTDAT0(priv));
-		}
 		xact = I801_BYTE_DATA;
 		break;
 	case I2C_SMBUS_WORD_DATA:
@@ -633,9 +609,8 @@ int pi2c_probe(struct platform_device *pldev)
 		pldev->name);
 
 	priv = devm_kzalloc(&pldev->dev, sizeof(*priv), GFP_KERNEL);
-	if (!priv) {
+	if (!priv)
 		return -ENOMEM;
-	}
 
 	i2c_set_adapdata(&priv->adapter, priv);
 	priv->adapter.owner = THIS_MODULE;
@@ -677,6 +652,7 @@ int pi2c_probe(struct platform_device *pldev)
 int pi2c_remove(struct platform_device *pldev)
 {
 	struct i2c_device *lddev;
+
 	dev_dbg(&pldev->dev, "%s(pldev = %p '%s')\n", __func__, pldev,
 		pldev->name);
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
