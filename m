Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D231EEC4A
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jun 2020 22:47:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4D30988A19;
	Thu,  4 Jun 2020 20:47:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ohfTMS5Y6uFB; Thu,  4 Jun 2020 20:47:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B96E0889EE;
	Thu,  4 Jun 2020 20:47:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 95B951BF2C6
 for <devel@linuxdriverproject.org>; Thu,  4 Jun 2020 20:47:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 927A4889B0
 for <devel@linuxdriverproject.org>; Thu,  4 Jun 2020 20:47:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hF7gizoLJHSy for <devel@linuxdriverproject.org>;
 Thu,  4 Jun 2020 20:47:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 14CA0889C8
 for <devel@driverdev.osuosl.org>; Thu,  4 Jun 2020 20:47:09 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ACB9A207D3;
 Thu,  4 Jun 2020 20:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591303628;
 bh=eInHzdkkZpVoAvTbVpOBmReGXIyBOk+Y+9JMudJzEPc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=w1w6muRwWYqIXeWC+t027ibMlcZML2lXN8+ZL92/nlDJ9uCZG6SC7c6AdFj+U6sa7
 tW03hIhRK+YZML9u1b4iTJR9iEQCxV9ipKbXj54u6X8hbGCK37a0p4L9PLfjJGhbCf
 g/S2gnVfsUyHkINP1VylXO5np+zcBMymHWSt4Kss=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jgwlW-0004Ad-Pf; Thu, 04 Jun 2020 22:47:06 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 2/5] Revert "media: atomisp: Add some ACPI detection info"
Date: Thu,  4 Jun 2020 22:47:02 +0200
Message-Id: <f236116962c61bf8608ef7ff558bca6d739c8e8b.1591303518.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1591303518.git.mchehab+huawei@kernel.org>
References: <cover.1591303518.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This reverts commit 0d64e9420583cbc3c4a3f949ebe38fd8f7769281.

As gmin_subdev_add() now takes the ACPI handle directly,
we can deprecate the code that were doing this inside each
I2C driver.

PS.: This also reverts commit c03496b3bd92 ("media: atomisp: add a notice about possible leak resources")

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/i2c/atomisp-gc0310.c    | 11 -----------
 drivers/staging/media/atomisp/i2c/atomisp-gc2235.c    | 11 -----------
 drivers/staging/media/atomisp/i2c/atomisp-lm3554.c    | 11 -----------
 drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c   | 11 -----------
 drivers/staging/media/atomisp/i2c/atomisp-ov2680.c    | 11 -----------
 drivers/staging/media/atomisp/i2c/atomisp-ov2722.c    | 11 -----------
 .../staging/media/atomisp/i2c/ov5693/atomisp-ov5693.c | 11 -----------
 7 files changed, 77 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c b/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
index 3fbd585d45ed..2b71de722ec3 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
@@ -1310,17 +1310,6 @@ static int gc0310_probe(struct i2c_client *client)
 	int ret;
 	void *pdata;
 	unsigned int i;
-	acpi_handle handle;
-	struct acpi_device *adev;
-
-	handle = ACPI_HANDLE(&client->dev);
-	if (!handle || acpi_bus_get_device(handle, &adev)) {
-		dev_err(&client->dev, "Error could not get ACPI device\n");
-		return -ENODEV;
-	}
-	pr_info("%s: ACPI detected it on bus ID=%s, HID=%s\n",
-		__func__, acpi_device_bid(adev), acpi_device_hid(adev));
-	// FIXME: may need to release resources allocated by acpi_bus_get_device()
 
 	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 	if (!dev)
diff --git a/drivers/staging/media/atomisp/i2c/atomisp-gc2235.c b/drivers/staging/media/atomisp/i2c/atomisp-gc2235.c
index ae36dd4e9d0f..78147ffb6099 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-gc2235.c
@@ -1052,17 +1052,6 @@ static int gc2235_probe(struct i2c_client *client)
 	void *gcpdev;
 	int ret;
 	unsigned int i;
-	acpi_handle handle;
-	struct acpi_device *adev;
-
-	handle = ACPI_HANDLE(&client->dev);
-	if (!handle || acpi_bus_get_device(handle, &adev)) {
-		dev_err(&client->dev, "Error could not get ACPI device\n");
-		return -ENODEV;
-	}
-	pr_info("%s: ACPI detected it on bus ID=%s, HID=%s\n",
-		__func__, acpi_device_bid(adev), acpi_device_hid(adev));
-	// FIXME: may need to release resources allocated by acpi_bus_get_device()
 
 	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 	if (!dev)
diff --git a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
index 85c90c663613..809010af7855 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
@@ -851,17 +851,6 @@ static int lm3554_probe(struct i2c_client *client)
 	struct lm3554 *flash;
 	unsigned int i;
 	int ret;
