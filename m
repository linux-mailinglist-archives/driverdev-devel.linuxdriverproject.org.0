Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F2B13B6C6
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 02:26:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D07386443;
	Wed, 15 Jan 2020 01:25:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GvM-1+YTnA2S; Wed, 15 Jan 2020 01:25:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6264E8640E;
	Wed, 15 Jan 2020 01:25:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 068791BF4D5
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 01:25:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F39CB204F6
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 01:25:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ECywEh9wrZKg for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 01:25:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 71B281FD42
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 01:25:50 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id d71so14257995qkc.0
 for <devel@driverdev.osuosl.org>; Tue, 14 Jan 2020 17:25:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=JZDFQOPsvuuZk/WVNGkZjn51ZgBTrwidC98r2JxnFuE=;
 b=vBCzOd43UH4FDgLs9/GEXlqai40SizbMAokBHs0ItBa22TbgroRqVuK6yr+4xQ79kh
 vodkRaa1aJh4mUDdvqbOIXJS2QkvahrJaFEI1dhzQh8ILVe7IP/dbuac5JBsyNkLvfJa
 R8HnLjn0Xej/qteNoWrUulwYU+88go4KnNMMEjipVtW89ZCfVkWrwzGIG6eh3hRo7DK1
 rSCLEIQFPCPbk0pIEIWfZknrn2x9ysJnmEjM3lEq4h2EDgrfxYMNwTM69hU71qRlcEcs
 tJBH4wo+U3BUEXpPngss2eWnrd4ZT5yarosVlFxxjShJKsU6junAhNdaAYf02PcZ+kCA
 ASZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=JZDFQOPsvuuZk/WVNGkZjn51ZgBTrwidC98r2JxnFuE=;
 b=HLxE41Ak4Bss15wc3iIs9aAWjQhTfg7GudR29Jg59lFFJMfS3ySm9G80LKe6FzYo9h
 b53hnW7gI9asdKL1xu6KVHcssn7N8Oyvhf4ylE7RC8XQF3CnRouB3/Gy8gfPb5NKrWzN
 wqOQVC/K6QG+ixtT0dVpN1gNHZ7GvOVor68xGnbHUCEGtJoya4JOUli0A99FfCl+E/Ek
 lLvrOWESANRuaoJBCRV7MGdFzezBMSrbXdCIUebaA6FWWY7Z71zqPdnyd29IZ5L1FIkf
 rKeYVBVJTo76dU5A3nWtpDgID9CCieaGyhWcWePreseF0sfFJ6/XH1Qb6TJPL3bAV26Q
 tsfA==
X-Gm-Message-State: APjAAAXd5OyOh7yYcCCQc0rrB2cvUq543aPuyZCgKcFfBbvXf00eB3Wa
 2B/sb0hpeIWkIzAS/sAJcOU=
X-Google-Smtp-Source: APXvYqwg19y/+d0V3F0fVYtBPGi0Vl0hOTLdNv7Pz0Nf/xfXMCdvZnGtH97ugLyiDzbi1C9OPu7QvA==
X-Received: by 2002:ae9:f80d:: with SMTP id x13mr20137956qkh.226.1579051549445; 
 Tue, 14 Jan 2020 17:25:49 -0800 (PST)
Received: from felipe-pc ([179.209.47.80])
 by smtp.gmail.com with ESMTPSA id d184sm7676192qkb.128.2020.01.14.17.25.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 17:25:49 -0800 (PST)
Date: Tue, 14 Jan 2020 22:25:15 -0300
From: Felipe Cardoso Resende <felipecardoso.fcr@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Geordan Neukum <gneukum1@gmail.com>, Hao Xu <haoxu.linuxkernel@gmail.com>,
 Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH] Remove warning: "dubious: x | !y" detected by sparse
Message-ID: <20200115012515.GA16012@felipe-pc>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The way I chose to remove the warning was to define a macro to
make it clear if a flag will be enable or not.

Let me know if you would prefer it to be done in a different way.

Signed-off-by: Felipe Cardoso Resende <felipecardoso.fcr@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 80 +++++++++++++++------------
 1 file changed, 44 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index 5460bf973c9c..10b9cee9bffd 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -572,6 +572,10 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr,
 	return 0;
 }
 
