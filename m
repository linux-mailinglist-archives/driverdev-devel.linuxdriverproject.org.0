Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C7C260F55
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Sep 2020 12:12:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B98B187283;
	Tue,  8 Sep 2020 10:12:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wibMCQtu8G+i; Tue,  8 Sep 2020 10:12:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C19F186864;
	Tue,  8 Sep 2020 10:12:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E0DA1BF286
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 10:12:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9AD0A8696A
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 10:12:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id acP+1qrflfqo for <devel@linuxdriverproject.org>;
 Tue,  8 Sep 2020 10:12:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E5D6486964
 for <devel@driverdev.osuosl.org>; Tue,  8 Sep 2020 10:12:32 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5ce.dynamic.kabel-deutschland.de
 [95.90.213.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AE6052177B;
 Tue,  8 Sep 2020 10:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599559951;
 bh=vW65TbwI8SwZiwFXgxSf5xZsxuSUgeC5F1theLDAloE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XOTKlvG5RcCQyQUg8lIy9/a/rI0DPNURl0LHFw87QllN/YnsnO1dSvU2sO5+vmnIZ
 yibeTs10ffagpvTOkXTtm1U9VSw1fqKzjSDLLfq9i8xvyBnfy6OIksjg2FNmjuSAfv
 wdaHeNeoG8dk0Vo5jCikWEnmkGJywKXPyHnl9mIE=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kFac1-00B3qb-1w; Tue, 08 Sep 2020 12:12:29 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/5] media: atomisp: get rid of some cleanup leftovers
Date: Tue,  8 Sep 2020 12:12:22 +0200
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
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 mauro.chehab@huawei.com, Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
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
