Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FECF3AFEB
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 09:48:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D7A25203D2;
	Mon, 10 Jun 2019 07:48:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1eXnynjMseNW; Mon, 10 Jun 2019 07:48:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6DD4B20336;
	Mon, 10 Jun 2019 07:48:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B7E781BF410
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:48:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B414F8507B
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:48:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OgmPqjUaqLCq for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 07:48:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6574D81D87
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 07:48:30 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id c85so4811780pfc.1
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 00:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=5H6DGPewNEGTnqFcxQkV5ULFccMkx7tHAf4aT320zBo=;
 b=fuAZlrzghJQyjBeQzJKm7a1oKmhPTt1CDXD9kCq8JmD3C5KmYCQMmGzrabeVTmfSJn
 5IUSD9TepfE/BTcTXraNClCJV9F/Y/m/zemipbJ824mCqD1PmaEunkH9d8ntGNcdhk1F
 HR5ZYffJiwpadVom+uxdJY4TohPvv6xnsBtvdhj9m0JWK+yn1XR9BSPWGNVkbRWRiz4B
 wY17kef9PXN4w9TQCka481b4Q0YenqG/Uv0aStLZ8vIDhc6Ai5yvlKs6O68QluiHHUSL
 3kzTNQsRdIv/l7GsVRNMZSlKbO64iC1S1g3wfuO82RzTwN0MpRqrwxruYf6/xqpwAueO
 gjcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5H6DGPewNEGTnqFcxQkV5ULFccMkx7tHAf4aT320zBo=;
 b=gW+1WPwQc+fdpjucrkXTwa/wB2IiIt4Bjw8hVaTjZqdD8Dx2pv516dQVMYX9Z8k1lg
 sB5kUw8Nv6O1EFmDdDEOtht1mxFCaC4TRgK3mJwYZKOevLBZV73udQqFTQK/Tl8gAu4E
 mEcSIF53l8h0iFYXYOWtB93eRMAwV8ba2+en7MGTX9ZUelN8vmOam+XDT3obfIaZJP+d
 drDA21tZ9oZFfOvHV7pLg25TxGursor3ev2gSnsBmq4ycpHogfEwbZCpv9XG0eN5IQ6k
 fWjuKczKRK2U4rZuz9BTfDBjXSSU5KqrFzEGthtzdpA9oJpNoLZZelFPotwS0XFF/Ec1
 NIag==
X-Gm-Message-State: APjAAAUYX+GgwcmvgrHeC96T39GTwwcE3S/q+mMey15z+qC7QfCgewpv
 BkeVCRvoobg/EDJ7A5HfdmI=
X-Google-Smtp-Source: APXvYqxZcl+IGkdR5yNjWx1nokoAgVP7ALkstYJ+FtmN9IqE+BWtOQnmWf43BFQMw05nBDXPcspgZA==
X-Received: by 2002:a63:e54d:: with SMTP id z13mr14529118pgj.132.1560152909855; 
 Mon, 10 Jun 2019 00:48:29 -0700 (PDT)
Received: from localhost.localdomain.localdomain ([192.157.107.159])
 by smtp.gmail.com with ESMTPSA id l1sm9405222pgi.91.2019.06.10.00.48.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 00:48:29 -0700 (PDT)
From: Hao Xu <haoxu.linuxkernel@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: kpc2000: kpc_i2c: remove the macros inb_p and
 outb_p
Date: Mon, 10 Jun 2019 15:48:24 +0800
Message-Id: <1560152904-31894-1-git-send-email-haoxu.linuxkernel@gmail.com>
X-Mailer: git-send-email 1.8.3.1
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com, haoxu.linuxkernel@gmail.com,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

remove inb_p and outb_p to call readq/writeq directly.

