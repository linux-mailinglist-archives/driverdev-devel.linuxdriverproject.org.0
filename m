Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1F422262B
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 16:51:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2CAB48914B;
	Thu, 16 Jul 2020 14:51:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XNuER7AOVxs0; Thu, 16 Jul 2020 14:51:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2949F890F8;
	Thu, 16 Jul 2020 14:51:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3CA501BF2F6
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 14:51:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 39171890F8
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 14:51:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dT0HSVBVzF_0 for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 14:51:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4A13D8910C
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 14:51:43 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1jw5EY-0008Au-F2; Thu, 16 Jul 2020 14:51:38 +0000
From: Colin King <colin.king@canonical.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: [PATCH] media: atomisp: fix mask and shift operation on ISPSSPM0
Date: Thu, 16 Jul 2020 15:51:38 +0100
Message-Id: <20200716145138.1708693-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.27.0
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

Currently the check on bits 25:24 on ISPSSPM0 is always 0 because
the mask and shift operations are incorrect. Fix this by shifting
by MRFLD_ISPSSPM0_ISPSSS_OFFSET (24 bits right) and then masking
with RFLD_ISPSSPM0_ISPSSC_MASK (0x03) to get the appropriate 2 bits
to check.

Addresses-Coverity: ("Operands don't affect result")
Fixes: 0f441fd70b1e ("media: atomisp: simplify the power down/up code")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
index d36809a0182c..a59d11aa232d 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -755,7 +755,7 @@ static int atomisp_mrfld_power(struct atomisp_device *isp, bool enable)
 
 		/* Wait until ISPSSPM0 bit[25:24] shows the right value */
 		iosf_mbi_read(BT_MBI_UNIT_PMC, MBI_REG_READ, MRFLD_ISPSSPM0, &tmp);
-		tmp = (tmp & MRFLD_ISPSSPM0_ISPSSC_MASK) >> MRFLD_ISPSSPM0_ISPSSS_OFFSET;
+		tmp = (tmp >> MRFLD_ISPSSPM0_ISPSSS_OFFSET) & MRFLD_ISPSSPM0_ISPSSC_MASK;
 		if (tmp == val) {
 			trace_ipu_cstate(enable);
 			return 0;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
