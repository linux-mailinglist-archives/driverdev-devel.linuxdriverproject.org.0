Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB8622147
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 04:31:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9671486BA1;
	Sat, 18 May 2019 02:31:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pW0rZ83LRvxr; Sat, 18 May 2019 02:31:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B9FC286B89;
	Sat, 18 May 2019 02:31:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D33BC1BF306
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 02:31:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CC4AB878D0
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 02:31:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2mtlUkEKBPkb for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 02:31:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 44EF9821E2
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 02:31:09 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id p18so5092547qkk.0
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 19:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=PTBG03dcRrEeV4qM9X3q8Tc4RNOPyvEHkjChA/R1skY=;
 b=lnlYvX9VTwd0QsdlOtw7yO2lkKpRIXbqbS4lq5yQ2kymr9yjkZEuke+8tuNVt1LVd9
 WBJrxW6egv8DlLhteqrXG/ey/7hPLU3RUofIqoGus2ulFxgzPrnNQBY7Aj9KreL9MS78
 Eejw45sVdp8e0pr8T+GcWNKV+bKHXDcQy/Xmpb7y8j8sANo3Lx66cJZ0aAnmUmI38drQ
 CHItQnN3i1bovIhqVcmp5lUe4k6hkszjG0D84fwhZb8KpouI1i0hQ45oC6CsrNcAESEF
 +HKVCPXyJAj11cnX9OSVgti1mIin2M0fp4JDRnxywXRy1aNEgVwl/Cr+wka1JVMdGUbA
 UjDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PTBG03dcRrEeV4qM9X3q8Tc4RNOPyvEHkjChA/R1skY=;
 b=WqCkMtCzIkgxQlgleGfnyzDaL4qm/CZlqeiCeIDo13BNSa77fLLwUNRid20zQSCuFo
 KujyROxk6iZcGa4BJfwaafj++y3yqqsCNCYgmpN7azuJrLbo8ddHV3r0mgyDehVbEmpJ
 +UsrEnnztTp8PWPf4uL6ZPUhsSJOYucTT6Ev1Fs83Gs3lcZgtO/U/2MyG71FfrsjKR/D
 mu63/yVIlA+feeF5nX5DTD2PP8sLsFMiOqOI2AWZ1m2u81Tn+gXmYF0M1kzD2dINvsLR
 xpPKppo9soEkn3O7/Lt3+82JFcm+zDaW5M3fURrCo+CP4J3pgdalorb72vcmtAYbzdG/
 ew5Q==
X-Gm-Message-State: APjAAAV9hxlshxJvGQTy1akJ6hekYlCWRF/zpGkQJfeCJ/MG68GnZWq1
 l8em5StF/I36vW6j9lrVDpk=
X-Google-Smtp-Source: APXvYqxpS7s/2lqAaK7E/KiSyZGArIZVTmjYRdUK3KbUxRS+O3Al9eQFhIUYsWrAD0x7XybX/2RioA==
X-Received: by 2002:a05:620a:15c1:: with SMTP id
 o1mr6508576qkm.299.1558146667970; 
 Fri, 17 May 2019 19:31:07 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.dc.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id n66sm5210322qke.6.2019.05.17.19.31.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 19:31:07 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: gneukum1@gmail.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] staging: kpc2000: kpc_i2c: reindent i2c_driver.c
Date: Sat, 18 May 2019 02:29:56 +0000
Message-Id: <0d1cf03b7c4a82f710bd28b968261e5bd92c0229.1558146549.git.gneukum1@gmail.com>
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

i2c_driver.c uses a mixture of space and tab indentations which
conflicts with the kernel coding style guide. Reindent i2c_driver.c.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc_i2c/i2c_driver.c | 1014 +++++++++---------
 1 file changed, 507 insertions(+), 507 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c b/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
index 0fb068b2408d..6dda4eb6de75 100644
--- a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
+++ b/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
@@ -1,14 +1,14 @@
 // SPDX-License-Identifier: GPL-2.0+
 /*  Copyright (c) 2014-2018  Daktronics,
-                             Matt Sickler <matt.sickler@daktronics.com>,
-                             Jordon Hofer <jordon.hofer@daktronics.com>
+			      Matt Sickler <matt.sickler@daktronics.com>,
+			      Jordon Hofer <jordon.hofer@daktronics.com>
     Adapted i2c-i801.c for use with Kadoka hardware.
     Copyright (c) 1998 - 2002  Frodo Looijaard <frodol@dds.nl>,
     Philip Edelbrock <phil@netroedge.com>, and Mark D. Studebaker
     <mdsxyz123@yahoo.com>
     Copyright (C) 2007 - 2012  Jean Delvare <khali@linux-fr.org>
     Copyright (C) 2010         Intel Corporation,
-                               David Woodhouse <dwmw2@infradead.org>
+				David Woodhouse <dwmw2@infradead.org>
 */
 #include <linux/init.h>
 #include <linux/module.h>
