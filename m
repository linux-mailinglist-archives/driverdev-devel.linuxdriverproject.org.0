Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 318E825C20D
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Sep 2020 15:57:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A41CB2E112;
	Thu,  3 Sep 2020 13:57:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a7f2wKpVKvdr; Thu,  3 Sep 2020 13:57:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 738F52E107;
	Thu,  3 Sep 2020 13:57:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5A7351BF294
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 13:57:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 496BD2E107
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 13:57:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 70yebHOUqbpq for <devel@linuxdriverproject.org>;
 Thu,  3 Sep 2020 13:57:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 69D96203C2
 for <devel@driverdev.osuosl.org>; Thu,  3 Sep 2020 13:57:36 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c3.dynamic.kabel-deutschland.de
 [95.90.213.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 03E83208B3;
 Thu,  3 Sep 2020 13:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599141456;
 bh=vW65TbwI8SwZiwFXgxSf5xZsxuSUgeC5F1theLDAloE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0Lzx3zaoCsj75yzLW9jkI2nPXSTigMstiL8oNfRDjv3Z0+nkd4F0lxvL9zq75A8YQ
 w1GUEsDptIgb10tYVHYa5/OGUWAW17s4imCRSq/PpCMKZQskhwlGW77+GUwshrNv8s
 NVh1qsa8D/KeZL9AjG+m0xVhd84AzUxh7fgCn18o=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kDpk6-004T6l-3r; Thu, 03 Sep 2020 15:57:34 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 1/5] media: atomisp: get rid of some cleanup leftovers
Date: Thu,  3 Sep 2020 15:57:28 +0200
Message-Id: <1e7968e715e23b90ab4994b32301a6cf4faffca8.1599141140.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1599141140.git.mchehab+huawei@kernel.org>
References: <cover.1599141140.git.mchehab+huawei@kernel.org>
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
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The code that used to check for ISP2400/2401 version were
using the revision number in order to decide wheather
version should be used. With the new version, the code
doesn't need to check anymore for ISP version.

Fixes: ca133c395f2f ("media: atomisp: improve device detection code")
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
index 8c1d5a3b8f45..304857bffc6a 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -1429,7 +1429,6 @@ atomisp_load_firmware(struct atomisp_device *isp)
  */
 static bool is_valid_device(struct pci_dev *pdev, const struct pci_device_id *id)
 {
-	unsigned int a0_max_id = 0;
 	const char *name;
 	const char *product;
 
@@ -1437,11 +1436,9 @@ static bool is_valid_device(struct pci_dev *pdev, const struct pci_device_id *id
 
 	switch (id->device & ATOMISP_PCI_DEVICE_SOC_MASK) {
 	case ATOMISP_PCI_DEVICE_SOC_MRFLD:
-		a0_max_id = ATOMISP_PCI_REV_MRFLD_A0_MAX;
 		name = "Merrifield";
 		break;
 	case ATOMISP_PCI_DEVICE_SOC_BYT:
-		a0_max_id = ATOMISP_PCI_REV_BYT_A0_MAX;
 		name = "Baytrail";
 		break;
 	case ATOMISP_PCI_DEVICE_SOC_ANN:
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
