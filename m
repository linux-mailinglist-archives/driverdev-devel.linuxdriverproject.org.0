Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8568F384C8
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jun 2019 09:14:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 49E6786435;
	Fri,  7 Jun 2019 07:14:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E4omP2ZBVYkM; Fri,  7 Jun 2019 07:14:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A853186427;
	Fri,  7 Jun 2019 07:14:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E3F091BF333
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 07:14:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D4C6B8806D
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 07:14:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1q348IgEfcD6 for <devel@linuxdriverproject.org>;
 Fri,  7 Jun 2019 07:14:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6512B87EB5
 for <devel@driverdev.osuosl.org>; Fri,  7 Jun 2019 07:14:23 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id m30so147690pff.8
 for <devel@driverdev.osuosl.org>; Fri, 07 Jun 2019 00:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m1N60dkKX4zwd7lwIj/FjrRHBW5PAI5y0X7+s8TbdoI=;
 b=erQ6VR95p78CQOVGqGCFCLXBWO5wbWGX4sCqVNRoM9fhbiWAoKbLe8i2uqDyp6Wf5W
 Cn9JQlvqdVQGESR2dFUTCkvazUXSRC8F8RQVbgOsngjoqLIlTV0tlSf52HEVDLnoSwuD
 xhbO+Pbi7tTDjAbQxmIKfZWjZs5LfJ3AGsTNY+pDc1uBZyk0dJ8utPT5K9MkEo47+7G/
 iyTNNRmqAr77Q7FmHuNL8B7fujS7j9qCCU9JRwUMKzmNYaZAVxAkwOlQIaU72v5sz7oe
 nDd4T5Cp8E3XcHUiXEINRvULt7ytQCaSLpKusIKy6in52G9YYYZCNgreoyR6bwIdhqtN
 fznQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m1N60dkKX4zwd7lwIj/FjrRHBW5PAI5y0X7+s8TbdoI=;
 b=aMPKf78qi3xY0QTMBqxszImhGqsgszGEAbrP9kxHj8P4MExm2N97zMXQVnOAQLpLJL
 FMTWho/hZCZ0UJRRfEmltrKEvdGBdt4D6o1SRpWu6PvnTTBLkz9fTiFHcHht/7TH1m1/
 9NlyYtSLclDCJBsVZaSf4wOXmVX8hNbE+5UAtXFT+nuv5d+myCGO5H3f6DsedAf1zaO+
 FFyw268ui8tOJF7CVz4KblHVpjEMHVOR1Rxem2MZZajjZi48dt5Q6uu7XlEeGS1fQ0Th
 sko1NxWWGBBrEBuzyTiye5BXRihQ1bzUfbnu8VhWM8I6HWRWKQN80X+3Or7LpC7qMrfT
 omnw==
X-Gm-Message-State: APjAAAXuFMfF+9bfnQUYtsDDOBOatKMh2VVxFoDxVcH75VxR2ZPx1HFP
 ZpJic0Y6dBdHpOjUBdocVA10Pk3X
X-Google-Smtp-Source: APXvYqwEvmeB0sHfmYATkVtSMaWZwV8PvRKnzPbbwuWLbHlEJVfOBQ1Os7I7FDb6SJbdb4R06W9faw==
X-Received: by 2002:a63:4006:: with SMTP id n6mr1550975pga.424.1559891662985; 
 Fri, 07 Jun 2019 00:14:22 -0700 (PDT)
Received: from localhost.localdomain ([110.227.95.145])
 by smtp.gmail.com with ESMTPSA id f11sm4295647pjg.1.2019.06.07.00.14.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 00:14:22 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: hal: rtl8723b_cmd.c: Remove variables
Date: Fri,  7 Jun 2019 12:44:05 +0530
Message-Id: <20190607071405.28310-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove variables that are declared and initialised but never used.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index fe3891106a6d..e001d302b34c 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -674,10 +674,6 @@ static void ConstructProbeReq(struct adapter *padapter, u8 *pframe, u32 *pLength
 	u32 pktlen;
 	unsigned char *mac;
 	unsigned char bssrate[NumRates];
-	struct xmit_priv *pxmitpriv = &(padapter->xmitpriv);
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
-	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
-	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 	int bssrate_len = 0;
 	u8 bc_addr[] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
 
@@ -1288,8 +1284,6 @@ static void rtl8723b_set_FwAOACGlobalInfo_Cmd(struct adapter *padapter,  u8 grou
 static void rtl8723b_set_FwScanOffloadInfo_cmd(struct adapter *padapter, PRSVDPAGE_LOC rsvdpageloc, u8 enable)
 {
 	u8 u1H2CScanOffloadInfoParm[H2C_SCAN_OFFLOAD_CTRL_LEN] = {0};
-	u8 res = 0, count = 0;
-	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
 
 	DBG_871X("%s: loc_probe_packet:%d, loc_scan_info: %d loc_ssid_info:%d\n",
 		__func__, rsvdpageloc->LocProbePacket, rsvdpageloc->LocScanInfo, rsvdpageloc->LocSSIDInfo);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