@@ -29,11 +29,11 @@ MODULE_AUTHOR("Matt.Sickler@Daktronics.com");
 MODULE_SOFTDEP("pre: i2c-dev");
 
 struct i2c_device {
-    unsigned long           smba;
-    struct i2c_adapter      adapter;
-    struct platform_device *pldev;
-    struct rw_semaphore     rw_sem;
-    unsigned int            features;
+	unsigned long           smba;
+	struct i2c_adapter      adapter;
+	struct platform_device *pldev;
+	struct rw_semaphore     rw_sem;
+	unsigned int            features;
 };
 
 /*****************************
@@ -134,479 +134,479 @@ MODULE_PARM_DESC(disable_features, "Disable selected driver features");
    Return 0 if it is, -EBUSY if it is not. */
 static int i801_check_pre(struct i2c_device *priv)
 {
-    int status;
-    
-    dev_dbg(&priv->adapter.dev, "i801_check_pre\n");
-    
-    status = inb_p(SMBHSTSTS(priv));
-    if (status & SMBHSTSTS_HOST_BUSY) {
-        dev_err(&priv->adapter.dev, "SMBus is busy, can't use it! (status=%x)\n", status);
-        return -EBUSY;
-    }
-    
-    status &= STATUS_FLAGS;
-    if (status) {
-        //dev_dbg(&priv->adapter.dev, "Clearing status flags (%02x)\n", status);
-        outb_p(status, SMBHSTSTS(priv));
-        status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
-        if (status) {
-          dev_err(&priv->adapter.dev, "Failed clearing status flags (%02x)\n", status);
-          return -EBUSY;
-        }
-    }
-    return 0;
+	int status;
+
+	dev_dbg(&priv->adapter.dev, "i801_check_pre\n");
+
+	status = inb_p(SMBHSTSTS(priv));
+	if (status & SMBHSTSTS_HOST_BUSY) {
+		dev_err(&priv->adapter.dev, "SMBus is busy, can't use it! (status=%x)\n", status);
+		return -EBUSY;
+	}
+
+	status &= STATUS_FLAGS;
+	if (status) {
+		//dev_dbg(&priv->adapter.dev, "Clearing status flags (%02x)\n", status);
+		outb_p(status, SMBHSTSTS(priv));
+		status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
+		if (status) {
+			dev_err(&priv->adapter.dev, "Failed clearing status flags (%02x)\n", status);
+			return -EBUSY;
+		}
+	}
+	return 0;
 }
 
 /* Convert the status register to an error code, and clear it. */
 static int i801_check_post(struct i2c_device *priv, int status, int timeout)
 {
-    int result = 0;
-    
-    dev_dbg(&priv->adapter.dev, "i801_check_post\n");
-    
-    /* If the SMBus is still busy, we give up */
-    if (timeout) {
-        dev_err(&priv->adapter.dev, "Transaction timeout\n");
-        /* try to stop the current command */
-        dev_dbg(&priv->adapter.dev, "Terminating the current operation\n");
-        outb_p(inb_p(SMBHSTCNT(priv)) | SMBHSTCNT_KILL, SMBHSTCNT(priv));
-        usleep_range(1000, 2000);
-        outb_p(inb_p(SMBHSTCNT(priv)) & (~SMBHSTCNT_KILL), SMBHSTCNT(priv));
-        
-        /* Check if it worked */
-        status = inb_p(SMBHSTSTS(priv));
-        if ((status & SMBHSTSTS_HOST_BUSY) || !(status & SMBHSTSTS_FAILED)) {
-            dev_err(&priv->adapter.dev, "Failed terminating the transaction\n");
-        }
-        outb_p(STATUS_FLAGS, SMBHSTSTS(priv));
-        return -ETIMEDOUT;
-    }
-    
-    if (status & SMBHSTSTS_FAILED) {
-        result = -EIO;
-        dev_err(&priv->adapter.dev, "Transaction failed\n");
-    }
-    if (status & SMBHSTSTS_DEV_ERR) {
-        result = -ENXIO;
-        dev_dbg(&priv->adapter.dev, "No response\n");
-    }
-    if (status & SMBHSTSTS_BUS_ERR) {
-        result = -EAGAIN;
-        dev_dbg(&priv->adapter.dev, "Lost arbitration\n");
-    }
-    
-    if (result) {
-        /* Clear error flags */
-        outb_p(status & STATUS_FLAGS, SMBHSTSTS(priv));
-        status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
-        if (status) {
-            dev_warn(&priv->adapter.dev, "Failed clearing status flags at end of transaction (%02x)\n", status);
-        }
-    }
-    
-    return result;
+	int result = 0;
+
+	dev_dbg(&priv->adapter.dev, "i801_check_post\n");
+
+	/* If the SMBus is still busy, we give up */
+	if (timeout) {
+		dev_err(&priv->adapter.dev, "Transaction timeout\n");
+		/* try to stop the current command */
+		dev_dbg(&priv->adapter.dev, "Terminating the current operation\n");
+		outb_p(inb_p(SMBHSTCNT(priv)) | SMBHSTCNT_KILL, SMBHSTCNT(priv));
+		usleep_range(1000, 2000);
+		outb_p(inb_p(SMBHSTCNT(priv)) & (~SMBHSTCNT_KILL), SMBHSTCNT(priv));
+
+		/* Check if it worked */
+		status = inb_p(SMBHSTSTS(priv));
+		if ((status & SMBHSTSTS_HOST_BUSY) || !(status & SMBHSTSTS_FAILED)) {
+			dev_err(&priv->adapter.dev, "Failed terminating the transaction\n");
+		}
+		outb_p(STATUS_FLAGS, SMBHSTSTS(priv));
+		return -ETIMEDOUT;
+	}
+
+	if (status & SMBHSTSTS_FAILED) {
+		result = -EIO;
+		dev_err(&priv->adapter.dev, "Transaction failed\n");
+	}
+	if (status & SMBHSTSTS_DEV_ERR) {
+		result = -ENXIO;
+		dev_dbg(&priv->adapter.dev, "No response\n");
+	}
+	if (status & SMBHSTSTS_BUS_ERR) {
+		result = -EAGAIN;
+		dev_dbg(&priv->adapter.dev, "Lost arbitration\n");
+	}
+
+	if (result) {
+		/* Clear error flags */
+		outb_p(status & STATUS_FLAGS, SMBHSTSTS(priv));
+		status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
+		if (status) {
+			dev_warn(&priv->adapter.dev, "Failed clearing status flags at end of transaction (%02x)\n", status);
+		}
+	}
+
+	return result;
 }
 
 static int i801_transaction(struct i2c_device *priv, int xact)
 {
-    int status;
-    int result;
-    int timeout = 0;
-    
-    dev_dbg(&priv->adapter.dev, "i801_transaction\n");
-    
-    result = i801_check_pre(priv);
-    if (result < 0) {
-        return result;
-    }
-    /* the current contents of SMBHSTCNT can be overwritten, since PEC,
-    * INTREN, SMBSCMD are passed in xact */
-    outb_p(xact | I801_START, SMBHSTCNT(priv));
-    
-    /* We will always wait for a fraction of a second! */
-    do {
-        usleep_range(250, 500);
-        status = inb_p(SMBHSTSTS(priv));
-    } while ((status & SMBHSTSTS_HOST_BUSY) && (timeout++ < MAX_RETRIES));
-    
-    result = i801_check_post(priv, status, timeout > MAX_RETRIES);
-    if (result < 0) {
-        return result;
-    }
-    
-    outb_p(SMBHSTSTS_INTR, SMBHSTSTS(priv));
-    return 0;
+	int status;
+	int result;
+	int timeout = 0;
+
+	dev_dbg(&priv->adapter.dev, "i801_transaction\n");
+
+	result = i801_check_pre(priv);
+	if (result < 0) {
+		return result;
+	}
+	/* the current contents of SMBHSTCNT can be overwritten, since PEC,
+	 * INTREN, SMBSCMD are passed in xact */
+	outb_p(xact | I801_START, SMBHSTCNT(priv));
+
+	/* We will always wait for a fraction of a second! */
+	do {
+		usleep_range(250, 500);
+		status = inb_p(SMBHSTSTS(priv));
+	} while ((status & SMBHSTSTS_HOST_BUSY) && (timeout++ < MAX_RETRIES));
+
+	result = i801_check_post(priv, status, timeout > MAX_RETRIES);
+	if (result < 0) {
+		return result;
+	}
+
+	outb_p(SMBHSTSTS_INTR, SMBHSTSTS(priv));
+	return 0;
 }
 
 /* wait for INTR bit as advised by Intel */
 static void i801_wait_hwpec(struct i2c_device *priv)
 {
-    int timeout = 0;
-    int status;
-    
-    dev_dbg(&priv->adapter.dev, "i801_wait_hwpec\n");
-    
-    do {
-        usleep_range(250, 500);
-        status = inb_p(SMBHSTSTS(priv));
-    } while ((!(status & SMBHSTSTS_INTR)) && (timeout++ < MAX_RETRIES));
-    
-    if (timeout > MAX_RETRIES) {
-        dev_dbg(&priv->adapter.dev, "PEC Timeout!\n");
-    }
-    
-    outb_p(status, SMBHSTSTS(priv));
+	int timeout = 0;
+	int status;
+
+	dev_dbg(&priv->adapter.dev, "i801_wait_hwpec\n");
+
+	do {
+		usleep_range(250, 500);
+		status = inb_p(SMBHSTSTS(priv));
+	} while ((!(status & SMBHSTSTS_INTR)) && (timeout++ < MAX_RETRIES));
+
+	if (timeout > MAX_RETRIES) {
+		dev_dbg(&priv->adapter.dev, "PEC Timeout!\n");
+	}
+
+	outb_p(status, SMBHSTSTS(priv));
 }
 
 static int i801_block_transaction_by_block(struct i2c_device *priv, union i2c_smbus_data *data, char read_write, int hwpec)
 {
-    int i, len;
-    int status;
-    
-    dev_dbg(&priv->adapter.dev, "i801_block_transaction_by_block\n");
-    
-    inb_p(SMBHSTCNT(priv)); /* reset the data buffer index */
-    
-    /* Use 32-byte buffer to process this transaction */
-    if (read_write == I2C_SMBUS_WRITE) {
-        len = data->block[0];
-        outb_p(len, SMBHSTDAT0(priv));
-        for (i = 0; i < len; i++) {
-            outb_p(data->block[i+1], SMBBLKDAT(priv));
-        }
-    }
-    
-    status = i801_transaction(priv, I801_BLOCK_DATA | ENABLE_INT9 | I801_PEC_EN * hwpec);
-    if (status) {
-        return status;
-    }
-
-    if (read_write == I2C_SMBUS_READ) {
-        len = inb_p(SMBHSTDAT0(priv));
-        if (len < 1 || len > I2C_SMBUS_BLOCK_MAX) {
-            return -EPROTO;
-        }
-        
-        data->block[0] = len;
-        for (i = 0; i < len; i++) {
-            data->block[i + 1] = inb_p(SMBBLKDAT(priv));
-        }
-    }
-    return 0;
+	int i, len;
+	int status;
+
+	dev_dbg(&priv->adapter.dev, "i801_block_transaction_by_block\n");
+
+	inb_p(SMBHSTCNT(priv)); /* reset the data buffer index */
+
+	/* Use 32-byte buffer to process this transaction */
+	if (read_write == I2C_SMBUS_WRITE) {
+		len = data->block[0];
+		outb_p(len, SMBHSTDAT0(priv));
+		for (i = 0; i < len; i++) {
+			outb_p(data->block[i+1], SMBBLKDAT(priv));
+		}
+	}
+
+	status = i801_transaction(priv, I801_BLOCK_DATA | ENABLE_INT9 | I801_PEC_EN * hwpec);
+	if (status) {
+		return status;
+	}
+
+	if (read_write == I2C_SMBUS_READ) {
+		len = inb_p(SMBHSTDAT0(priv));
+		if (len < 1 || len > I2C_SMBUS_BLOCK_MAX) {
+			return -EPROTO;
+		}
+
+		data->block[0] = len;
+		for (i = 0; i < len; i++) {
+			data->block[i + 1] = inb_p(SMBBLKDAT(priv));
+		}
+	}
+	return 0;
 }
 
 static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2c_smbus_data *data, char read_write, int command, int hwpec)
 {
-    int i, len;
-    int smbcmd;
-    int status;
-    int result;
-    int timeout;
-    
-    dev_dbg(&priv->adapter.dev, "i801_block_transaction_byte_by_byte\n");
-    
-    result = i801_check_pre(priv);
-    if (result < 0) {
-        return result;
-    }
-    
-    len = data->block[0];
-    
-    if (read_write == I2C_SMBUS_WRITE) {
-        outb_p(len, SMBHSTDAT0(priv));
-        outb_p(data->block[1], SMBBLKDAT(priv));
-    }
-    
-    for (i = 1; i <= len; i++) {
-        if (i == len && read_write == I2C_SMBUS_READ) {
-            if (command == I2C_SMBUS_I2C_BLOCK_DATA) {
-                smbcmd = I801_I2C_BLOCK_LAST;
-            } else {
-                smbcmd = I801_BLOCK_LAST;
-            }
-        } else {
-            if (command == I2C_SMBUS_I2C_BLOCK_DATA && read_write == I2C_SMBUS_READ) {
-                smbcmd = I801_I2C_BLOCK_DATA;
-            } else {
-                smbcmd = I801_BLOCK_DATA;
-            }
-        }
-        outb_p(smbcmd | ENABLE_INT9, SMBHSTCNT(priv));
-        
-        if (i == 1) {
-            outb_p(inb(SMBHSTCNT(priv)) | I801_START, SMBHSTCNT(priv));
-        }
-        /* We will always wait for a fraction of a second! */
-        timeout = 0;
-        do {
-            usleep_range(250, 500);
-            status = inb_p(SMBHSTSTS(priv));
-        } while ((!(status & SMBHSTSTS_BYTE_DONE)) && (timeout++ < MAX_RETRIES));
-        
-        result = i801_check_post(priv, status, timeout > MAX_RETRIES);
-        if (result < 0) {
-            return result;
-        }
-        if (i == 1 && read_write == I2C_SMBUS_READ && command != I2C_SMBUS_I2C_BLOCK_DATA) {
-            len = inb_p(SMBHSTDAT0(priv));
-            if (len < 1 || len > I2C_SMBUS_BLOCK_MAX) {
-                dev_err(&priv->adapter.dev, "Illegal SMBus block read size %d\n", len);
-                /* Recover */
-                while (inb_p(SMBHSTSTS(priv)) & SMBHSTSTS_HOST_BUSY) {
-                    outb_p(SMBHSTSTS_BYTE_DONE, SMBHSTSTS(priv));
-                }
-                outb_p(SMBHSTSTS_INTR, SMBHSTSTS(priv));
-                return -EPROTO;
-            }
-            data->block[0] = len;
-        }
-        
-        /* Retrieve/store value in SMBBLKDAT */
-        if (read_write == I2C_SMBUS_READ) {
-            data->block[i] = inb_p(SMBBLKDAT(priv));
-        }
-        if (read_write == I2C_SMBUS_WRITE && i+1 <= len) {
-            outb_p(data->block[i+1], SMBBLKDAT(priv));
-        }
-        /* signals SMBBLKDAT ready */
-        outb_p(SMBHSTSTS_BYTE_DONE | SMBHSTSTS_INTR, SMBHSTSTS(priv));
-    }
-    
-    return 0;
+	int i, len;
+	int smbcmd;
+	int status;
+	int result;
+	int timeout;
+
+	dev_dbg(&priv->adapter.dev, "i801_block_transaction_byte_by_byte\n");
+
+	result = i801_check_pre(priv);
+	if (result < 0) {
+		return result;
+	}
+
+	len = data->block[0];
+
+	if (read_write == I2C_SMBUS_WRITE) {
+		outb_p(len, SMBHSTDAT0(priv));
+		outb_p(data->block[1], SMBBLKDAT(priv));
+	}
+
+	for (i = 1; i <= len; i++) {
+		if (i == len && read_write == I2C_SMBUS_READ) {
+			if (command == I2C_SMBUS_I2C_BLOCK_DATA) {
+				smbcmd = I801_I2C_BLOCK_LAST;
+			} else {
+				smbcmd = I801_BLOCK_LAST;
+			}
+		} else {
+			if (command == I2C_SMBUS_I2C_BLOCK_DATA && read_write == I2C_SMBUS_READ) {
+				smbcmd = I801_I2C_BLOCK_DATA;
+			} else {
+				smbcmd = I801_BLOCK_DATA;
+			}
+		}
+		outb_p(smbcmd | ENABLE_INT9, SMBHSTCNT(priv));
+
+		if (i == 1) {
+			outb_p(inb(SMBHSTCNT(priv)) | I801_START, SMBHSTCNT(priv));
+		}
+		/* We will always wait for a fraction of a second! */
+		timeout = 0;
+		do {
+			usleep_range(250, 500);
+			status = inb_p(SMBHSTSTS(priv));
+		} while ((!(status & SMBHSTSTS_BYTE_DONE)) && (timeout++ < MAX_RETRIES));
+
+		result = i801_check_post(priv, status, timeout > MAX_RETRIES);
+		if (result < 0) {
+			return result;
+		}
+		if (i == 1 && read_write == I2C_SMBUS_READ && command != I2C_SMBUS_I2C_BLOCK_DATA) {
+			len = inb_p(SMBHSTDAT0(priv));
+			if (len < 1 || len > I2C_SMBUS_BLOCK_MAX) {
+				dev_err(&priv->adapter.dev, "Illegal SMBus block read size %d\n", len);
+				/* Recover */
+				while (inb_p(SMBHSTSTS(priv)) & SMBHSTSTS_HOST_BUSY) {
+					outb_p(SMBHSTSTS_BYTE_DONE, SMBHSTSTS(priv));
+				}
+				outb_p(SMBHSTSTS_INTR, SMBHSTSTS(priv));
+				return -EPROTO;
+			}
+			data->block[0] = len;
+		}
+
+		/* Retrieve/store value in SMBBLKDAT */
+		if (read_write == I2C_SMBUS_READ) {
+			data->block[i] = inb_p(SMBBLKDAT(priv));
+		}
+		if (read_write == I2C_SMBUS_WRITE && i+1 <= len) {
+			outb_p(data->block[i+1], SMBBLKDAT(priv));
+		}
+		/* signals SMBBLKDAT ready */
+		outb_p(SMBHSTSTS_BYTE_DONE | SMBHSTSTS_INTR, SMBHSTSTS(priv));
+	}
+
+	return 0;
 }
 
 static int i801_set_block_buffer_mode(struct i2c_device *priv)
 {
-    dev_dbg(&priv->adapter.dev, "i801_set_block_buffer_mode\n");
-    
-    outb_p(inb_p(SMBAUXCTL(priv)) | SMBAUXCTL_E32B, SMBAUXCTL(priv));
-    if ((inb_p(SMBAUXCTL(priv)) & SMBAUXCTL_E32B) == 0) {
-        return -EIO;
-    }
-    return 0;
+	dev_dbg(&priv->adapter.dev, "i801_set_block_buffer_mode\n");
+
+	outb_p(inb_p(SMBAUXCTL(priv)) | SMBAUXCTL_E32B, SMBAUXCTL(priv));
+	if ((inb_p(SMBAUXCTL(priv)) & SMBAUXCTL_E32B) == 0) {
+		return -EIO;
+	}
+	return 0;
 }
 
 /* Block transaction function */
 static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data *data, char read_write, int command, int hwpec)
 {
-    int result = 0;
-    //unsigned char hostc;
-    
-    dev_dbg(&priv->adapter.dev, "i801_block_transaction\n");
-    
-    if (command == I2C_SMBUS_I2C_BLOCK_DATA) {
-        if (read_write == I2C_SMBUS_WRITE) {
-            /* set I2C_EN bit in configuration register */
-            //TODO: Figure out the right thing to do here...
-            //pci_read_config_byte(priv->pci_dev, SMBHSTCFG, &hostc);
-            //pci_write_config_byte(priv->pci_dev, SMBHSTCFG, hostc | SMBHSTCFG_I2C_EN);
-        } else if (!(priv->features & FEATURE_I2C_BLOCK_READ)) {
-            dev_err(&priv->adapter.dev, "I2C block read is unsupported!\n");
-            return -EOPNOTSUPP;
-        }
-    }
-    
-    if (read_write == I2C_SMBUS_WRITE || command == I2C_SMBUS_I2C_BLOCK_DATA) {
-        if (data->block[0] < 1) {
-            data->block[0] = 1;
-        }
-        if (data->block[0] > I2C_SMBUS_BLOCK_MAX) {
-            data->block[0] = I2C_SMBUS_BLOCK_MAX;
-        }
-    } else {
-        data->block[0] = 32;	/* max for SMBus block reads */
-    }
-    
-    /* Experience has shown that the block buffer can only be used for
-        SMBus (not I2C) block transactions, even though the datasheet
-        doesn't mention this limitation. */
-    if ((priv->features & FEATURE_BLOCK_BUFFER) && command != I2C_SMBUS_I2C_BLOCK_DATA && i801_set_block_buffer_mode(priv) == 0) {
-        result = i801_block_transaction_by_block(priv, data, read_write, hwpec);
-    } else {
-        result = i801_block_transaction_byte_by_byte(priv, data, read_write, command, hwpec);
-    }  
-    if (result == 0 && hwpec) {
-        i801_wait_hwpec(priv);
-    }
-    if (command == I2C_SMBUS_I2C_BLOCK_DATA && read_write == I2C_SMBUS_WRITE) {
-        /* restore saved configuration register value */
-        //TODO: Figure out the right thing to do here...
-        //pci_write_config_byte(priv->pci_dev, SMBHSTCFG, hostc);
-    }
-    return result;
+	int result = 0;
+	//unsigned char hostc;
+
+	dev_dbg(&priv->adapter.dev, "i801_block_transaction\n");
+
+	if (command == I2C_SMBUS_I2C_BLOCK_DATA) {
+		if (read_write == I2C_SMBUS_WRITE) {
+			/* set I2C_EN bit in configuration register */
+			//TODO: Figure out the right thing to do here...
+			//pci_read_config_byte(priv->pci_dev, SMBHSTCFG, &hostc);
+			//pci_write_config_byte(priv->pci_dev, SMBHSTCFG, hostc | SMBHSTCFG_I2C_EN);
+		} else if (!(priv->features & FEATURE_I2C_BLOCK_READ)) {
+			dev_err(&priv->adapter.dev, "I2C block read is unsupported!\n");
+			return -EOPNOTSUPP;
+		}
+	}
+
+	if (read_write == I2C_SMBUS_WRITE || command == I2C_SMBUS_I2C_BLOCK_DATA) {
+		if (data->block[0] < 1) {
+			data->block[0] = 1;
+		}
+		if (data->block[0] > I2C_SMBUS_BLOCK_MAX) {
+			data->block[0] = I2C_SMBUS_BLOCK_MAX;
+		}
+	} else {
+		data->block[0] = 32;	/* max for SMBus block reads */
+	}
+
+	/* Experience has shown that the block buffer can only be used for
+	   SMBus (not I2C) block transactions, even though the datasheet
+	   doesn't mention this limitation. */
+	if ((priv->features & FEATURE_BLOCK_BUFFER) && command != I2C_SMBUS_I2C_BLOCK_DATA && i801_set_block_buffer_mode(priv) == 0) {
+		result = i801_block_transaction_by_block(priv, data, read_write, hwpec);
+	} else {
+		result = i801_block_transaction_byte_by_byte(priv, data, read_write, command, hwpec);
+	}
+	if (result == 0 && hwpec) {
+		i801_wait_hwpec(priv);
+	}
+	if (command == I2C_SMBUS_I2C_BLOCK_DATA && read_write == I2C_SMBUS_WRITE) {
+		/* restore saved configuration register value */
+		//TODO: Figure out the right thing to do here...
+		//pci_write_config_byte(priv->pci_dev, SMBHSTCFG, hostc);
+	}
+	return result;
 }
 
 /* Return negative errno on error. */
 static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags, char read_write, u8 command, int size, union i2c_smbus_data *data)
 {
-    int hwpec;
-    int block = 0;
-    int ret, xact = 0;
-    struct i2c_device *priv = i2c_get_adapdata(adap);
-    
-    dev_dbg(&priv->adapter.dev, "i801_access (addr=%0d)  flags=%x  read_write=%x  command=%x  size=%x",
-      addr, flags, read_write, command, size );
-    
-    hwpec = (priv->features & FEATURE_SMBUS_PEC) && (flags & I2C_CLIENT_PEC) && size != I2C_SMBUS_QUICK && size != I2C_SMBUS_I2C_BLOCK_DATA;
-    
-    switch (size) {
-        case I2C_SMBUS_QUICK:
-            dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_QUICK\n");
-            outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
-            xact = I801_QUICK;
-            break;
-        case I2C_SMBUS_BYTE:
-            dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_BYTE\n");
-            
-            outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
-            if (read_write == I2C_SMBUS_WRITE) {
-                outb_p(command, SMBHSTCMD(priv));
-            }
-            xact = I801_BYTE;
-            break;
-        case I2C_SMBUS_BYTE_DATA:
-            dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_BYTE_DATA\n");
-            outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
-            outb_p(command, SMBHSTCMD(priv));
-            if (read_write == I2C_SMBUS_WRITE) {
-                outb_p(data->byte, SMBHSTDAT0(priv));
-            }
-            xact = I801_BYTE_DATA;
-            break;
-        case I2C_SMBUS_WORD_DATA:
-            dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_WORD_DATA\n");
-            outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
-            outb_p(command, SMBHSTCMD(priv));
-            if (read_write == I2C_SMBUS_WRITE) {
-                outb_p(data->word & 0xff, SMBHSTDAT0(priv));
-                outb_p((data->word & 0xff00) >> 8, SMBHSTDAT1(priv));
-            }
-            xact = I801_WORD_DATA;
-            break;
-        case I2C_SMBUS_BLOCK_DATA:
-            dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_BLOCK_DATA\n");
-            outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
-            outb_p(command, SMBHSTCMD(priv));
-            block = 1;
-            break;
-        case I2C_SMBUS_I2C_BLOCK_DATA:
-            dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_I2C_BLOCK_DATA\n");
-            /* NB: page 240 of ICH5 datasheet shows that the R/#W
-             * bit should be cleared here, even when reading */
-            outb_p((addr & 0x7f) << 1, SMBHSTADD(priv));
-            if (read_write == I2C_SMBUS_READ) {
-                /* NB: page 240 of ICH5 datasheet also shows
-                 * that DATA1 is the cmd field when reading */
-                outb_p(command, SMBHSTDAT1(priv));
-            } else {
-                outb_p(command, SMBHSTCMD(priv));
-            }
-            block = 1;
-            break;
-        default:
-            dev_dbg(&priv->adapter.dev, "  [acc] Unsupported transaction %d\n", size);
-            return -EOPNOTSUPP;
-    }
-    
-    if (hwpec) { /* enable/disable hardware PEC */
-        dev_dbg(&priv->adapter.dev, "  [acc] hwpec: yes\n");
-        outb_p(inb_p(SMBAUXCTL(priv)) | SMBAUXCTL_CRC, SMBAUXCTL(priv));
-    } else {
-        dev_dbg(&priv->adapter.dev, "  [acc] hwpec: no\n");
-        outb_p(inb_p(SMBAUXCTL(priv)) & (~SMBAUXCTL_CRC), SMBAUXCTL(priv));
-    }
-    
-    if (block) {
-        //ret = 0;
-        dev_dbg(&priv->adapter.dev, "  [acc] block: yes\n");
-        ret = i801_block_transaction(priv, data, read_write, size, hwpec);
-    } else {
-        dev_dbg(&priv->adapter.dev, "  [acc] block: no\n");
-        ret = i801_transaction(priv, xact | ENABLE_INT9);
-    }
-    
-    /* Some BIOSes don't like it when PEC is enabled at reboot or resume
-       time, so we forcibly disable it after every transaction. Turn off
-       E32B for the same reason. */
-    if (hwpec || block) {
-        dev_dbg(&priv->adapter.dev, "  [acc] hwpec || block\n");
-        outb_p(inb_p(SMBAUXCTL(priv)) & ~(SMBAUXCTL_CRC | SMBAUXCTL_E32B), SMBAUXCTL(priv));
-    }
-    if (block) {
-        dev_dbg(&priv->adapter.dev, "  [acc] block\n");
-        return ret;
-    }
-    if (ret) {
-        dev_dbg(&priv->adapter.dev, "  [acc] ret %d\n", ret);
-        return ret;
-    }
-    if ((read_write == I2C_SMBUS_WRITE) || (xact == I801_QUICK)) {
-        dev_dbg(&priv->adapter.dev, "  [acc] I2C_SMBUS_WRITE || I801_QUICK  -> ret 0\n");
-        return 0;
-    }
-    
-    switch (xact & 0x7f) {
-        case I801_BYTE:  /* Result put in SMBHSTDAT0 */
-        case I801_BYTE_DATA:
-            dev_dbg(&priv->adapter.dev, "  [acc] I801_BYTE or I801_BYTE_DATA\n");
-            data->byte = inb_p(SMBHSTDAT0(priv));
-            break;
-        case I801_WORD_DATA:
-            dev_dbg(&priv->adapter.dev, "  [acc] I801_WORD_DATA\n");
-            data->word = inb_p(SMBHSTDAT0(priv)) + (inb_p(SMBHSTDAT1(priv)) << 8);
-            break;
-    }
-    return 0;
+	int hwpec;
+	int block = 0;
+	int ret, xact = 0;
+	struct i2c_device *priv = i2c_get_adapdata(adap);
+
+	dev_dbg(&priv->adapter.dev, "i801_access (addr=%0d)  flags=%x  read_write=%x  command=%x  size=%x",
+		addr, flags, read_write, command, size );
+
+	hwpec = (priv->features & FEATURE_SMBUS_PEC) && (flags & I2C_CLIENT_PEC) && size != I2C_SMBUS_QUICK && size != I2C_SMBUS_I2C_BLOCK_DATA;
+
+	switch (size) {
+	case I2C_SMBUS_QUICK:
+		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_QUICK\n");
+		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
+		xact = I801_QUICK;
+		break;
+	case I2C_SMBUS_BYTE:
+		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_BYTE\n");
+
+		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
+		if (read_write == I2C_SMBUS_WRITE) {
+			outb_p(command, SMBHSTCMD(priv));
+		}
+		xact = I801_BYTE;
+		break;
+	case I2C_SMBUS_BYTE_DATA:
+		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_BYTE_DATA\n");
+		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
+		outb_p(command, SMBHSTCMD(priv));
+		if (read_write == I2C_SMBUS_WRITE) {
+			outb_p(data->byte, SMBHSTDAT0(priv));
+		}
+		xact = I801_BYTE_DATA;
+		break;
+	case I2C_SMBUS_WORD_DATA:
+		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_WORD_DATA\n");
+		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
+		outb_p(command, SMBHSTCMD(priv));
+		if (read_write == I2C_SMBUS_WRITE) {
+			outb_p(data->word & 0xff, SMBHSTDAT0(priv));
+			outb_p((data->word & 0xff00) >> 8, SMBHSTDAT1(priv));
+		}
+		xact = I801_WORD_DATA;
+		break;
+	case I2C_SMBUS_BLOCK_DATA:
+		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_BLOCK_DATA\n");
+		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
+		outb_p(command, SMBHSTCMD(priv));
+		block = 1;
+		break;
+	case I2C_SMBUS_I2C_BLOCK_DATA:
+		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_I2C_BLOCK_DATA\n");
+		/* NB: page 240 of ICH5 datasheet shows that the R/#W
+		 * bit should be cleared here, even when reading */
+		outb_p((addr & 0x7f) << 1, SMBHSTADD(priv));
+		if (read_write == I2C_SMBUS_READ) {
+			/* NB: page 240 of ICH5 datasheet also shows
+			 * that DATA1 is the cmd field when reading */
+			outb_p(command, SMBHSTDAT1(priv));
+		} else {
+			outb_p(command, SMBHSTCMD(priv));
+		}
+		block = 1;
+		break;
+	default:
+		dev_dbg(&priv->adapter.dev, "  [acc] Unsupported transaction %d\n", size);
+		return -EOPNOTSUPP;
+	}
+
+	if (hwpec) { /* enable/disable hardware PEC */
+		dev_dbg(&priv->adapter.dev, "  [acc] hwpec: yes\n");
+		outb_p(inb_p(SMBAUXCTL(priv)) | SMBAUXCTL_CRC, SMBAUXCTL(priv));
+	} else {
+		dev_dbg(&priv->adapter.dev, "  [acc] hwpec: no\n");
+		outb_p(inb_p(SMBAUXCTL(priv)) & (~SMBAUXCTL_CRC), SMBAUXCTL(priv));
+	}
+
+	if (block) {
+		//ret = 0;
+		dev_dbg(&priv->adapter.dev, "  [acc] block: yes\n");
+		ret = i801_block_transaction(priv, data, read_write, size, hwpec);
+	} else {
+		dev_dbg(&priv->adapter.dev, "  [acc] block: no\n");
+		ret = i801_transaction(priv, xact | ENABLE_INT9);
+	}
+
+	/* Some BIOSes don't like it when PEC is enabled at reboot or resume
+	   time, so we forcibly disable it after every transaction. Turn off
+	   E32B for the same reason. */
+	if (hwpec || block) {
+		dev_dbg(&priv->adapter.dev, "  [acc] hwpec || block\n");
+		outb_p(inb_p(SMBAUXCTL(priv)) & ~(SMBAUXCTL_CRC | SMBAUXCTL_E32B), SMBAUXCTL(priv));
+	}
+	if (block) {
+		dev_dbg(&priv->adapter.dev, "  [acc] block\n");
+		return ret;
+	}
+	if (ret) {
+		dev_dbg(&priv->adapter.dev, "  [acc] ret %d\n", ret);
+		return ret;
+	}
+	if ((read_write == I2C_SMBUS_WRITE) || (xact == I801_QUICK)) {
+		dev_dbg(&priv->adapter.dev, "  [acc] I2C_SMBUS_WRITE || I801_QUICK  -> ret 0\n");
+		return 0;
+	}
+
+	switch (xact & 0x7f) {
+	case I801_BYTE:  /* Result put in SMBHSTDAT0 */
+	case I801_BYTE_DATA:
+		dev_dbg(&priv->adapter.dev, "  [acc] I801_BYTE or I801_BYTE_DATA\n");
+		data->byte = inb_p(SMBHSTDAT0(priv));
+		break;
+	case I801_WORD_DATA:
+		dev_dbg(&priv->adapter.dev, "  [acc] I801_WORD_DATA\n");
+		data->word = inb_p(SMBHSTDAT0(priv)) + (inb_p(SMBHSTDAT1(priv)) << 8);
+		break;
+	}
+	return 0;
 }
 
 
 
 static u32 i801_func(struct i2c_adapter *adapter)
 {
-    struct i2c_device *priv = i2c_get_adapdata(adapter);
-    
-    /* original settings
-    u32 f = I2C_FUNC_SMBUS_QUICK | I2C_FUNC_SMBUS_BYTE |
-      I2C_FUNC_SMBUS_BYTE_DATA | I2C_FUNC_SMBUS_WORD_DATA |
-      I2C_FUNC_SMBUS_BLOCK_DATA | I2C_FUNC_SMBUS_WRITE_I2C_BLOCK |
-      ((priv->features & FEATURE_SMBUS_PEC) ? I2C_FUNC_SMBUS_PEC : 0) |
-      ((priv->features & FEATURE_I2C_BLOCK_READ) ?
-       I2C_FUNC_SMBUS_READ_I2C_BLOCK : 0);
-     */
-    
-    // http://lxr.free-electrons.com/source/include/uapi/linux/i2c.h#L85
-    
-    u32 f = 
-        I2C_FUNC_I2C                     | /* 0x00000001 (I enabled this one) */
-        !I2C_FUNC_10BIT_ADDR             | /* 0x00000002 */
-        !I2C_FUNC_PROTOCOL_MANGLING      | /* 0x00000004 */
-        ((priv->features & FEATURE_SMBUS_PEC) ? I2C_FUNC_SMBUS_PEC : 0) | /* 0x00000008 */
-        !I2C_FUNC_SMBUS_BLOCK_PROC_CALL  | /* 0x00008000 */
-        I2C_FUNC_SMBUS_QUICK             | /* 0x00010000 */
-        !I2C_FUNC_SMBUS_READ_BYTE        | /* 0x00020000 */
-        !I2C_FUNC_SMBUS_WRITE_BYTE       | /* 0x00040000 */
-        !I2C_FUNC_SMBUS_READ_BYTE_DATA   | /* 0x00080000 */
-        !I2C_FUNC_SMBUS_WRITE_BYTE_DATA  | /* 0x00100000 */
-        !I2C_FUNC_SMBUS_READ_WORD_DATA   | /* 0x00200000 */
-        !I2C_FUNC_SMBUS_WRITE_WORD_DATA  | /* 0x00400000 */
-        !I2C_FUNC_SMBUS_PROC_CALL        | /* 0x00800000 */
-        !I2C_FUNC_SMBUS_READ_BLOCK_DATA  | /* 0x01000000 */
-        !I2C_FUNC_SMBUS_WRITE_BLOCK_DATA | /* 0x02000000 */
-        ((priv->features & FEATURE_I2C_BLOCK_READ) ? I2C_FUNC_SMBUS_READ_I2C_BLOCK : 0) | /* 0x04000000 */
-        I2C_FUNC_SMBUS_WRITE_I2C_BLOCK   | /* 0x08000000 */
-        
-        I2C_FUNC_SMBUS_BYTE              | /* _READ_BYTE  _WRITE_BYTE */
-        I2C_FUNC_SMBUS_BYTE_DATA         | /* _READ_BYTE_DATA  _WRITE_BYTE_DATA */
-        I2C_FUNC_SMBUS_WORD_DATA         | /* _READ_WORD_DATA  _WRITE_WORD_DATA */
-        I2C_FUNC_SMBUS_BLOCK_DATA        | /* _READ_BLOCK_DATA  _WRITE_BLOCK_DATA */
-        !I2C_FUNC_SMBUS_I2C_BLOCK        | /* _READ_I2C_BLOCK  _WRITE_I2C_BLOCK */
-        !I2C_FUNC_SMBUS_EMUL;              /* _QUICK  _BYTE  _BYTE_DATA  _WORD_DATA  _PROC_CALL  _WRITE_BLOCK_DATA  _I2C_BLOCK _PEC */
-    return f;
+	struct i2c_device *priv = i2c_get_adapdata(adapter);
+
+	/* original settings
+	   u32 f = I2C_FUNC_SMBUS_QUICK | I2C_FUNC_SMBUS_BYTE |
+	   I2C_FUNC_SMBUS_BYTE_DATA | I2C_FUNC_SMBUS_WORD_DATA |
+	   I2C_FUNC_SMBUS_BLOCK_DATA | I2C_FUNC_SMBUS_WRITE_I2C_BLOCK |
+	   ((priv->features & FEATURE_SMBUS_PEC) ? I2C_FUNC_SMBUS_PEC : 0) |
+	   ((priv->features & FEATURE_I2C_BLOCK_READ) ?
+	   I2C_FUNC_SMBUS_READ_I2C_BLOCK : 0);
+	*/
+
+	// http://lxr.free-electrons.com/source/include/uapi/linux/i2c.h#L85
+
+	u32 f =
+		I2C_FUNC_I2C                     | /* 0x00000001 (I enabled this one) */
+		!I2C_FUNC_10BIT_ADDR             | /* 0x00000002 */
+		!I2C_FUNC_PROTOCOL_MANGLING      | /* 0x00000004 */
+		((priv->features & FEATURE_SMBUS_PEC) ? I2C_FUNC_SMBUS_PEC : 0) | /* 0x00000008 */
+		!I2C_FUNC_SMBUS_BLOCK_PROC_CALL  | /* 0x00008000 */
+		I2C_FUNC_SMBUS_QUICK             | /* 0x00010000 */
+		!I2C_FUNC_SMBUS_READ_BYTE        | /* 0x00020000 */
+		!I2C_FUNC_SMBUS_WRITE_BYTE       | /* 0x00040000 */
+		!I2C_FUNC_SMBUS_READ_BYTE_DATA   | /* 0x00080000 */
+		!I2C_FUNC_SMBUS_WRITE_BYTE_DATA  | /* 0x00100000 */
+		!I2C_FUNC_SMBUS_READ_WORD_DATA   | /* 0x00200000 */
+		!I2C_FUNC_SMBUS_WRITE_WORD_DATA  | /* 0x00400000 */
+		!I2C_FUNC_SMBUS_PROC_CALL        | /* 0x00800000 */
+		!I2C_FUNC_SMBUS_READ_BLOCK_DATA  | /* 0x01000000 */
+		!I2C_FUNC_SMBUS_WRITE_BLOCK_DATA | /* 0x02000000 */
+		((priv->features & FEATURE_I2C_BLOCK_READ) ? I2C_FUNC_SMBUS_READ_I2C_BLOCK : 0) | /* 0x04000000 */
+		I2C_FUNC_SMBUS_WRITE_I2C_BLOCK   | /* 0x08000000 */
+
+		I2C_FUNC_SMBUS_BYTE              | /* _READ_BYTE  _WRITE_BYTE */
+		I2C_FUNC_SMBUS_BYTE_DATA         | /* _READ_BYTE_DATA  _WRITE_BYTE_DATA */
+		I2C_FUNC_SMBUS_WORD_DATA         | /* _READ_WORD_DATA  _WRITE_WORD_DATA */
+		I2C_FUNC_SMBUS_BLOCK_DATA        | /* _READ_BLOCK_DATA  _WRITE_BLOCK_DATA */
+		!I2C_FUNC_SMBUS_I2C_BLOCK        | /* _READ_I2C_BLOCK  _WRITE_I2C_BLOCK */
+		!I2C_FUNC_SMBUS_EMUL;              /* _QUICK  _BYTE  _BYTE_DATA  _WORD_DATA  _PROC_CALL  _WRITE_BLOCK_DATA  _I2C_BLOCK _PEC */
+	return f;
 }
 
 static const struct i2c_algorithm smbus_algorithm = {
-    .smbus_xfer     = i801_access,
-    .functionality  = i801_func,
+	.smbus_xfer     = i801_access,
+	.functionality  = i801_func,
 };
 
 
