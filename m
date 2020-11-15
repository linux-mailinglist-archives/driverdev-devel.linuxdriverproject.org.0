Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C6F2B34CF
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Nov 2020 13:13:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0E1AA20419;
	Sun, 15 Nov 2020 12:13:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UTy5YcrySoYk; Sun, 15 Nov 2020 12:13:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 79B6E203B4;
	Sun, 15 Nov 2020 12:13:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 13D301BF3BE
 for <devel@linuxdriverproject.org>; Sun, 15 Nov 2020 12:13:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 08A29871C7
 for <devel@linuxdriverproject.org>; Sun, 15 Nov 2020 12:13:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VLey7c-yheTL for <devel@linuxdriverproject.org>;
 Sun, 15 Nov 2020 12:13:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 980A9859BD
 for <devel@driverdev.osuosl.org>; Sun, 15 Nov 2020 12:13:27 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id 131so415066pfb.9
 for <devel@driverdev.osuosl.org>; Sun, 15 Nov 2020 04:13:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=5dZPl7jXnSFSYbfTyaVyvZNj6EIinzWYJTxmMOjfqKI=;
 b=AmjbtqgWmKKCvYlY5nlZsx3YB7DVAURWQ6z7fq9CrG29/TKoN6e09hCexb/cdRqUf4
 Up5zP7BtG2S9GL4M5cSNlSkyvmxEyVJkS5zo1difzwlV6jJ/2ncgFG1fP4K1FzliJDbG
 wI3AZMc1Qr1PzobQ8QXzXYUJJrExfU5tzDUSM9/3hZmBFwsVG2988YtafPCXMgsZQHzc
 YSZ12ay2lnsrWNXKuNmAko7s+IQ83XID5cgpUWvNN1RU4iuwPbjg8M09c5Fk2GP0Jfio
 AG1pNCf8TuDiNqilNGSpI5NkBBMcF6PAGddsRgv/cq33OuiWA/Q2QP/o0Hb3u6cX0NwP
 QMrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5dZPl7jXnSFSYbfTyaVyvZNj6EIinzWYJTxmMOjfqKI=;
 b=F0l3BxyUee9J8KdG+jYIJsh57wsOYjxrCqNJQl/zaM92a/DzuAT0Fl7wEoKfsAQnU4
 xBBt11IAIsYZLpibHCiIJaGcLPMpt9QQuBS/SQEWHyRYl0FR+Gs4Y8OWZuivkVZejapb
 YVvYOmFWRItcbYOUxa3/dlx86Evh+IYUNh/Gc/Ud5Yz/89pJyPDDn2F8t6RrhnDnC1Qf
 EgjHbZ0E2+KygmQA14w4R82CzmGnFQTOrdZE6Xhpf0KDCq1BylbE4PMSI30u1HDXsENF
 AfVBXwDkEUihzNKie0adF8gavXBdiau0k7KATKhGanEGsO8hDxjxNeDHCH2pIyVSV0NO
 y2xA==
X-Gm-Message-State: AOAM530yrvc5KGGzbWV+pPL4PC4XtCHD3nN6nHfVMbXns3JHml1kIeNL
 DQgMRT9cA8wM0E70OXsBdg==
X-Google-Smtp-Source: ABdhPJzrrP74in/fbuKbtE4HOXgwOnLrAKZjDfD/+Glyj10kaybl4dedO5OByyKX2fKJv8yk1QE86g==
X-Received: by 2002:a62:d11b:0:b029:18b:b3e:95aa with SMTP id
 z27-20020a62d11b0000b029018b0b3e95aamr9781427pfg.3.1605442407242; 
 Sun, 15 Nov 2020 04:13:27 -0800 (PST)
Received: from he-cluster.localdomain (67.216.221.250.16clouds.com.
 [67.216.221.250])
 by smtp.gmail.com with ESMTPSA id h8sm991456pjc.54.2020.11.15.04.13.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 15 Nov 2020 04:13:25 -0800 (PST)
From: xiakaixu1987@gmail.com
X-Google-Original-From: kaixuxia@tencent.com
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, shreeya.patel23498@gmail.com
Subject: [PATCH] staging: rtl8188eu: clean up the useless code
Date: Sun, 15 Nov 2020 20:13:20 +0800
Message-Id: <1605442400-16108-1-git-send-email-kaixuxia@tencent.com>
X-Mailer: git-send-email 1.8.3.1
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
Cc: devel@driverdev.osuosl.org, Kaixu Xia <kaixuxia@tencent.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Kaixu Xia <kaixuxia@tencent.com>

The two bool variables singletone and carrier_sup are always false
and the following if statement can't be true, these code are useless,
so remove them.

Reported-by: Tosk Robot <tencent_os_robot@tencent.com>
Signed-off-by: Kaixu Xia <kaixuxia@tencent.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index a970189ba8c6..a664bff370bb 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -1200,7 +1200,6 @@ void rtl88eu_phy_iq_calibrate(struct adapter *adapt, bool recovery)
 	bool pathaok, pathbok;
 	s32 reg_e94, reg_e9c, reg_ea4, reg_eb4, reg_ebc, reg_ec4;
 	bool is12simular, is13simular, is23simular;
-	bool singletone = false, carrier_sup = false;
 	u32 iqk_bb_reg_92c[IQK_BB_REG_NUM] = {
 		rOFDM0_XARxIQImbalance, rOFDM0_XBRxIQImbalance,
 		rOFDM0_ECCAThreshold, rOFDM0_AGCRSSITable,
@@ -1214,9 +1213,6 @@ void rtl88eu_phy_iq_calibrate(struct adapter *adapt, bool recovery)
 	if (!(dm_odm->SupportAbility & ODM_RF_CALIBRATION))
 		return;
 
-	if (singletone || carrier_sup)
-		return;
-
 	if (recovery) {
 		ODM_RT_TRACE(dm_odm, ODM_COMP_INIT, ODM_DBG_LOUD,
 			     ("phy_iq_calibrate: Return due to recovery!\n"));
@@ -1312,14 +1308,11 @@ void rtl88eu_phy_iq_calibrate(struct adapter *adapt, bool recovery)
 
 void rtl88eu_phy_lc_calibrate(struct adapter *adapt)
 {
-	bool singletone = false, carrier_sup = false;
 	u32 timeout = 2000, timecount = 0;
 	struct odm_dm_struct *dm_odm = &adapt->HalData->odmpriv;
 
 	if (!(dm_odm->SupportAbility & ODM_RF_CALIBRATION))
 		return;
-	if (singletone || carrier_sup)
-		return;
 
 	while (*dm_odm->pbScanInProcess && timecount < timeout) {
 		mdelay(50);
-- 
2.20.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
