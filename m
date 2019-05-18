Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5859122140
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 04:31:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2FB2986B96;
	Sat, 18 May 2019 02:31:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ax9s8tqhAFCl; Sat, 18 May 2019 02:31:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DEB3186B90;
	Sat, 18 May 2019 02:31:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D73D21BF306
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 02:31:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C77B088329
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 02:31:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cXnoZM0bORwK for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 02:31:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 98BDC87E75
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 02:31:09 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id o7so10265828qtp.4
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 19:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=DsUkVcae2RsRvb3bRT2zxZgb7HZZ1Z3HUnMLGy87n3k=;
 b=MaeXQCcZIthglzTzpOrX0vdozgqojoNEkFoNTaWkExVeKmSShoOh6YvQdYHrDrKnU0
 7tGiJjC1RlOMcjYRIBbDVSG+75kkPMJc+t5NB5b/Ake5Q3j4edib1JmCFtKDctMW4eRO
 KLfLKxYR9UlE59bVskIcILohbxlZSahtoLXJlWw1xG3wg6yTCdWsZz6+LexXKXEZL6M+
 prhu8is2gy5qs2b6ZNpNYbpbrBWNjisgzvCR0c53N05x99DYJ8qo0QABlnS5mxMgJyov
 cMdyvZk3OP0HSUNhC+PdsLg2OO/otsdsb1s9Q1pb6S6w0q3Z7ejxe+6vhStw+i3IVK9K
 mSoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DsUkVcae2RsRvb3bRT2zxZgb7HZZ1Z3HUnMLGy87n3k=;
 b=HFTO5EEs4Al8lHEP2naqHH1rXvAXlzOE/GvXMTt7OhbWiE18GPfw196NZ0ORn1UKQ5
 17zK8S/S9NTycrXdvyhoyU9yscV4eTF7KfOV8vodu63AIRm6i3DNNLNmlhiSX1SB0IZG
 9pjU01y9WG4pSSRQwJj19NFrvTE5cKVyVbu05ZvUILOWGLfy+Nw6tObxn/P4MAlRJzDS
 JZP6Y3S/Iha321vOzHe6VdWw69WsDhXaG//HxByIvFjEyn7zweHVZ9gfxtGfnT1YVvBm
 78Md4gu874zw93A/HFpp9PAus3NPNwGnoO0NP9xoYTOML2VkbkGILdqtLOyz78lcHuwe
 3hLA==
X-Gm-Message-State: APjAAAWTcxQSbQX1iHft3KUrlCgcy1MEXLBjUzUyp7sF7fzCtExuEpoe
 B1ke1b4okwUPgJHrEX1nfgM=
X-Google-Smtp-Source: APXvYqzXEzHdDlkpBPU2r+loVj3VZp160Lf037DSAmyoX9hBoHyrhr7CmpLpsrrZu+sUPXp3Neoi7w==
X-Received: by 2002:a0c:c923:: with SMTP id r32mr40169865qvj.30.1558146668728; 
 Fri, 17 May 2019 19:31:08 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.dc.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id n66sm5210322qke.6.2019.05.17.19.31.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 19:31:08 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: gneukum1@gmail.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] staging: kpc2000: kpc_i2c: reformat copyright for better
 readability
Date: Sat, 18 May 2019 02:29:57 +0000
Message-Id: <bc7e518cb6294c7eb1bb4683079ed4b65277c2d5.1558146549.git.gneukum1@gmail.com>
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

The copyright header in i2c_driver.c is difficult to read and not
chronologically ordered. Reformat and reorganize the copyright header
to be similar to other drivers in the i2c subsystem.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc_i2c/i2c_driver.c | 30 ++++++++++++--------
 1 file changed, 18 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c b/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
index 6dda4eb6de75..6cb63d20b00f 100644
--- a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
+++ b/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
@@ -1,15 +1,21 @@
 // SPDX-License-Identifier: GPL-2.0+
-/*  Copyright (c) 2014-2018  Daktronics,
-			      Matt Sickler <matt.sickler@daktronics.com>,
-			      Jordon Hofer <jordon.hofer@daktronics.com>
-    Adapted i2c-i801.c for use with Kadoka hardware.
-    Copyright (c) 1998 - 2002  Frodo Looijaard <frodol@dds.nl>,
-    Philip Edelbrock <phil@netroedge.com>, and Mark D. Studebaker
-    <mdsxyz123@yahoo.com>
-    Copyright (C) 2007 - 2012  Jean Delvare <khali@linux-fr.org>
-    Copyright (C) 2010         Intel Corporation,
-				David Woodhouse <dwmw2@infradead.org>
-*/
+/*
+ * KPC2000 i2c driver
+ *
+ * Adapted i2c-i801.c for use with Kadoka hardware.
+ *
+ * Copyright (C) 1998 - 2002
+ *	Frodo Looijaard <frodol@dds.nl>,
+ *	Philip Edelbrock <phil@netroedge.com>,
+ *	Mark D. Studebaker <mdsxyz123@yahoo.com>
+ * Copyright (C) 2007 - 2012
+ *	Jean Delvare <khali@linux-fr.org>
+ * Copyright (C) 2010 Intel Corporation
+ *	David Woodhouse <dwmw2@infradead.org>
+ * Copyright (C) 2014-2018 Daktronics
+ *	Matt Sickler <matt.sickler@daktronics.com>,
+ *	Jordon Hofer <jordon.hofer@daktronics.com>
+ */
 #include <linux/init.h>
 #include <linux/module.h>
 #include <linux/types.h>
@@ -445,7 +451,7 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 	struct i2c_device *priv = i2c_get_adapdata(adap);
 
 	dev_dbg(&priv->adapter.dev, "i801_access (addr=%0d)  flags=%x  read_write=%x  command=%x  size=%x",
-		addr, flags, read_write, command, size );
+			addr, flags, read_write, command, size );
 
 	hwpec = (priv->features & FEATURE_SMBUS_PEC) && (flags & I2C_CLIENT_PEC) && size != I2C_SMBUS_QUICK && size != I2C_SMBUS_I2C_BLOCK_DATA;
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
