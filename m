Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFD958A35
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 20:52:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 460BE87587;
	Thu, 27 Jun 2019 18:52:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4PirhScBHBaj; Thu, 27 Jun 2019 18:52:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D00DB874DA;
	Thu, 27 Jun 2019 18:52:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E2B41BF2F8
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:52:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0B58687E7B
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:52:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WTwz2o+-G5E6 for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 18:52:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AB46D82B51
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 18:52:01 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id p10so1433859pgn.1
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 11:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=7D0PzAfViZ1saMwvNXJVGOaPjQ/bd1/rxTaSKwyyN7c=;
 b=Or3LxChJeEuS1HBnMbn0UutirVCYfBWmq+PyVXAXsmtTRTu2mgUE0I+d2IFhAA4eMt
 hDPclPC9uDGZW/BcYzaRPWWQdaEzo2N60lU0qf2Ul/oMsmtURjSWwNsjQB581IMH5bg2
 KxhX0Pepu0pJkMF1p2c7/ehz91TZJXogYpMLnp4br5BFJ+lyIkf51A7m/lN2u1Z/1xj7
 cdtKTn/ITHXAcj7r3hNhpDrmm+/9a5Aqi71PYdmCI4sg5EMcrt77LF87Z/vx+EeeLDwf
 3WG85rGLM4DLRuHVKEI3IlP4AWkfmZKRaBRdGxLhLbjaxYObDIh6wUg0knh9fDR/VJBh
 W+/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=7D0PzAfViZ1saMwvNXJVGOaPjQ/bd1/rxTaSKwyyN7c=;
 b=ZBuv2VUaW8e+XKzxo9N6e8fr20RPpqSTO6twgw5hZUqRKQ3jpG57vrL7sFr77qUvCp
 oqQ3+G23ASYgwrQrD4YDHBNMIT/Jzcs9lBGlfloWnz5uR861v4A+nTw3trcjnFV+ud+N
 g1bDzahHiyvSEnY8LGks8QYitzXSVhOWi7ILugljijpYDQ5G6L8RIPDM/DlTtYf4oVJp
 ZjnzRNhMuatLz4SX92P7bOXGjDgVrYPFK0DweIGoTfJRHGqSwQJkWC/thx3ePC1po7lJ
 1mBGf9Q8CVniJlyoKIR4IGwV13fm53CCfQrW8Spuxgnn8pRalZH2BJYOyXWDYEAl2qH1
 rzrA==
X-Gm-Message-State: APjAAAVW5a/zO8U0luacBgMSjxMUVucNIeWo4Mx8/ApmnCXUWpxxs/NV
 1hruf2ymJAK6KPhSDUqArPGZJc65qHzs4A==
X-Google-Smtp-Source: APXvYqxlncH/motRpxarXISHjXNRG22cGr8PEndowAP9oFWA6icJDy71gKmV/rtomSNgmIBIN4/uZQ==
X-Received: by 2002:a63:6b07:: with SMTP id g7mr5345593pgc.325.1561661521129; 
 Thu, 27 Jun 2019 11:52:01 -0700 (PDT)
Received: from localhost.localdomain ([183.83.73.90])
 by smtp.gmail.com with ESMTPSA id c83sm5194088pfb.111.2019.06.27.11.51.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 11:52:00 -0700 (PDT)
From: Harsh Jain <harshjain32@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, harshjain32@gmail.com,
 harshjain.prof@gmail.com
Subject: [PATCH] staging:kpc2000:Fix sparse warnings
Date: Fri, 28 Jun 2019 00:21:38 +0530
Message-Id: <20190627185138.26214-1-harshjain32@gmail.com>
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: root <harshjain32@gmail.com>

Fix following sparse warning
symbol was not declared. Should it be static?
Using plain integer as NULL pointer

Signed-off-by: Harsh Jain <harshjain32@gmail.com>
---
 drivers/staging/kpc2000/kpc_i2c/i2c_driver.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c b/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
index 0fb068b2408d..155da641e3a2 100644
--- a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
+++ b/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
@@ -614,7 +614,7 @@ static const struct i2c_algorithm smbus_algorithm = {
 /********************************
  *** Part 2 - Driver Handlers ***
  ********************************/
-int pi2c_probe(struct platform_device *pldev)
+static int pi2c_probe(struct platform_device *pldev)
 {
     int err;
     struct i2c_device *priv;
@@ -664,7 +664,7 @@ int pi2c_probe(struct platform_device *pldev)
     return 0;
 }
 
-int pi2c_remove(struct platform_device *pldev)
+static int pi2c_remove(struct platform_device *pldev)
 {
     struct i2c_device *lddev;
     dev_dbg(&pldev->dev, "pi2c_remove(pldev = %p '%s')\n", pldev, pldev->name);
@@ -679,9 +679,9 @@ int pi2c_remove(struct platform_device *pldev)
     //pci_set_drvdata(dev, NULL);
     
     //cdev_del(&lddev->cdev);
-    if(lddev != 0) {
+    if(lddev != NULL) {
         kfree(lddev);
-        pldev->dev.platform_data = 0;
+        pldev->dev.platform_data = NULL;
     }
     
     return 0;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