Signed-off-by: Hao Xu <haoxu.linuxkernel@gmail.com>
---
Changes in v2:
- remove the macros inb_p/outb_p and use readq/writeq directly, per https://lkml.kernel.org/lkml/20190608134505.GA963@arch-01.home/
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 112 ++++++++++++++++------------------
 1 file changed, 53 insertions(+), 59 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index 69e8773..246d5b3 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -122,12 +122,6 @@ struct i2c_device {
 /* Not really a feature, but it's convenient to handle it as such */
 #define FEATURE_IDF             BIT(15)
 
-// FIXME!
-#undef inb_p
-#define inb_p(a) readq((void *)a)
-#undef outb_p
-#define outb_p(d, a) writeq(d, (void *)a)
-
 /* Make sure the SMBus host is ready to start transmitting.
  * Return 0 if it is, -EBUSY if it is not.
  */
@@ -135,7 +129,7 @@ static int i801_check_pre(struct i2c_device *priv)
 {
 	int status;
 
-	status = inb_p(SMBHSTSTS(priv));
+	status = readq((void *)SMBHSTSTS(priv));
 	if (status & SMBHSTSTS_HOST_BUSY) {
 		dev_err(&priv->adapter.dev, "SMBus is busy, can't use it! (status=%x)\n", status);
 		return -EBUSY;
@@ -144,8 +138,8 @@ static int i801_check_pre(struct i2c_device *priv)
 	status &= STATUS_FLAGS;
 	if (status) {
 		//dev_dbg(&priv->adapter.dev, "Clearing status flags (%02x)\n", status);
-		outb_p(status, SMBHSTSTS(priv));
-		status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
+		writeq(status, (void *)SMBHSTSTS(priv));
+		status = readq((void *)SMBHSTSTS(priv)) & STATUS_FLAGS;
 		if (status) {
 			dev_err(&priv->adapter.dev, "Failed clearing status flags (%02x)\n", status);
 			return -EBUSY;
@@ -164,15 +158,15 @@ static int i801_check_post(struct i2c_device *priv, int status, int timeout)
 		dev_err(&priv->adapter.dev, "Transaction timeout\n");
 		/* try to stop the current command */
 		dev_dbg(&priv->adapter.dev, "Terminating the current operation\n");
-		outb_p(inb_p(SMBHSTCNT(priv)) | SMBHSTCNT_KILL, SMBHSTCNT(priv));
+		writeq(readq((void *)SMBHSTCNT(priv)) | SMBHSTCNT_KILL, (void *)SMBHSTCNT(priv));
 		usleep_range(1000, 2000);
-		outb_p(inb_p(SMBHSTCNT(priv)) & (~SMBHSTCNT_KILL), SMBHSTCNT(priv));
+		writeq(readq((void *)SMBHSTCNT(priv)) & (~SMBHSTCNT_KILL), (void *)SMBHSTCNT(priv));
 
 		/* Check if it worked */
-		status = inb_p(SMBHSTSTS(priv));
+		status = readq((void *)SMBHSTSTS(priv));
 		if ((status & SMBHSTSTS_HOST_BUSY) || !(status & SMBHSTSTS_FAILED))
 			dev_err(&priv->adapter.dev, "Failed terminating the transaction\n");
-		outb_p(STATUS_FLAGS, SMBHSTSTS(priv));
+		writeq(STATUS_FLAGS, (void *)SMBHSTSTS(priv));
 		return -ETIMEDOUT;
 	}
 
@@ -191,8 +185,8 @@ static int i801_check_post(struct i2c_device *priv, int status, int timeout)
 
 	if (result) {
 		/* Clear error flags */
-		outb_p(status & STATUS_FLAGS, SMBHSTSTS(priv));
-		status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
+		writeq(status & STATUS_FLAGS, (void *)SMBHSTSTS(priv));
+		status = readq((void *)SMBHSTSTS(priv)) & STATUS_FLAGS;
 		if (status)
 			dev_warn(&priv->adapter.dev, "Failed clearing status flags at end of transaction (%02x)\n", status);
 	}
@@ -212,19 +206,19 @@ static int i801_transaction(struct i2c_device *priv, int xact)
 	/* the current contents of SMBHSTCNT can be overwritten, since PEC,
 	 * INTREN, SMBSCMD are passed in xact
 	 */
-	outb_p(xact | I801_START, SMBHSTCNT(priv));
+	writeq(xact | I801_START, (void *)SMBHSTCNT(priv));
 
 	/* We will always wait for a fraction of a second! */
 	do {
 		usleep_range(250, 500);
-		status = inb_p(SMBHSTSTS(priv));
+		status = readq((void *)SMBHSTSTS(priv));
 	} while ((status & SMBHSTSTS_HOST_BUSY) && (timeout++ < MAX_RETRIES));
 
 	result = i801_check_post(priv, status, timeout > MAX_RETRIES);
 	if (result < 0)
 		return result;
 
-	outb_p(SMBHSTSTS_INTR, SMBHSTSTS(priv));
+	writeq(SMBHSTSTS_INTR, (void *)SMBHSTSTS(priv));
 	return 0;
 }
 
@@ -236,13 +230,13 @@ static void i801_wait_hwpec(struct i2c_device *priv)
 
 	do {
 		usleep_range(250, 500);
-		status = inb_p(SMBHSTSTS(priv));
+		status = readq((void *)SMBHSTSTS(priv));
 	} while ((!(status & SMBHSTSTS_INTR)) && (timeout++ < MAX_RETRIES));
 
 	if (timeout > MAX_RETRIES)
 		dev_dbg(&priv->adapter.dev, "PEC Timeout!\n");
 
-	outb_p(status, SMBHSTSTS(priv));
+	writeq(status, (void *)SMBHSTSTS(priv));
 }
 
 static int i801_block_transaction_by_block(struct i2c_device *priv, union i2c_smbus_data *data, char read_write, int hwpec)
@@ -250,14 +244,14 @@ static int i801_block_transaction_by_block(struct i2c_device *priv, union i2c_sm
 	int i, len;
 	int status;
 
-	inb_p(SMBHSTCNT(priv)); /* reset the data buffer index */
+	readq((void *)SMBHSTCNT(priv)); /* reset the data buffer index */
 
 	/* Use 32-byte buffer to process this transaction */
 	if (read_write == I2C_SMBUS_WRITE) {
 		len = data->block[0];
-		outb_p(len, SMBHSTDAT0(priv));
+		writeq(len, (void *)SMBHSTDAT0(priv));
 		for (i = 0; i < len; i++)
-			outb_p(data->block[i+1], SMBBLKDAT(priv));
+			writeq(data->block[i+1], (void *)SMBBLKDAT(priv));
 	}
 
 	status = i801_transaction(priv, I801_BLOCK_DATA | ENABLE_INT9 | I801_PEC_EN * hwpec);
@@ -265,13 +259,13 @@ static int i801_block_transaction_by_block(struct i2c_device *priv, union i2c_sm
 		return status;
 
 	if (read_write == I2C_SMBUS_READ) {
-		len = inb_p(SMBHSTDAT0(priv));
+		len = readq((void *)SMBHSTDAT0(priv));
 		if (len < 1 || len > I2C_SMBUS_BLOCK_MAX)
 			return -EPROTO;
 
 		data->block[0] = len;
 		for (i = 0; i < len; i++)
-			data->block[i + 1] = inb_p(SMBBLKDAT(priv));
+			data->block[i + 1] = readq((void *)SMBBLKDAT(priv));
 	}
 	return 0;
 }
@@ -291,8 +285,8 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
 	len = data->block[0];
 
 	if (read_write == I2C_SMBUS_WRITE) {
-		outb_p(len, SMBHSTDAT0(priv));
-		outb_p(data->block[1], SMBBLKDAT(priv));
+		writeq(len, (void *)SMBHSTDAT0(priv));
+		writeq(data->block[1], (void *)SMBBLKDAT(priv));
 	}
 
 	for (i = 1; i <= len; i++) {
@@ -307,28 +301,28 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
 			else
 				smbcmd = I801_BLOCK_DATA;
 		}
-		outb_p(smbcmd | ENABLE_INT9, SMBHSTCNT(priv));
+		writeq(smbcmd | ENABLE_INT9, (void *)SMBHSTCNT(priv));
 
 		if (i == 1)
-			outb_p(inb(SMBHSTCNT(priv)) | I801_START, SMBHSTCNT(priv));
+			writeq(inb(SMBHSTCNT(priv)) | I801_START, (void *)SMBHSTCNT(priv));
 		/* We will always wait for a fraction of a second! */
 		timeout = 0;
 		do {
 			usleep_range(250, 500);
-			status = inb_p(SMBHSTSTS(priv));
+			status = readq((void *)SMBHSTSTS(priv));
 		} while ((!(status & SMBHSTSTS_BYTE_DONE)) && (timeout++ < MAX_RETRIES));
 
 		result = i801_check_post(priv, status, timeout > MAX_RETRIES);
 		if (result < 0)
 			return result;
 		if (i == 1 && read_write == I2C_SMBUS_READ && command != I2C_SMBUS_I2C_BLOCK_DATA) {
-			len = inb_p(SMBHSTDAT0(priv));
+			len = readq((void *)SMBHSTDAT0(priv));
 			if (len < 1 || len > I2C_SMBUS_BLOCK_MAX) {
 				dev_err(&priv->adapter.dev, "Illegal SMBus block read size %d\n", len);
 				/* Recover */
-				while (inb_p(SMBHSTSTS(priv)) & SMBHSTSTS_HOST_BUSY)
-					outb_p(SMBHSTSTS_BYTE_DONE, SMBHSTSTS(priv));
-				outb_p(SMBHSTSTS_INTR, SMBHSTSTS(priv));
+				while (readq((void *)SMBHSTSTS(priv)) & SMBHSTSTS_HOST_BUSY)
+					writeq(SMBHSTSTS_BYTE_DONE, (void *)SMBHSTSTS(priv));
+				writeq(SMBHSTSTS_INTR, (void *)SMBHSTSTS(priv));
 				return -EPROTO;
 			}
 			data->block[0] = len;
@@ -336,11 +330,11 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
 
 		/* Retrieve/store value in SMBBLKDAT */
 		if (read_write == I2C_SMBUS_READ)
-			data->block[i] = inb_p(SMBBLKDAT(priv));
+			data->block[i] = readq((void *)SMBBLKDAT(priv));
 		if (read_write == I2C_SMBUS_WRITE && i+1 <= len)
-			outb_p(data->block[i+1], SMBBLKDAT(priv));
+			writeq(data->block[i+1], (void *)SMBBLKDAT(priv));
 		/* signals SMBBLKDAT ready */
-		outb_p(SMBHSTSTS_BYTE_DONE | SMBHSTSTS_INTR, SMBHSTSTS(priv));
+		writeq(SMBHSTSTS_BYTE_DONE | SMBHSTSTS_INTR, (void *)SMBHSTSTS(priv));
 	}
 
 	return 0;
@@ -348,8 +342,8 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
 
 static int i801_set_block_buffer_mode(struct i2c_device *priv)
 {
-	outb_p(inb_p(SMBAUXCTL(priv)) | SMBAUXCTL_E32B, SMBAUXCTL(priv));
-	if ((inb_p(SMBAUXCTL(priv)) & SMBAUXCTL_E32B) == 0)
+	writeq(readq((void *)SMBAUXCTL(priv)) | SMBAUXCTL_E32B, (void *)SMBAUXCTL(priv));
+	if ((readq((void *)SMBAUXCTL(priv)) & SMBAUXCTL_E32B) == 0)
 		return -EIO;
 	return 0;
 }
@@ -412,39 +406,39 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 	switch (size) {
 	case I2C_SMBUS_QUICK:
 		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_QUICK\n");
-		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
+		writeq(((addr & 0x7f) << 1) | (read_write & 0x01), (void *)SMBHSTADD(priv));
 		xact = I801_QUICK;
 		break;
 	case I2C_SMBUS_BYTE:
 		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_BYTE\n");
 
-		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
+		writeq(((addr & 0x7f) << 1) | (read_write & 0x01), (void *)SMBHSTADD(priv));
 		if (read_write == I2C_SMBUS_WRITE)
-			outb_p(command, SMBHSTCMD(priv));
+			writeq(command, (void *)SMBHSTCMD(priv));
 		xact = I801_BYTE;
 		break;
 	case I2C_SMBUS_BYTE_DATA:
 		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_BYTE_DATA\n");
-		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
-		outb_p(command, SMBHSTCMD(priv));
+		writeq(((addr & 0x7f) << 1) | (read_write & 0x01), (void *)SMBHSTADD(priv));
+		writeq(command, (void *)SMBHSTCMD(priv));
 		if (read_write == I2C_SMBUS_WRITE)
-			outb_p(data->byte, SMBHSTDAT0(priv));
+			writeq(data->byte, (void *)SMBHSTDAT0(priv));
 		xact = I801_BYTE_DATA;
 		break;
 	case I2C_SMBUS_WORD_DATA:
 		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_WORD_DATA\n");
-		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
-		outb_p(command, SMBHSTCMD(priv));
+		writeq(((addr & 0x7f) << 1) | (read_write & 0x01), (void *)SMBHSTADD(priv));
+		writeq(command, (void *)SMBHSTCMD(priv));
 		if (read_write == I2C_SMBUS_WRITE) {
-			outb_p(data->word & 0xff, SMBHSTDAT0(priv));
-			outb_p((data->word & 0xff00) >> 8, SMBHSTDAT1(priv));
+			writeq(data->word & 0xff, (void *)SMBHSTDAT0(priv));
+			writeq((data->word & 0xff00) >> 8, (void *)SMBHSTDAT1(priv));
 		}
 		xact = I801_WORD_DATA;
 		break;
 	case I2C_SMBUS_BLOCK_DATA:
 		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_BLOCK_DATA\n");
-		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
-		outb_p(command, SMBHSTCMD(priv));
+		writeq(((addr & 0x7f) << 1) | (read_write & 0x01), (void *)SMBHSTADD(priv));
+		writeq(command, (void *)SMBHSTCMD(priv));
 		block = 1;
 		break;
 	case I2C_SMBUS_I2C_BLOCK_DATA:
@@ -452,14 +446,14 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 		/* NB: page 240 of ICH5 datasheet shows that the R/#W
 		 * bit should be cleared here, even when reading
 		 */
-		outb_p((addr & 0x7f) << 1, SMBHSTADD(priv));
+		writeq((addr & 0x7f) << 1, (void *)SMBHSTADD(priv));
 		if (read_write == I2C_SMBUS_READ) {
 			/* NB: page 240 of ICH5 datasheet also shows
 			 * that DATA1 is the cmd field when reading
 			 */
-			outb_p(command, SMBHSTDAT1(priv));
+			writeq(command, (void *)SMBHSTDAT1(priv));
 		} else {
-			outb_p(command, SMBHSTCMD(priv));
+			writeq(command, (void *)SMBHSTCMD(priv));
 		}
 		block = 1;
 		break;
@@ -470,10 +464,10 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 
 	if (hwpec) { /* enable/disable hardware PEC */
 		dev_dbg(&priv->adapter.dev, "  [acc] hwpec: yes\n");
-		outb_p(inb_p(SMBAUXCTL(priv)) | SMBAUXCTL_CRC, SMBAUXCTL(priv));
+		writeq(readq((void *)SMBAUXCTL(priv)) | SMBAUXCTL_CRC, (void *)SMBAUXCTL(priv));
 	} else {
 		dev_dbg(&priv->adapter.dev, "  [acc] hwpec: no\n");
-		outb_p(inb_p(SMBAUXCTL(priv)) & (~SMBAUXCTL_CRC), SMBAUXCTL(priv));
+		writeq(readq((void *)SMBAUXCTL(priv)) & (~SMBAUXCTL_CRC), (void *)SMBAUXCTL(priv));
 	}
 
 	if (block) {
@@ -491,7 +485,7 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 	 */
 	if (hwpec || block) {
 		dev_dbg(&priv->adapter.dev, "  [acc] hwpec || block\n");
-		outb_p(inb_p(SMBAUXCTL(priv)) & ~(SMBAUXCTL_CRC | SMBAUXCTL_E32B), SMBAUXCTL(priv));
+		writeq(readq((void *)SMBAUXCTL(priv)) & ~(SMBAUXCTL_CRC | SMBAUXCTL_E32B), (void *)SMBAUXCTL(priv));
 	}
 	if (block) {
 		dev_dbg(&priv->adapter.dev, "  [acc] block\n");
@@ -510,11 +504,11 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 	case I801_BYTE:  /* Result put in SMBHSTDAT0 */
 	case I801_BYTE_DATA:
 		dev_dbg(&priv->adapter.dev, "  [acc] I801_BYTE or I801_BYTE_DATA\n");
-		data->byte = inb_p(SMBHSTDAT0(priv));
+		data->byte = readq((void *)SMBHSTDAT0(priv));
 		break;
 	case I801_WORD_DATA:
 		dev_dbg(&priv->adapter.dev, "  [acc] I801_WORD_DATA\n");
-		data->word = inb_p(SMBHSTDAT0(priv)) + (inb_p(SMBHSTDAT1(priv)) << 8);
+		data->word = readq((void *)SMBHSTDAT0(priv)) + (readq((void *)SMBHSTDAT1(priv)) << 8);
 		break;
 	}
 	return 0;
-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
