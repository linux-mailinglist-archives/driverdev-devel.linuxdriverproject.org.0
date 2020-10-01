Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F5C27FC74
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Oct 2020 11:28:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 257B722F26;
	Thu,  1 Oct 2020 09:28:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CEnw7V0hE46p; Thu,  1 Oct 2020 09:28:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4EEE22305A;
	Thu,  1 Oct 2020 09:28:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E79E91BF860
 for <devel@linuxdriverproject.org>; Thu,  1 Oct 2020 09:28:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D6B8787305
 for <devel@linuxdriverproject.org>; Thu,  1 Oct 2020 09:28:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IfUtEnzY8bMD for <devel@linuxdriverproject.org>;
 Thu,  1 Oct 2020 09:28:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1D85A87306
 for <devel@driverdev.osuosl.org>; Thu,  1 Oct 2020 09:28:19 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5d2.dynamic.kabel-deutschland.de
 [95.90.213.210])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A8F9821707;
 Thu,  1 Oct 2020 09:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601544498;
 bh=bRxCOT0GHdpfEP+hLDzCHh6ExwWYxA+B8cHCx7grTKU=;
 h=From:To:Cc:Subject:Date:From;
 b=n3LLptoC05AgdQddGfNE50eXUrN5MxYeojzcuiUzD6/qugKGw2n/lzmGkLFgY6Y+l
 FKHlShxYF+X6rliQ7qp6rAngJfAxmftkMBOvEOoGPFnagK6T+LJTJYOe89Qk7bI1Y9
 OsvGDEsyAwGeuAWxsMRH+Fg7r0FTH1+glGBGaJR0=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kNusp-005Xag-QO; Thu, 01 Oct 2020 11:28:15 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH 1/3] media: zoran: use upper case for card types
Date: Thu,  1 Oct 2020 11:28:13 +0200
Message-Id: <21fd8f12edb27d269eefdbea172aa3a80e2aa6ce.1601544491.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, mjpeg-users@lists.sourceforge.net,
 Corentin Labbe <clabbe@baylibre.com>, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Don't mix case there: let's just use uppercase, as this is
the common pattern for such define-like enums.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/zoran/zoran.h      |  8 ++++----
 drivers/staging/media/zoran/zoran_card.c | 20 ++++++++++----------
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index 372fadfd9a01..7217a64fe59b 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -75,11 +75,11 @@ enum card_type {
 	UNKNOWN = -1,
 
 	/* Pinnacle/Miro */
-	DC10_old,		/* DC30 like */
-	DC10_new,		/* DC10plus like */
-	DC10plus,
+	DC10_OLD,		/* DC30 like */
+	DC10_NEW,		/* DC10_PLUS like */
+	DC10_PLUS,
 	DC30,
-	DC30plus,
+	DC30_PLUS,
 
 	/* Linux Media Labs */
 	LML33,
diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 84a5d52517cd..8d56d039a686 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -104,8 +104,8 @@ MODULE_VERSION(ZORAN_VERSION);
 	.subvendor = (subven), .subdevice = (subdev), .driver_data = (data) }
 
 static const struct pci_device_id zr36067_pci_tbl[] = {
-	ZR_DEVICE(PCI_VENDOR_ID_MIRO, PCI_DEVICE_ID_MIRO_DC10PLUS, DC10plus),
-	ZR_DEVICE(PCI_VENDOR_ID_MIRO, PCI_DEVICE_ID_MIRO_DC30PLUS, DC30plus),
+	ZR_DEVICE(PCI_VENDOR_ID_MIRO, PCI_DEVICE_ID_MIRO_DC10PLUS, DC10_PLUS),
+	ZR_DEVICE(PCI_VENDOR_ID_MIRO, PCI_DEVICE_ID_MIRO_DC30PLUS, DC30_PLUS),
 	ZR_DEVICE(PCI_VENDOR_ID_ELECTRONICDESIGNGMBH, PCI_DEVICE_ID_LML_33R10, LML33R10),
 	ZR_DEVICE(PCI_VENDOR_ID_IOMEGA, PCI_DEVICE_ID_IOMEGA_BUZ, BUZ),
 	ZR_DEVICE(PCI_ANY_ID, PCI_ANY_ID, NUM_CARDS),
@@ -311,7 +311,7 @@ static const unsigned short bt866_addrs[] = { 0x44, I2C_CLIENT_END };
 
 static struct card_info zoran_cards[NUM_CARDS] = {
 	{
-		.type = DC10_old,
+		.type = DC10_OLD,
 		.name = "DC10(old)",
 		.i2c_decoder = "vpx3220a",
 		.addrs_decoder = vpx3220_addrs,
@@ -340,7 +340,7 @@ static struct card_info zoran_cards[NUM_CARDS] = {
 		.input_mux = 0,
 		.init = &dc10_init,
 	}, {
-		.type = DC10_new,
+		.type = DC10_NEW,
 		.name = "DC10(new)",
 		.i2c_decoder = "saa7110",
 		.addrs_decoder = saa7110_addrs,
@@ -369,8 +369,8 @@ static struct card_info zoran_cards[NUM_CARDS] = {
 		.input_mux = 0,
 		.init = &dc10plus_init,
 	}, {
-		.type = DC10plus,
-		.name = "DC10plus",
+		.type = DC10_PLUS,
+		.name = "DC10_PLUS",
 		.i2c_decoder = "saa7110",
 		.addrs_decoder = saa7110_addrs,
 		.i2c_encoder = "adv7175",
@@ -430,8 +430,8 @@ static struct card_info zoran_cards[NUM_CARDS] = {
 		.input_mux = 0,
 		.init = &dc10_init,
 	}, {
-		.type = DC30plus,
-		.name = "DC30plus",
+		.type = DC30_PLUS,
+		.name = "DC30_PLUS",
 		.i2c_decoder = "vpx3220a",
 		.addrs_decoder = vpx3220_addrs,
 		.i2c_encoder = "adv7175",
@@ -694,7 +694,7 @@ int zoran_check_jpg_settings(struct zoran *zr,
 		break;
 	case 4:
 
-		if (zr->card.type == DC10_new) {
+		if (zr->card.type == DC10_NEW) {
 			pci_dbg(zr->pci_dev, "%s - HDec by 4 is not supported on the DC10\n", __func__);
 			err0++;
 			break;
@@ -715,7 +715,7 @@ int zoran_check_jpg_settings(struct zoran *zr,
 		/* We have to check the data the user has set */
 
 		if (settings->HorDcm != 1 && settings->HorDcm != 2 &&
-		    (zr->card.type == DC10_new || settings->HorDcm != 4)) {
+		    (zr->card.type == DC10_NEW || settings->HorDcm != 4)) {
 			settings->HorDcm = clamp(settings->HorDcm, 1, 2);
 			err0++;
 		}
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
