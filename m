Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C92434132
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jun 2019 10:09:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 26E8B87850;
	Tue,  4 Jun 2019 08:09:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sw0yRlhjU_CO; Tue,  4 Jun 2019 08:09:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 71BAB876F8;
	Tue,  4 Jun 2019 08:09:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6CE661BF4D8
 for <devel@linuxdriverproject.org>; Tue,  4 Jun 2019 08:09:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 65A46876F3
 for <devel@linuxdriverproject.org>; Tue,  4 Jun 2019 08:09:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HQwqOtwZMQkq for <devel@linuxdriverproject.org>;
 Tue,  4 Jun 2019 08:09:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 51D9D876F2
 for <devel@driverdev.osuosl.org>; Tue,  4 Jun 2019 08:09:24 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id u22so12209999pfm.3
 for <devel@driverdev.osuosl.org>; Tue, 04 Jun 2019 01:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BSMXN2q5QCRSNyxn1fdy+SG3cIkky7w3IsOPbnZEiDs=;
 b=o5A9aY1DvJ2eIYTMCsaaec9Zp6l2AcQ9/izs+xPY/XUAJNzccuGq7mBmNuAGJyqVC1
 TfogimNjJkThyZRldJK3BPgs0e3dIKM2yqbAPvqHVAyj+jZICS6n10IOpHM5dFR1Tv2K
 mkCf/keUAwMtbG5y7eqSrOXCT9ozkqMIrCUB61J93WvBgk9Tjh3nrPl+RaOwhJa/3bC3
 bLAdq25TkY0QvF9Htz5Ec2tQTew7SNL7p6o/zsuX0empew8KUZpdLhPr0EU8KwMU5CWO
 3IU83T5zry6kBGiHWQ64MvFu4bJXp7ns9pzp2t0X8wTOj4FAmmlS65sIcJNHr6yCdRDI
 BWiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BSMXN2q5QCRSNyxn1fdy+SG3cIkky7w3IsOPbnZEiDs=;
 b=YfvHAwsriXuM1AhZ0QOgP+H4B5BcFTiwdv9G1r4imZvW4DmogRGcbg53PYqEmo4NrX
 8E2YVcBvc11XXO3pdiVaV6TC0GHofDxpkEyenouwnTd7LQwP75QoU5dB4rCAcDNwoI/F
 bsOoBCoQWq9QPMgciMR50caaMDLR52vkU87ca18cvRiCHYc0M8LCZA4kqxWSTI4Iv1Ig
 vnkBFOBcvPu1WJ9FaugFCdANikavOFeWBWmK605zHeqCmpshEFJhkbXeasvN0G4gGB+Q
 VQnScP7lOg1FAHeHyc16ap7lCl+z8/fPd640Uw7be3RCVFN9zxZ+Vj43NyQlr4YtTAem
 ShoA==
X-Gm-Message-State: APjAAAU7BAUbhgdRgi0lDV84fhhwPy3wRsJGLTfPSSGUG/t4Ilnj1CQ6
 CTPmC3ziTW6pq7ZcnOtRYL0=
X-Google-Smtp-Source: APXvYqzGXzuWfZA2K9x27AWYsRbzCUBXZn0wf+Xv/ZL8ABxO0SIobJGnnWp49oDWfeT/pnjV1Pqldg==
X-Received: by 2002:a17:90a:1aa8:: with SMTP id
 p37mr35800295pjp.17.1559635763946; 
 Tue, 04 Jun 2019 01:09:23 -0700 (PDT)
Received: from localhost.localdomain ([110.227.95.145])
 by smtp.gmail.com with ESMTPSA id d13sm28959489pfh.113.2019.06.04.01.09.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 01:09:23 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8188eu: core: Remove initialisation of return
 variable
Date: Tue,  4 Jun 2019 13:39:10 +0530
Message-Id: <20190604080910.12599-1-nishkadg.linux@gmail.com>
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

Remove initialisation of return variable as it is never used.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 8f28aefbe6f9..6f3c03201f64 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -5322,7 +5322,7 @@ u8 set_tx_beacon_cmd(struct adapter *padapter)
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
-	u8 res = _SUCCESS;
+	u8 res;
 	int len_diff = 0;
 
 	ph2c = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
