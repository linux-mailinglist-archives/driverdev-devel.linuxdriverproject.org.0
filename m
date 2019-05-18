Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DDDCB22148
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 04:31:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4D9C386B90;
	Sat, 18 May 2019 02:31:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H1zJoccr1fu9; Sat, 18 May 2019 02:31:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE77486BB2;
	Sat, 18 May 2019 02:31:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 361691BF306
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 02:31:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2B3BD880C3
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 02:31:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gXDLc7VJ0Nv6 for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 02:31:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7912887E78
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 02:31:11 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id d10so5667957qko.4
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 19:31:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=NZaB6D1v98BSotvfZL2UYvLWY18MGsNTAI6RIeVlR9A=;
 b=mhEakHBCsSo1vVLiZzDZ24I9vPAulkvQqO9q3eJQWCDmrjVmDQ1TGGoOXp/4rHREdC
 t8i/LLizPaikksaU7F7jiyPkYgwKagRwUyebTPft8eqtXD0FfoFtnkq+7MfUddkIf7Bv
 LvMyh5Bm9VJ5xKpfoQPNr7S7Kt+gs0xu7ZhJekfIs76iTX509aKPjO6L8lTmtC1anWT0
 y9gso/Tsj84CsNkUAnNhLUpFnaHLK4vwpiJDKB2GWY4dCwrIOH7v/oWv34eF9H6kuOWg
 7VaRPmSIW4ogTPqxz1W+r66PwmUhiSfN1OakzM4oh1uIc0IikVGrVUT+bQTmgVwayUN/
 JjMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NZaB6D1v98BSotvfZL2UYvLWY18MGsNTAI6RIeVlR9A=;
 b=X50YewAtH+gVLh2Omq4ITlGdG/q/32EJHDadnETT3UtAKGExC0p3axyYHFFOlokCA3
 mWkt/Dm0BKPdrobxNHfos4iNYO7581r3xnHtnNW62Hzjgt9dvFnCxymxRtD14N1xjoPE
 wZnNBbkzU6n8V1Z4ZNZlD9gu4d/hbT8FGmP3gVlm1BGf4YtG044bXtwqdTTBxF3EQ9KA
 ihfrlCesG2g0hLKltW6ajCIPnMz4+kpCfZMsNW+qaMJFRx9LHQQDsIKyMPerOR6fmM0M
 UgTwY/5Xe8pyWUs4ROiMagpIOrEkDd0W3r2438Bw1kcXUHCKFS8VgRHVKD9UGp/StNzF
 W5xw==
X-Gm-Message-State: APjAAAUM6VI7fkkMFyk37TLuiygIuAAbC6Pk3d2bGO3j/QFfJN9HB5gt
 pNA+J5zToXrh8k+FxDEWrBQ=
X-Google-Smtp-Source: APXvYqzHiOWZ0xPRM7wHEPEZLPiw5BWmrmcqxL+OCBwewQIJF14vonB6BWTQPXTRHNneEj5WIvjZ+w==
X-Received: by 2002:a05:620a:15ac:: with SMTP id
 f12mr37585531qkk.311.1558146670637; 
 Fri, 17 May 2019 19:31:10 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.dc.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id n66sm5210322qke.6.2019.05.17.19.31.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 19:31:10 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: gneukum1@gmail.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/5] staging: kpc2000: kpc_i2c: use %s with __func__
 identifier in log messages
Date: Sat, 18 May 2019 02:29:59 +0000
Message-Id: <ffd66b415e67f6b03483a6ee57b7b3dc0bab388f.1558146549.git.gneukum1@gmail.com>
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

Throughout i2c_driver.c, there are instances where the log strings
contain the function's name hardcoded into the string. Instead, use the
printk conversion specifier '%s' with the __func__ preprocessor
identifier to more maintainably print the function's name.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc_i2c/i2c_driver.c | 27 +++++++++++---------
 1 file changed, 15 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c b/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
