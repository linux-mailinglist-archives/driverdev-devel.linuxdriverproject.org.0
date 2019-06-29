Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDB45AA14
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 12:20:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 48249881A0;
	Sat, 29 Jun 2019 10:20:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9f60xFQ8ICqN; Sat, 29 Jun 2019 10:20:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BC9CA87F9C;
	Sat, 29 Jun 2019 10:20:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9AD5B1BF405
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:20:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 97F3387F9C
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:20:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qrEwMauHwDpU for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 10:20:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0DEDC87FEA
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 10:20:44 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id 19so4215130pfa.4
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 03:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=JuxDh70JECXFKJRKv7MNIrxvDmNJyfZDTwgCL5FZyeM=;
 b=aEwDpIdt+k+hiRpgeN6ohD2zXTHZx5iwFL3RNV1eipQg50RjEtiHs9RN5YtjYGI+ln
 y2xuAzbrUCQ3ffKdbcMPq0dX05zdM/Ui9p4n+HQOm2mBaZqWKPxpYhufJZ5Pv2Ik7NPZ
 SuDS5nj6ENM6IaIg1/bHrRMdb2scNzC3DsvYnEqnbqUG5a4OEr608MM/ZsrQ5D1xh2nF
 xby554va50gchEf/wqEykFmL4o1hclRfeIii0DKymI9V/hx+hh8WZxrVQMX5lTCuzDCC
 xuL11tMFG+qu1+bnzgmsr2j55x+6Z+ZBDjqiVTrleIs1lgGP4aCI1gGmCOSjSLN3jbx+
 EAmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=JuxDh70JECXFKJRKv7MNIrxvDmNJyfZDTwgCL5FZyeM=;
 b=TxmxxigBLzG2/dvMHWGann7DUD210zzlwSoGars5znfPp79s/tGhtFRy+A2okDrseb
 qaxfBZn9p2EZez+jhxSpadUWZo9ZHiwTIelUUI6GpbxexoRFKjvHr3GAwNOCzwqZN4dH
 ROcrT45l5khI9ZPu+7srFdVlaeg4nDWSBXjYqneaiuEi4vpXPMdOR4xKR60LjfUy5Opq
 GjcQvWPQzIjjfZC6ycyoBUtuWGQTkZpE3EuDMf7TSGVygnaoX13UV68pUC1lFUqn2poP
 N/jsz+6j6ATOCn/C91qvZ9yTX8Vs5K+ORBk3LF2ua628Tp2XAbKrSj/pRoggKKDU/olE
 jiOQ==
X-Gm-Message-State: APjAAAVwXziTuDJjLRz6o4aOe/SGaQ09UzMPk3ak6DcIV2asLCsEqWEY
 pjQicJkDUWqNDbytfZq7Unc=
X-Google-Smtp-Source: APXvYqygsTI5Cw3FhDha3cPCG/16M/SP8PufHyL4kq3Fz6XUvcLOeNgLi8IOIlzk4QJYbyzsZ9gV9A==
X-Received: by 2002:a17:90a:9bc5:: with SMTP id
 b5mr18790987pjw.109.1561803643676; 
 Sat, 29 Jun 2019 03:20:43 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id u20sm4969600pfm.145.2019.06.29.03.20.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Jun 2019 03:20:43 -0700 (PDT)
Date: Sat, 29 Jun 2019 15:50:39 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bhanusree Pola <bhanusreemahesh@gmail.com>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 02/10] staging/rtl8723bs/hal: fix comparison to true/false is
 error prone
Message-ID: <20190629102039.GA14936@hari-Inspiron-1545>
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
 drivers/staging/rtl8723bs/hal/odm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.c b/drivers/staging/rtl8723bs/hal/odm.c
index e3f4307..dd97a6a 100644
--- a/drivers/staging/rtl8723bs/hal/odm.c
+++ b/drivers/staging/rtl8723bs/hal/odm.c
@@ -1238,7 +1238,7 @@ static void FindMinimumRSSI(struct adapter *padapter)
 	/* 1 1.Determine the minimum RSSI */
 
 	if (
-		(pDM_Odm->bLinked != true) &&
+		(!pDM_Odm->bLinked) &&
 		(pdmpriv->EntryMinUndecoratedSmoothedPWDB == 0)
 	) {
 		pdmpriv->MinUndecoratedPWDBForDM = 0;
@@ -1262,7 +1262,7 @@ void odm_RSSIMonitorCheckCE(PDM_ODM_T pDM_Odm)
 	bool FirstConnect = false;
 	pRA_T pRA_Table = &pDM_Odm->DM_RA_Table;
 
-	if (pDM_Odm->bLinked != true)
+	if (!pDM_Odm->bLinked)
 		return;
 
 	FirstConnect = (pDM_Odm->bLinked) && (pRA_Table->firstconnect == false);
@@ -1296,7 +1296,7 @@ void odm_RSSIMonitorCheckCE(PDM_ODM_T pDM_Odm)
 
 		for (i = 0; i < sta_cnt; i++) {
 			if (PWDB_rssi[i] != (0)) {
-				if (pHalData->fw_ractrl == true)/*  Report every sta's RSSI to FW */
+				if (pHalData->fw_ractrl)/*  Report every sta's RSSI to FW */
 					rtl8723b_set_rssi_cmd(Adapter, (u8 *)(&PWDB_rssi[i]));
 			}
 		}
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