+#define enable_flag(x) (x)
+#define disable_flag(x) 0
+#define enable_flag_if(x, cond) ((cond) ? (x) : 0)
+
 static u32 i801_func(struct i2c_adapter *adapter)
 {
 	struct i2c_device *priv = i2c_get_adapdata(adapter);
@@ -588,42 +592,42 @@ static u32 i801_func(struct i2c_adapter *adapter)
 	// http://lxr.free-electrons.com/source/include/uapi/linux/i2c.h#L85
 
 	u32 f =
-		I2C_FUNC_I2C                     | /* 0x00000001(I enabled this
-						    * one)
-						    */
-		!I2C_FUNC_10BIT_ADDR             |		/* 0x00000002 */
-		!I2C_FUNC_PROTOCOL_MANGLING      |		/* 0x00000004 */
-		((priv->features & FEATURE_SMBUS_PEC) ?
-			I2C_FUNC_SMBUS_PEC : 0)  |		/* 0x00000008 */
-		!I2C_FUNC_SMBUS_BLOCK_PROC_CALL  |		/* 0x00008000 */
-		I2C_FUNC_SMBUS_QUICK             |		/* 0x00010000 */
-		!I2C_FUNC_SMBUS_READ_BYTE	 |		/* 0x00020000 */
-		!I2C_FUNC_SMBUS_WRITE_BYTE       |		/* 0x00040000 */
-		!I2C_FUNC_SMBUS_READ_BYTE_DATA   |		/* 0x00080000 */
-		!I2C_FUNC_SMBUS_WRITE_BYTE_DATA  |		/* 0x00100000 */
-		!I2C_FUNC_SMBUS_READ_WORD_DATA   |		/* 0x00200000 */
-		!I2C_FUNC_SMBUS_WRITE_WORD_DATA  |		/* 0x00400000 */
-		!I2C_FUNC_SMBUS_PROC_CALL        |		/* 0x00800000 */
-		!I2C_FUNC_SMBUS_READ_BLOCK_DATA  |		/* 0x01000000 */
-		!I2C_FUNC_SMBUS_WRITE_BLOCK_DATA |		/* 0x02000000 */
-		((priv->features & FEATURE_I2C_BLOCK_READ) ?
-			I2C_FUNC_SMBUS_READ_I2C_BLOCK : 0) |	/* 0x04000000 */
-		I2C_FUNC_SMBUS_WRITE_I2C_BLOCK   |		/* 0x08000000 */
-
-		I2C_FUNC_SMBUS_BYTE              | /* _READ_BYTE  _WRITE_BYTE */
-		I2C_FUNC_SMBUS_BYTE_DATA         | /* _READ_BYTE_DATA
-						    * _WRITE_BYTE_DATA
-						    */
-		I2C_FUNC_SMBUS_WORD_DATA         | /* _READ_WORD_DATA
-						    * _WRITE_WORD_DATA
-						    */
-		I2C_FUNC_SMBUS_BLOCK_DATA        | /* _READ_BLOCK_DATA
-						    * _WRITE_BLOCK_DATA
-						    */
-		!I2C_FUNC_SMBUS_I2C_BLOCK        | /* _READ_I2C_BLOCK
-						    * _WRITE_I2C_BLOCK
-						    */
-		!I2C_FUNC_SMBUS_EMUL;              /* _QUICK  _BYTE
+		enable_flag(I2C_FUNC_I2C) | /* 0x00000001(I enabled this one) */
+		disable_flag(I2C_FUNC_10BIT_ADDR)             | /* 0x00000002 */
+		disable_flag(I2C_FUNC_PROTOCOL_MANGLING)      | /* 0x00000004 */
+		enable_flag_if(I2C_FUNC_SMBUS_PEC,
+			       priv->features & FEATURE_SMBUS_PEC) |
+								/* 0x00000008 */
+		disable_flag(I2C_FUNC_SMBUS_BLOCK_PROC_CALL)  | /* 0x00008000 */
+		enable_flag(I2C_FUNC_SMBUS_QUICK)             | /* 0x00010000 */
+		disable_flag(I2C_FUNC_SMBUS_READ_BYTE)	      |	/* 0x00020000 */
+		disable_flag(I2C_FUNC_SMBUS_WRITE_BYTE)       |	/* 0x00040000 */
+		disable_flag(I2C_FUNC_SMBUS_READ_BYTE_DATA)   |	/* 0x00080000 */
+		disable_flag(I2C_FUNC_SMBUS_WRITE_BYTE_DATA)  |	/* 0x00100000 */
+		disable_flag(I2C_FUNC_SMBUS_READ_WORD_DATA)   |	/* 0x00200000 */
+		disable_flag(I2C_FUNC_SMBUS_WRITE_WORD_DATA)  |	/* 0x00400000 */
+		disable_flag(I2C_FUNC_SMBUS_PROC_CALL)        |	/* 0x00800000 */
+		disable_flag(I2C_FUNC_SMBUS_READ_BLOCK_DATA)  |	/* 0x01000000 */
+		disable_flag(I2C_FUNC_SMBUS_WRITE_BLOCK_DATA) |	/* 0x02000000 */
+		enable_flag_if(I2C_FUNC_SMBUS_READ_I2C_BLOCK,
+			       priv->features & FEATURE_I2C_BLOCK_READ) |
+								/* 0x04000000 */
+		enable_flag(I2C_FUNC_SMBUS_WRITE_I2C_BLOCK)   |	/* 0x08000000 */
+
+		enable_flag(I2C_FUNC_SMBUS_BYTE) | /* _READ_BYTE  _WRITE_BYTE */
+		enable_flag(I2C_FUNC_SMBUS_BYTE_DATA)  | /* _READ_BYTE_DATA
+							  * _WRITE_BYTE_DATA
+							  */
+		enable_flag(I2C_FUNC_SMBUS_WORD_DATA)  | /* _READ_WORD_DATA
+							  * _WRITE_WORD_DATA
+							  */
+		enable_flag(I2C_FUNC_SMBUS_BLOCK_DATA) | /* _READ_BLOCK_DATA
+							  * _WRITE_BLOCK_DATA
+							  */
+		disable_flag(I2C_FUNC_SMBUS_I2C_BLOCK) | /* _READ_I2C_BLOCK
+							  * _WRITE_I2C_BLOCK
+							  */
+		disable_flag(I2C_FUNC_SMBUS_EMUL); /* _QUICK  _BYTE
 						    * _BYTE_DATA  _WORD_DATA
 						    * _PROC_CALL
 						    * _WRITE_BLOCK_DATA
@@ -632,6 +636,10 @@ static u32 i801_func(struct i2c_adapter *adapter)
 	return f;
 }
 
+#undef enable_flag
+#undef disable_flag
+#undef enable_flag_if
+
 static const struct i2c_algorithm smbus_algorithm = {
 	.smbus_xfer     = i801_access,
 	.functionality  = i801_func,
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
