Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E95E025AFE1
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 17:47:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 989B422C44;
	Wed,  2 Sep 2020 15:47:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4hVXrvbbiSY5; Wed,  2 Sep 2020 15:47:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3DDA022875;
	Wed,  2 Sep 2020 15:47:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 971E41BF489
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 15:47:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8DF1386A73
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 15:47:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LyzoX6zuTn8V for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 15:47:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C8E1186A61
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 15:47:06 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id o5so5732373wrn.13
 for <devel@driverdev.osuosl.org>; Wed, 02 Sep 2020 08:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9H7/mF6ZryP92cYZg0TAhb3a8scGXiZh0eOQGOZfLVY=;
 b=EWrjEeNYJHzpFyynRv1Tm36aYF5UDXud2Bzh/c1N/PCCgF3DRzgeHshxPGu+2ui6Zp
 pzZzccyDBYjqSzS+kjbbHDm2/osM2b9qg9vxfCAGk4WGU4NuBoI65yajrriCk5naVRSt
 l24inn9h11hreISFMmkgPUtrldM7v8NyZPsdWKYHGCvJuMIasLwos6u5TvDHgu1rKROx
 j6GUj7uyMoBdVcvJFn4QS55FAtFBC+qOVc/QG9MMhouCPIabQ+9hbCHCEKwtFqmmceWl
 +BgebIXIcsRoMRzq89VauVrHFo2u+wsS9vpU5Nkn/8jrsoePM4r/OZAojtwGNZhWbLrl
 mT1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9H7/mF6ZryP92cYZg0TAhb3a8scGXiZh0eOQGOZfLVY=;
 b=DAfV5UQnUqcI1VZtZsiW0eYsoFMK1ReI2HJgsaNgz6S2+OEuJqXJLb6jtpp5Vlmas3
 M2gWDmxDrkDk6KPBkXwBde4YnX4c6RiA8kQX0R9sEpmUsZgAv1MxpjR/9aAkMiMc05qZ
 aigOCFlGL2hn5CiKGWBjlvBY22WolFRZhm1y97kjZBQ3aogOgtXp9GzteXtXX1wziTZ4
 KJsTyHA8Px6L5k4Z7/hRyicLIRYHjonKOdrTLSV1H8H90i5lMJWEbJLduu+XpwUn1h10
 R5QuTo2y4eDofOtk1JDVZc3qYKxKpFkIbiPnO+VHbd9JKqiWX7kxZPBACeM462Ubi4As
 vX0Q==
X-Gm-Message-State: AOAM533JcX3mIb4zOI5C6/fAbEc+2MYi7DI8LgFUTic+q67BLAEuuzjN
 OFA43nBgv3Orclitacdk3g4=
X-Google-Smtp-Source: ABdhPJyzJK7Qdfa4BBx3/Wpjhp0NtuTOCeKSPzQYT4+st3PI6LlQymsTvuTjEnv5IAqB/Qa9VKY+SQ==
X-Received: by 2002:a5d:444b:: with SMTP id x11mr7733827wrr.402.1599061625113; 
 Wed, 02 Sep 2020 08:47:05 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id b76sm44507wme.45.2020.09.02.08.47.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Sep 2020 08:47:04 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: 
Subject: [PATCH] staging/emxx_udc: Remove pointless variable assignments
Date: Wed,  2 Sep 2020 16:46:24 +0100
Message-Id: <20200902154628.283453-1-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <202009021127.uodVMaSJ%lkp@intel.com>
References: <202009021127.uodVMaSJ%lkp@intel.com>
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
Cc: devel@driverdev.osuosl.org, Saiyam Doshi <saiyamdoshi.in@gmail.com>,
 Magnus Damm <damm+renesas@opensource.se>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 "Javier F. Arias" <jarias.linux@gmail.com>,
 "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>,
 Simon Horman <horms+renesas@verge.net.au>, Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In a number of places in emxx_udc.c, there are variables which are
assigned to without that value ever being used. Remove these pointless
assignments.

Reported-by: kernel test robot <lkp@intel.com>
Fixes: 33aa8d45a4fe ("staging: emxx_udc: Add Emma Mobile USB Gadget driver")
Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index d0725bc8b48a..4ceaf1ead123 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -793,7 +793,7 @@ static int _nbu2ss_out_dma(struct nbu2ss_udc *udc, struct nbu2ss_req *req,
 	u32		dmacnt;
 	u32		burst = 1;
 	u32		data;
-	int		result = -EINVAL;
+	int		result;
 	struct fc_regs __iomem *preg = udc->p_regs;
 
 	if (req->dma_flag)
@@ -1288,8 +1288,6 @@ static void _nbu2ss_set_endpoint_stall(struct nbu2ss_udc *udc,
 
 			_nbu2ss_bitset(&preg->EP_REGS[num].EP_CONTROL, data);
 		} else {
-			/* Clear STALL */
-			ep->stalled = false;
 			if (ep_adrs & USB_DIR_IN) {
 				_nbu2ss_bitclr(&preg->EP_REGS[num].EP_CONTROL
 						, EPN_ISTL);
@@ -1304,6 +1302,7 @@ static void _nbu2ss_set_endpoint_stall(struct nbu2ss_udc *udc,
 						, data);
 			}
 
+			/* Clear STALL */
 			ep->stalled = false;
 			if (ep->halted) {
 				ep->halted = false;
@@ -3073,8 +3072,8 @@ static int nbu2ss_drv_contest_init(struct platform_device *pdev,
  */
 static int nbu2ss_drv_probe(struct platform_device *pdev)
 {
-	int	status = -ENODEV;
-	struct nbu2ss_udc	*udc;
+	int status;
+	struct nbu2ss_udc *udc;
 	int irq;
 	void __iomem *mmio_base;
 
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
