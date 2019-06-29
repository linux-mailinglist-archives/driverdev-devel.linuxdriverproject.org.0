Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F695AA22
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 12:27:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C5FB686126;
	Sat, 29 Jun 2019 10:27:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ymj4LXlkdK7; Sat, 29 Jun 2019 10:27:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8105E85DFD;
	Sat, 29 Jun 2019 10:27:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6AE021BF405
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:27:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 67AA687631
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:27:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JigTa-jwpc3x for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 10:27:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4D1FC860ED
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 10:27:27 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id p184so4206365pfp.7
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 03:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ufreqsCqUEbtwakQjfPG4/XQRKe+4sPPeMiA/RmTprM=;
 b=cKdmZG2fv2FHyq/gn/WOY2fDnZNUuTcUVfnB4nLqEAMAuWtVkSOgN0EBoQFxbmI2sC
 kLg51yMJLQdyZoqoQJLsLVglMD8dhONK+dIblCpriafBpJAN3lDXcHADZsw6rXN1cIOV
 tJJi6JKUh4ybqBp8oi2KqNO4EyxOOB6aSRWsX7p9l6kqGVjz5+FjYCcUC9y0gwPM1JhE
 GrEISObJScRohTISa26+gFXHGtL4m8XVNm9sqtHvJH8gNU0bKCu7oomgNIeZjUDmMsjS
 cAHQUQMOxe4t8kJ+ZpPwTC+0hngYLr1hIlylIssQRwK7wpBMonPTgbhNija94oDUK/ST
 x71w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ufreqsCqUEbtwakQjfPG4/XQRKe+4sPPeMiA/RmTprM=;
 b=J1pDR6l2R7DqDzbeMqJMWYldj1G+XIhttRmtBWMBP3kISYa6Vv7iAPGtPnJhlAjTx9
 FXLsvEPRYncr2yBGCNQg8Qxd7ov9xq2oqZzKcpQwLomUI8Bp0PCPRkHr46X02Ui8PjQQ
 y3YYbEp7ctgxoDH4mKlDpw3CNyB0l4K4SWa9yDiB6PE25IbwLIjI8/mnDqOT2rPkWZHa
 F+ugGEEsXZoIVve3W4mxtBl1i6V2NOTkAQobE1DKpTpNayAi8fkoGF7HmbVuz2DopySy
 BhgO3oxBNIvDkGaS359PFLnbC8ag+NUmL9xVmN9OgmJXCL9nSlaTwJL4hbxm9UdykcTc
 3JGA==
X-Gm-Message-State: APjAAAVsSO/zHTyfpUGzsvg4PZfJn8PDP2Gv288dVklFlemsGKiTBK+F
 rDuddOxdNXbutuq588Aol2896AcN
X-Google-Smtp-Source: APXvYqwaG/2Dn1EssqX0/2D6nzUNtjJIVIVQ/SdduLespqMNDIkEbPkRWjTzg5DrjWSFmxl9BTJqTA==
X-Received: by 2002:a63:231c:: with SMTP id j28mr13633480pgj.430.1561804046903; 
 Sat, 29 Jun 2019 03:27:26 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id b29sm11633100pfr.159.2019.06.29.03.27.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Jun 2019 03:27:26 -0700 (PDT)
Date: Sat, 29 Jun 2019 15:57:22 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 07/10] staging/rtl8723bs/hal: fix comparison to true/false is
 error prone
Message-ID: <20190629102722.GA15300@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

fix below issues reported by checkpatch

CHECK: Using comparison to false is error prone
CHECK: Using comparison to true is error prone

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_CfoTracking.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
index a733046..7883b26 100644
--- a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
+++ b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
@@ -221,7 +221,7 @@ void ODM_CfoTracking(void *pDM_VOID)
 		pCfoTrack->CFO_ave_pre = CFO_ave;
 
 		/* 4 1.4 Dynamic Xtal threshold */
-		if (pCfoTrack->bAdjust == false) {
+		if (!pCfoTrack->bAdjust) {
 			if (CFO_ave > CFO_TH_XTAL_HIGH || CFO_ave < (-CFO_TH_XTAL_HIGH))
 				pCfoTrack->bAdjust = true;
 		} else {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
