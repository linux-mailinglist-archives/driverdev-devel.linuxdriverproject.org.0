Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1067514010C
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jan 2020 01:42:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 893288679E;
	Fri, 17 Jan 2020 00:42:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zYhE6V086cFx; Fri, 17 Jan 2020 00:42:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F094B867B9;
	Fri, 17 Jan 2020 00:42:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B5AC01BF9B3
 for <devel@linuxdriverproject.org>; Fri, 17 Jan 2020 00:42:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AD2A786C4D
 for <devel@linuxdriverproject.org>; Fri, 17 Jan 2020 00:42:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e8+GE7z+6E3w for <devel@linuxdriverproject.org>;
 Fri, 17 Jan 2020 00:42:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D721881E2B
 for <devel@driverdev.osuosl.org>; Fri, 17 Jan 2020 00:42:50 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id c17so21110224qkg.7
 for <devel@driverdev.osuosl.org>; Thu, 16 Jan 2020 16:42:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=fG1nEg0pNak1rZzcU/JRoX6uGZmT/cNn9HclSI51Afk=;
 b=WhPsUg2EkDT3dUHJYV23hYTJe9Kc3qz5fd4p/ma2M9quZO4ZXi644EUajYeAZH6x/d
 74iMSYh290VeQ0sLKpl6aCorIbp8vazA4wgC257Bo7c5F1UqiVo+k7yUY2UldXi+yDxO
 +XzwzN41ulu7Su4ZqJlCpHry1TK1LG37/lTNKQvAudY2xrGQBFQsNkPXPh4N+jyQ47tq
 tMIqpxplTgfOvTBdN6cd/H6chyaUzMU4UfsO7K8C2rRM0kYOTCW37GQ7xmHUzwyVd3Rz
 R+pxNsM6LuZemAun1Nly+iCxv0Gpv8W3WkAdkQA/nybtSpiWz+ZOUsfY1ojlyJywbVJA
 pVvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=fG1nEg0pNak1rZzcU/JRoX6uGZmT/cNn9HclSI51Afk=;
 b=YEu5n86vGGP9hW4t/ewW97d5oYiRFJ8/dVI+Goe9xPhVZYCvCXG9beUlN2ozcrcCUq
 6HBQFN4Jjc/9+dGXU13NkrtwWpyn+IXvFLgIo4oV2UDOFEvkmktS8Z4eICdFwxrkObJi
 O0c5FT2a/IXqE6jgYlNX1NnSxyZcVvBxarbewoJTnTOD/t7DJjSMmUOR/dfgUBdNBxsp
 gsL03mMBiOsqFZBkpMOWScrHEIe8u9yIYqioSpvcFOv29pSna4eNXRs0G/1MPoihmt/T
 RkHhwttZFcqP6DBoiTQg6i9DSidVRMs6VRcqyLF5H/i/A/u+vxbDZYTogPUXts+DJB6s
 tPTg==
X-Gm-Message-State: APjAAAWhlTKKeTso6sHcqTaZHwb3YeHQd8VoOCkUQEfDF0ASXLlw5U0j
 pjHHPMEKSmVRvYgyTcezHHk=
X-Google-Smtp-Source: APXvYqx4/ntQIn4UuaXGdrIGd4BkTGzPoQfCc3NrHwbNngv9L0ZNmv+/u7ELBEcQa39xf0qfc6CQbQ==
X-Received: by 2002:a37:a613:: with SMTP id p19mr34953245qke.199.1579221769790; 
 Thu, 16 Jan 2020 16:42:49 -0800 (PST)
Received: from felipe-pc ([179.209.47.80])
 by smtp.gmail.com with ESMTPSA id d143sm11011535qke.123.2020.01.16.16.42.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 16:42:49 -0800 (PST)
Date: Thu, 16 Jan 2020 21:42:14 -0300
From: Felipe Cardoso Resende <felipecardoso.fcr@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Geordan Neukum <gneukum1@gmail.com>, Hao Xu <haoxu.linuxkernel@gmail.com>,
 Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2] Staging: kpc2000: Remove warning: "dubious: x | !y"
 detected by sparse
Message-ID: <20200117004214.GA1800@felipe-pc>
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

Sparse complains about "dubious: x | !y".

This patch adds some macros to make it clear if a flag will be enabled or
not so Sparse stops complaining about dubious code construct.

Signed-off-by: Felipe Cardoso Resende <felipecardoso.fcr@gmail.com>
---

Changes in v2:
- Add "Staging: kpc2000" to Subject
- Fix commit message to explain what was done in the patch
- Move 'personal comment' to after '---' so it does not goes to git history.

The way I chose to remove the warning was to define a macro to
make it clear if a flag will be enable or not.

Let me know if you would prefer it to be done in a different way.

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