@@ -616,84 +616,84 @@ static const struct i2c_algorithm smbus_algorithm = {
  ********************************/
 int pi2c_probe(struct platform_device *pldev)
 {
-    int err;
-    struct i2c_device *priv;
-    struct resource *res;
-    
-    dev_dbg(&pldev->dev, "pi2c_probe(pldev = %p '%s')\n", pldev, pldev->name);
-    
-    priv = kzalloc(sizeof(struct i2c_device), GFP_KERNEL);
-    if (!priv) {
-        return -ENOMEM;
-    }
-    
-    i2c_set_adapdata(&priv->adapter, priv);
-    priv->adapter.owner = THIS_MODULE;
-    priv->adapter.class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
-    priv->adapter.algo = &smbus_algorithm;
-    
-    res = platform_get_resource(pldev, IORESOURCE_MEM, 0);
-    priv->smba = (unsigned long)ioremap_nocache(res->start, resource_size(res));
-    
-    priv->pldev = pldev;
-    pldev->dev.platform_data = priv;
-    
-    priv->features |= FEATURE_IDF;
-    priv->features |= FEATURE_I2C_BLOCK_READ;
-    priv->features |= FEATURE_SMBUS_PEC;
-    priv->features |= FEATURE_BLOCK_BUFFER;
-    
-    //init_MUTEX(&lddata->sem);
-    init_rwsem(&priv->rw_sem);
-    
-    /* set up the sysfs linkage to our parent device */
-    priv->adapter.dev.parent = &pldev->dev;
-    
-    /* Retry up to 3 times on lost arbitration */
-    priv->adapter.retries = 3;
-    
-    //snprintf(priv->adapter.name, sizeof(priv->adapter.name), "Fake SMBus I801 adapter at %04lx", priv->smba);
-    snprintf(priv->adapter.name, sizeof(priv->adapter.name), "Fake SMBus I801 adapter");
-    
-    err = i2c_add_adapter(&priv->adapter);
-    if (err) {
-        dev_err(&priv->adapter.dev, "Failed to add SMBus adapter\n");
-        return err;
-    }
-    
-    return 0;
+	int err;
+	struct i2c_device *priv;
+	struct resource *res;
+
+	dev_dbg(&pldev->dev, "pi2c_probe(pldev = %p '%s')\n", pldev, pldev->name);
+
+	priv = kzalloc(sizeof(struct i2c_device), GFP_KERNEL);
+	if (!priv) {
+		return -ENOMEM;
+	}
+
+	i2c_set_adapdata(&priv->adapter, priv);
+	priv->adapter.owner = THIS_MODULE;
+	priv->adapter.class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
+	priv->adapter.algo = &smbus_algorithm;
+
+	res = platform_get_resource(pldev, IORESOURCE_MEM, 0);
+	priv->smba = (unsigned long)ioremap_nocache(res->start, resource_size(res));
+
+	priv->pldev = pldev;
+	pldev->dev.platform_data = priv;
+
+	priv->features |= FEATURE_IDF;
+	priv->features |= FEATURE_I2C_BLOCK_READ;
+	priv->features |= FEATURE_SMBUS_PEC;
+	priv->features |= FEATURE_BLOCK_BUFFER;
+
+	//init_MUTEX(&lddata->sem);
+	init_rwsem(&priv->rw_sem);
+
+	/* set up the sysfs linkage to our parent device */
+	priv->adapter.dev.parent = &pldev->dev;
+
+	/* Retry up to 3 times on lost arbitration */
+	priv->adapter.retries = 3;
+
+	//snprintf(priv->adapter.name, sizeof(priv->adapter.name), "Fake SMBus I801 adapter at %04lx", priv->smba);
+	snprintf(priv->adapter.name, sizeof(priv->adapter.name), "Fake SMBus I801 adapter");
+
+	err = i2c_add_adapter(&priv->adapter);
+	if (err) {
+		dev_err(&priv->adapter.dev, "Failed to add SMBus adapter\n");
+		return err;
+	}
+
+	return 0;
 }
 
 int pi2c_remove(struct platform_device *pldev)
 {
-    struct i2c_device *lddev;
-    dev_dbg(&pldev->dev, "pi2c_remove(pldev = %p '%s')\n", pldev, pldev->name);
-    
-    lddev = (struct i2c_device *)pldev->dev.platform_data;
-    
-    i2c_del_adapter(&lddev->adapter);
-    
-    //TODO: Figure out the right thing to do here...
-    //pci_write_config_byte(dev, SMBHSTCFG, priv->original_hstcfg);
-    //pci_release_region(dev, SMBBAR);
-    //pci_set_drvdata(dev, NULL);
-    
-    //cdev_del(&lddev->cdev);
-    if(lddev != 0) {
-        kfree(lddev);
-        pldev->dev.platform_data = 0;
-    }
-    
-    return 0;
+	struct i2c_device *lddev;
+	dev_dbg(&pldev->dev, "pi2c_remove(pldev = %p '%s')\n", pldev, pldev->name);
+
+	lddev = (struct i2c_device *)pldev->dev.platform_data;
+
+	i2c_del_adapter(&lddev->adapter);
+
+	//TODO: Figure out the right thing to do here...
+	//pci_write_config_byte(dev, SMBHSTCFG, priv->original_hstcfg);
+	//pci_release_region(dev, SMBBAR);
+	//pci_set_drvdata(dev, NULL);
+
+	//cdev_del(&lddev->cdev);
+	if(lddev != 0) {
+		kfree(lddev);
+		pldev->dev.platform_data = 0;
+	}
+
+	return 0;
 }
 
 struct platform_driver i2c_plat_driver_i = {
-    .probe      = pi2c_probe,
-    .remove     = pi2c_remove,
-    .driver     = {
-        .name   = KP_DRIVER_NAME_I2C,
-        .owner  = THIS_MODULE,
-    },
+	.probe      = pi2c_probe,
+	.remove     = pi2c_remove,
+	.driver     = {
+		.name   = KP_DRIVER_NAME_I2C,
+		.owner  = THIS_MODULE,
+	},
 };
 
 module_platform_driver(i2c_plat_driver_i);
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

