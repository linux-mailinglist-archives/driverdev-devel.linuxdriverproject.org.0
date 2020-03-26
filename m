Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FE2193B3E
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Mar 2020 09:45:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C588D87070;
	Thu, 26 Mar 2020 08:45:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YAHIrDPGM-3O; Thu, 26 Mar 2020 08:45:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2EDE887029;
	Thu, 26 Mar 2020 08:45:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 592231BF380
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 08:45:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 537C388026
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 08:45:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FM3e4PjO+fKx for <devel@linuxdriverproject.org>;
 Thu, 26 Mar 2020 08:45:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9002988055
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 08:45:19 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id u10so6644678wro.7
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 01:45:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FtuFDgZ0vqDMcROewVgWRuk00REi/YD6SlgN8SN6u8c=;
 b=pmDvDqxzRcqHOg7IGXHP1JfirFjHaIj0rpzNdTljlxhF9QctKmdMnC8bFfETZA7Qpa
 An2IhPebf0b6I6ChrGrJxBGni3Wbf6geiB5Pp7jcpkE1pCzvrr1ISmI8oOYp38otlqsd
 TrRp2xdJhgGGIzbttrqrBCpGHNYQgmxZHj4f3qk5Y/xUQuTTtJtqgeK4X+2Wr2uI1s53
 eKUutdBd5cyx/JXQ3YJxkAqPqTTBq9frxjuiRyEDngtTO2iOHbWLjpI7+wIJj23IwuVw
 VnLWFiSJITXH4FW4DaMqgBRRyQRGUZ/Y9vs59pMWoUPFLFioU+xo5LxAnGR6GW+QuJhc
 zCZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FtuFDgZ0vqDMcROewVgWRuk00REi/YD6SlgN8SN6u8c=;
 b=njefjT3mE2mhxW8kWjDlTAzbRhqzg5taRuxlJbGwqYAyfeD3hPmJtTrM64xEResAJ+
 nno0dYKl7uaVwrGcGCxt23fFylzMis90jnasJG/JJa+fDeqS9McHi+Io+ghjHlvVew1R
 WgfhSwD70FHdHGj9OBr57qoGlelxVTIkSKwyQlyOuCCjwpnsk8zw1ij14sWGULn1jUTG
 VuD31ehxbqv6TtxUR1cPTdhq7ZoZs0OrAAHaAr0uivRTIhh2QfoXUY4EztEM6pki7Yqu
 1+Vq5LfzCPXv1E+kfLN1In7fDa9m1LGEri0LLWyWfh/zHN9jpvXeTHpzdwAT0BQplOgr
 x4dA==
X-Gm-Message-State: ANhLgQ0Gu0Vtc6+GwKdCEv9z1NRWINQhzFzR8HuKfUEnn1jIhyut2U8H
 saC6JVRPO28dkryIRCwiTZE=
X-Google-Smtp-Source: ADFU+vuvM719ihlCXp1dFMBWr//VJetOFXISXzO7ZRXfA17cX8YOcabxYBQeF5ZvMY2a891dp47E+w==
X-Received: by 2002:a05:6000:11c2:: with SMTP id
 i2mr8580890wrx.210.1585212317665; 
 Thu, 26 Mar 2020 01:45:17 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-002-204-140-180.002.204.pools.vodafone-ip.de. [2.204.140.180])
 by smtp.gmail.com with ESMTPSA id d13sm2595774wrv.34.2020.03.26.01.45.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 01:45:17 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: rtl8188eu: cleanup long line in odm.c
Date: Thu, 26 Mar 2020 09:43:48 +0100
Message-Id: <20200326084348.15072-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleanup line over 80 characters by removing unnecessary test
'pDM_Odm->RSSI_Min <= 25'. The above test 'pDM_Odm->RSSI_Min > 25'
already guarantees that it is <= 25.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
v1 -> v2: Remove 'pDM_Odm->RSSI_Min <= 25' test.

 drivers/staging/rtl8188eu/hal/odm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/odm.c b/drivers/staging/rtl8188eu/hal/odm.c
index a6eb9798b6f8..698377ea60ee 100644
--- a/drivers/staging/rtl8188eu/hal/odm.c
+++ b/drivers/staging/rtl8188eu/hal/odm.c
@@ -590,7 +590,7 @@ void odm_CCKPacketDetectionThresh(struct odm_dm_struct *pDM_Odm)
 	if (pDM_Odm->bLinked) {
 		if (pDM_Odm->RSSI_Min > 25) {
 			CurCCK_CCAThres = 0xcd;
-		} else if ((pDM_Odm->RSSI_Min <= 25) && (pDM_Odm->RSSI_Min > 10)) {
+		} else if (pDM_Odm->RSSI_Min > 10) {
 			CurCCK_CCAThres = 0x83;
 		} else {
 			if (FalseAlmCnt->Cnt_Cck_fail > 1000)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
