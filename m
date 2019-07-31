Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2E17CC0D
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 20:36:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5289720410;
	Wed, 31 Jul 2019 18:36:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FmZatE8q9QN3; Wed, 31 Jul 2019 18:36:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4584B203CB;
	Wed, 31 Jul 2019 18:36:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 516ED1BF2EA
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:36:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4EA4D20360
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:36:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1a16TInHZ7aB for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 18:36:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id DE1762033B
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 18:36:32 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id i189so32356091pfg.10
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 11:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=CDz+d68kK243TDqiK1NIHv51qZyJgsAbmVMIQB4C8hA=;
 b=uVJ4kuvizTFMl0PZZfBRuMnaeJnygWvwTvlBnQWHCYFjp2qWosEZ2sdvgNNW/JTj97
 i8YrnN4IXGmWGPg1Ul+XABKjMvZDXiP4X/h8LMdRejyiQeNDPMZQdOYtkvj/nctz3rOp
 nBsGFD3Ks6OwSD6X2hNvQFBEOTmul2dmx+bm6Y1ZwupyzP4X6/FBdMFXXuwOa0jnR9BD
 mG3ooqmf9Wa3MRvq7bI1adrevwTdQ2dDL3Q6LWaLJMDOOavQ3gPxKNxgAEfbgs5zzzUW
 rslv7djoSK1Va99wkPMsF41urYs2Z+usZ5aLnKNt9by0t399bTqje9qSr4I/satSCxYt
 WL4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=CDz+d68kK243TDqiK1NIHv51qZyJgsAbmVMIQB4C8hA=;
 b=pqDK9Z6N2Y/KElWHXDorge4PYPO3axUPhRTpVNuSndNRJRy7w1N1b3QQUxkSOc+J/U
 xZlB19vcjYyjj5O6iSIewvSNs02AvUJb614dHnjph+M9QFxQdIxulAKYDEBznWoIKGd0
 BnhIY1MiL1R4Kglz2aUo26cxcxsuMyZ0FyiLwqbAyZPgKQ2cYie+EndUb5yZOzuGPUcG
 fRbVCUE7EmX2WdOoKiV2EGUCPqlaZ+qEh8di1jgiTNjvPraKqlzHRPB25L3WnDpk0Pan
 GXdxhjBzuIBcnQINdDT2jK/1PpM3AGPZVk6oeplIQYYeg0HVuMQpzimtx1RKLFos3cjF
 rPcA==
X-Gm-Message-State: APjAAAXafcDvCkWlSBM0idisAchtrL9iaylmX2GrwJz6x/ZZkr7BXifE
 l6HqDdRca0iPZL51xtvmXM8=
X-Google-Smtp-Source: APXvYqxt778NrcDU6VEz3IsXTgcrNE1lZ37D3/J/5XP2DykdutWw96vKy1J0UYLYfRz6P6Ji/0MArg==
X-Received: by 2002:a63:6bc5:: with SMTP id
 g188mr85059063pgc.225.1564598192338; 
 Wed, 31 Jul 2019 11:36:32 -0700 (PDT)
Received: from localhost.localdomain ([183.83.73.90])
 by smtp.gmail.com with ESMTPSA id y14sm19780610pge.7.2019.07.31.11.36.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 11:36:31 -0700 (PDT)
From: Harsh Jain <harshjain32@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging:kpc2000:Fix dubious x | !y sparse warning
Date: Thu,  1 Aug 2019 00:06:06 +0530
Message-Id: <20190731183606.2513-1-harshjain32@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: harshjain32@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Bitwise OR(|) operation with 0 always yield same result.
It fixes dubious x | !y sparse warning.

Signed-off-by: Harsh Jain <harshjain32@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index b108da4..5f027d7c 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -536,29 +536,15 @@ static u32 i801_func(struct i2c_adapter *adapter)
 
 	u32 f =
 		I2C_FUNC_I2C                     | /* 0x00000001 (I enabled this one) */
-		!I2C_FUNC_10BIT_ADDR             | /* 0x00000002 */
-		!I2C_FUNC_PROTOCOL_MANGLING      | /* 0x00000004 */
 		((priv->features & FEATURE_SMBUS_PEC) ? I2C_FUNC_SMBUS_PEC : 0) | /* 0x00000008 */
-		!I2C_FUNC_SMBUS_BLOCK_PROC_CALL  | /* 0x00008000 */
 		I2C_FUNC_SMBUS_QUICK             | /* 0x00010000 */
-		!I2C_FUNC_SMBUS_READ_BYTE        | /* 0x00020000 */
-		!I2C_FUNC_SMBUS_WRITE_BYTE       | /* 0x00040000 */
-		!I2C_FUNC_SMBUS_READ_BYTE_DATA   | /* 0x00080000 */
-		!I2C_FUNC_SMBUS_WRITE_BYTE_DATA  | /* 0x00100000 */
-		!I2C_FUNC_SMBUS_READ_WORD_DATA   | /* 0x00200000 */
-		!I2C_FUNC_SMBUS_WRITE_WORD_DATA  | /* 0x00400000 */
-		!I2C_FUNC_SMBUS_PROC_CALL        | /* 0x00800000 */
-		!I2C_FUNC_SMBUS_READ_BLOCK_DATA  | /* 0x01000000 */
-		!I2C_FUNC_SMBUS_WRITE_BLOCK_DATA | /* 0x02000000 */
 		((priv->features & FEATURE_I2C_BLOCK_READ) ? I2C_FUNC_SMBUS_READ_I2C_BLOCK : 0) | /* 0x04000000 */
 		I2C_FUNC_SMBUS_WRITE_I2C_BLOCK   | /* 0x08000000 */
 
 		I2C_FUNC_SMBUS_BYTE              | /* _READ_BYTE  _WRITE_BYTE */
 		I2C_FUNC_SMBUS_BYTE_DATA         | /* _READ_BYTE_DATA  _WRITE_BYTE_DATA */
 		I2C_FUNC_SMBUS_WORD_DATA         | /* _READ_WORD_DATA  _WRITE_WORD_DATA */
-		I2C_FUNC_SMBUS_BLOCK_DATA        | /* _READ_BLOCK_DATA  _WRITE_BLOCK_DATA */
-		!I2C_FUNC_SMBUS_I2C_BLOCK        | /* _READ_I2C_BLOCK  _WRITE_I2C_BLOCK */
-		!I2C_FUNC_SMBUS_EMUL;              /* _QUICK  _BYTE  _BYTE_DATA  _WORD_DATA  _PROC_CALL  _WRITE_BLOCK_DATA  _I2C_BLOCK _PEC */
+		I2C_FUNC_SMBUS_BLOCK_DATA;	   /* _READ_BLOCK_DATA  _WRITE_BLOCK_DATA */
 	return f;
 }
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