-	acpi_handle handle;
-	struct acpi_device *adev;
-
-	handle = ACPI_HANDLE(&client->dev);
-	if (!handle || acpi_bus_get_device(handle, &adev)) {
-		dev_err(&client->dev, "Error could not get ACPI device\n");
-		return -ENODEV;
-	}
-	pr_info("%s: ACPI detected it on bus ID=%s, HID=%s\n",
-		__func__, acpi_device_bid(adev), acpi_device_hid(adev));
-	// FIXME: may need to release resources allocated by acpi_bus_get_device()
 
 	flash = kzalloc(sizeof(*flash), GFP_KERNEL);
 	if (!flash)
diff --git a/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c b/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c
index a76031f9c799..0d60918a9b19 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c
@@ -1817,17 +1817,6 @@ static int mt9m114_probe(struct i2c_client *client)
 	int ret = 0;
 	unsigned int i;
 	void *pdata;
-	acpi_handle handle;
-	struct acpi_device *adev;
-
-	handle = ACPI_HANDLE(&client->dev);
-	if (!handle || acpi_bus_get_device(handle, &adev)) {
-		dev_err(&client->dev, "Error could not get ACPI device\n");
-		return -ENODEV;
-	}
-	pr_info("%s: ACPI detected it on bus ID=%s, HID=%s\n",
-		__func__, acpi_device_bid(adev), acpi_device_hid(adev));
-	// FIXME: may need to release resources allocated by acpi_bus_get_device()
 
 	/* Setup sensor configuration structure */
 	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
diff --git a/drivers/staging/media/atomisp/i2c/atomisp-ov2680.c b/drivers/staging/media/atomisp/i2c/atomisp-ov2680.c
index 8f548351142a..90d125ba080f 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-ov2680.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-ov2680.c
@@ -1244,17 +1244,6 @@ static int ov2680_probe(struct i2c_client *client)
 	int ret;
 	void *pdata;
 	unsigned int i;
-	acpi_handle handle;
-	struct acpi_device *adev;
-
-	handle = ACPI_HANDLE(&client->dev);
-	if (!handle || acpi_bus_get_device(handle, &adev)) {
-		dev_err(&client->dev, "Error could not get ACPI device\n");
-		return -ENODEV;
-	}
-	dev_info(&client->dev, "%s: ACPI detected it on bus ID=%s, HID=%s\n",
-		__func__, acpi_device_bid(adev), acpi_device_hid(adev));
-	// FIXME: may need to release resources allocated by acpi_bus_get_device()
 
 	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 	if (!dev)
diff --git a/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c b/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c
index 9f3e99be810d..eecefcd734d0 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c
@@ -1215,17 +1215,6 @@ static int ov2722_probe(struct i2c_client *client)
 	struct ov2722_device *dev;
 	void *ovpdev;
 	int ret;
-	acpi_handle handle;
-	struct acpi_device *adev;
-
-	handle = ACPI_HANDLE(&client->dev);
-	if (!handle || acpi_bus_get_device(handle, &adev)) {
-		dev_err(&client->dev, "Error could not get ACPI device\n");
-		return -ENODEV;
-	}
-	pr_info("%s: ACPI detected it on bus ID=%s, HID=%s\n",
-		__func__, acpi_device_bid(adev), acpi_device_hid(adev));
-	// FIXME: may need to release resources allocated by acpi_bus_get_device()
 
 	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 	if (!dev)
diff --git a/drivers/staging/media/atomisp/i2c/ov5693/atomisp-ov5693.c b/drivers/staging/media/atomisp/i2c/ov5693/atomisp-ov5693.c
index da5b1a31e82f..97ab10bc45ca 100644
--- a/drivers/staging/media/atomisp/i2c/ov5693/atomisp-ov5693.c
+++ b/drivers/staging/media/atomisp/i2c/ov5693/atomisp-ov5693.c
@@ -1902,17 +1902,6 @@ static int ov5693_probe(struct i2c_client *client)
 	int ret = 0;
 	void *pdata;
 	unsigned int i;
-	acpi_handle handle;
-	struct acpi_device *adev;
-
-	handle = ACPI_HANDLE(&client->dev);
-	if (!handle || acpi_bus_get_device(handle, &adev)) {
-		dev_err(&client->dev, "Error could not get ACPI device\n");
-		return -ENODEV;
-	}
-	pr_info("%s: ACPI detected it on bus ID=%s, HID=%s\n",
-		__func__, acpi_device_bid(adev), acpi_device_hid(adev));
-	// FIXME: may need to release resources allocated by acpi_bus_get_device()
 
 	/*
 	 * Firmware workaround: Some modules use a "secondary default"
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