index 9b9de81c8548..03e401322a18 100644
--- a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
+++ b/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
@@ -142,7 +142,7 @@ static int i801_check_pre(struct i2c_device *priv)
 {
 	int status;
 
-	dev_dbg(&priv->adapter.dev, "i801_check_pre\n");
+	dev_dbg(&priv->adapter.dev, "%s\n", __func__);
 
 	status = inb_p(SMBHSTSTS(priv));
 	if (status & SMBHSTSTS_HOST_BUSY) {
@@ -168,7 +168,7 @@ static int i801_check_post(struct i2c_device *priv, int status, int timeout)
 {
 	int result = 0;
 
-	dev_dbg(&priv->adapter.dev, "i801_check_post\n");
+	dev_dbg(&priv->adapter.dev, "%s\n", __func__);
 
 	/* If the SMBus is still busy, we give up */
 	if (timeout) {
@@ -219,7 +219,7 @@ static int i801_transaction(struct i2c_device *priv, int xact)
 	int result;
 	int timeout = 0;
 
-	dev_dbg(&priv->adapter.dev, "i801_transaction\n");
+	dev_dbg(&priv->adapter.dev, "%s\n", __func__);
 
 	result = i801_check_pre(priv);
 	if (result < 0) {
@@ -250,7 +250,7 @@ static void i801_wait_hwpec(struct i2c_device *priv)
 	int timeout = 0;
 	int status;
 
-	dev_dbg(&priv->adapter.dev, "i801_wait_hwpec\n");
+	dev_dbg(&priv->adapter.dev, "%s\n", __func__);
 
 	do {
 		usleep_range(250, 500);
@@ -269,7 +269,7 @@ static int i801_block_transaction_by_block(struct i2c_device *priv, union i2c_sm
 	int i, len;
 	int status;
 
-	dev_dbg(&priv->adapter.dev, "i801_block_transaction_by_block\n");
+	dev_dbg(&priv->adapter.dev, "%s\n", __func__);
 
 	inb_p(SMBHSTCNT(priv)); /* reset the data buffer index */
 
@@ -309,7 +309,7 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
 	int result;
 	int timeout;
 
-	dev_dbg(&priv->adapter.dev, "i801_block_transaction_byte_by_byte\n");
+	dev_dbg(&priv->adapter.dev, "%s\n", __func__);
 
 	result = i801_check_pre(priv);
 	if (result < 0) {
@@ -383,7 +383,7 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
 
 static int i801_set_block_buffer_mode(struct i2c_device *priv)
 {
-	dev_dbg(&priv->adapter.dev, "i801_set_block_buffer_mode\n");
+	dev_dbg(&priv->adapter.dev, "%s\n", __func__);
 
 	outb_p(inb_p(SMBAUXCTL(priv)) | SMBAUXCTL_E32B, SMBAUXCTL(priv));
 	if ((inb_p(SMBAUXCTL(priv)) & SMBAUXCTL_E32B) == 0) {
@@ -398,7 +398,7 @@ static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data
 	int result = 0;
 	//unsigned char hostc;
 
-	dev_dbg(&priv->adapter.dev, "i801_block_transaction\n");
+	dev_dbg(&priv->adapter.dev, "%s\n", __func__);
 
 	if (command == I2C_SMBUS_I2C_BLOCK_DATA) {
 		if (read_write == I2C_SMBUS_WRITE) {
@@ -450,8 +450,9 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 	int ret, xact = 0;
 	struct i2c_device *priv = i2c_get_adapdata(adap);
 
-	dev_dbg(&priv->adapter.dev, "i801_access (addr=%0d)  flags=%x  read_write=%x  command=%x  size=%x",
-			addr, flags, read_write, command, size );
+	dev_dbg(&priv->adapter.dev,
+		"%s (addr=%0d)  flags=%x  read_write=%x  command=%x  size=%x",
+		__func__, addr, flags, read_write, command, size);
 
 	hwpec = (priv->features & FEATURE_SMBUS_PEC) && (flags & I2C_CLIENT_PEC) && size != I2C_SMBUS_QUICK && size != I2C_SMBUS_I2C_BLOCK_DATA;
 
@@ -626,7 +627,8 @@ int pi2c_probe(struct platform_device *pldev)
 	struct i2c_device *priv;
 	struct resource *res;
 
-	dev_dbg(&pldev->dev, "pi2c_probe(pldev = %p '%s')\n", pldev, pldev->name);
+	dev_dbg(&pldev->dev, "%s(pldev = %p '%s')\n", __func__, pldev,
+		pldev->name);
 
 	priv = devm_kzalloc(&pldev->dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv) {
@@ -673,7 +675,8 @@ int pi2c_probe(struct platform_device *pldev)
 int pi2c_remove(struct platform_device *pldev)
 {
 	struct i2c_device *lddev;
-	dev_dbg(&pldev->dev, "pi2c_remove(pldev = %p '%s')\n", pldev, pldev->name);
+	dev_dbg(&pldev->dev, "%s(pldev = %p '%s')\n", __func__, pldev,
+		pldev->name);
 
 	lddev = (struct i2c_device *)pldev->dev.platform_data;
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
