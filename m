Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3022B20B4C7
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 17:37:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DDDF888726;
	Fri, 26 Jun 2020 15:37:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qFArtsE0TEbp; Fri, 26 Jun 2020 15:37:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E7AF88427;
	Fri, 26 Jun 2020 15:37:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B29E51BF295
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 15:37:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AE1B18601E
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 15:37:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mKcLJqT2aGSC for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 15:37:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com
 [209.85.219.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0A9D284DDC
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 15:37:48 +0000 (UTC)
Received: by mail-qv1-f65.google.com with SMTP id g11so4683209qvs.2
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 08:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OPSNsR3EOIFVWGXNCRzLROUQIZEmtZcUpU/rvcMJfzQ=;
 b=RyAO/OAWnxDcBcMg3o+SzNFzw0pQO5CARemsH79PlOlCMchDPEjihKT4whLrXSufcH
 k0nbF7dc79rmEEhJnR2Nkx3+Cl3GbW62D7aKxYh+vIdqBzgiGhbRpjLnxP0fKUY/Ofca
 fGLTFCiS13+0SsrcrRTqia9XE/84OMKwF8km0UcR6vTCsLc0cMmrVvdMOD0KGXxYcW2t
 9YHQdniME/NuMQBRAx4nNyY7SnaXvKgrzI2fQOY5Yejpy7joBYumS3eGFPv77sQEHVGR
 5DBZcHv6goHINFTe/q/A8my5HDzJ3hR7EY9jArYjuZlayvATn9j3VaLbZ90G0ZtGkiis
 oLCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OPSNsR3EOIFVWGXNCRzLROUQIZEmtZcUpU/rvcMJfzQ=;
 b=TdwZU2BrA+iBUUcpK7rXa1aUwhj5AFWDFFh1doIY82jMeF4Om+Pu6MtXdXNWzQAsmc
 XoFAfA3LQFfpQ/0i6hgq1jtlDoUAhATEFye7NWHeTjjrUkJXWus+uJihyQqaRDft8jwK
 ix42njA919qwa8imUBOHLTkG0+ZZQw+QIBPdDiikNJ2wFMOahLDVy+rB6UCEvHtKGXHO
 xNsJFcPx5u8dgKHb1zMHL9wfDx1GPLFMWRyhefZhbqMT1psSuLajSaMfIAHpS/zcvn6F
 r0a/LG+wQa29P41K6U6fZ2Tlih8nwZa4J16e8MEfHJ6oomx41RpjaPK7WNWl6stclO2g
 2zow==
X-Gm-Message-State: AOAM530E04gbehbJmkBuM4/Oqsd0KYmnKgadisp2O+RMXL3ppiC2MnAA
 HvAhOeIVZ3RNsjZ//FQEaEM=
X-Google-Smtp-Source: ABdhPJw65YClvhV1Pv4cS7AotaqwRxuOlsyG5XSPm8R1eZtUhBUHVXQ5LHaHzftWT3LiWNMfNa49fA==
X-Received: by 2002:ad4:57b2:: with SMTP id g18mr3658374qvx.207.1593185866967; 
 Fri, 26 Jun 2020 08:37:46 -0700 (PDT)
Received: from mooncell.myfiosgateway.com
 (pool-173-75-208-99.phlapa.fios.verizon.net. [173.75.208.99])
 by smtp.gmail.com with ESMTPSA id y40sm9719918qtc.29.2020.06.26.08.37.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jun 2020 08:37:46 -0700 (PDT)
From: Brooke Basile <brookebasile@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, colin.king@canonical.com
Subject: [PATCH 3/4] staging: rtl8188eu: Fix indentation
Date: Fri, 26 Jun 2020 11:36:40 -0400
Message-Id: <20200626153639.8097-3-brookebasile@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200626153639.8097-2-brookebasile@gmail.com>
References: <20200626153639.8097-1-brookebasile@gmail.com>
 <20200626153639.8097-2-brookebasile@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Brooke Basile <brookebasile@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the following checkpatch warning:
	WARNING: suspect code indent for conditional statements (16, 32)

Signed-off-by: Brooke Basile <brookebasile@gmail.com>
---
 .../staging/rtl8188eu/core/rtw_ieee80211.c    | 30 +++++++++----------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
index 44a25d29f1d3..bf6b2fe9735f 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
@@ -494,23 +494,23 @@ void rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie
 		authmode = in_ie[cnt];
 
 		if ((authmode == _WPA_IE_ID_) && (!memcmp(&in_ie[cnt + 2], &wpa_oui[0], 4))) {
-				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
-					 ("\n rtw_get_wpa_ie: sec_idx =%d in_ie[cnt+1]+2 =%d\n",
-					 sec_idx, in_ie[cnt + 1] + 2));
-
-				if (wpa_ie) {
-					memcpy(wpa_ie, &in_ie[cnt], in_ie[cnt + 1] + 2);
-
-					for (i = 0; i < (in_ie[cnt + 1] + 2); i += 8) {
-						RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
-							 ("\n %2x,%2x,%2x,%2x,%2x,%2x,%2x,%2x\n",
-							 wpa_ie[i], wpa_ie[i + 1], wpa_ie[i + 2], wpa_ie[i + 3], wpa_ie[i + 4],
-							 wpa_ie[i + 5], wpa_ie[i + 6], wpa_ie[i + 7]));
-					}
+			RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
+				 ("\n rtw_get_wpa_ie: sec_idx =%d in_ie[cnt+1]+2 =%d\n",
+				 sec_idx, in_ie[cnt + 1] + 2));
+
+			if (wpa_ie) {
+				memcpy(wpa_ie, &in_ie[cnt], in_ie[cnt + 1] + 2);
+
+				for (i = 0; i < (in_ie[cnt + 1] + 2); i += 8) {
+					RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
+						 ("\n %2x,%2x,%2x,%2x,%2x,%2x,%2x,%2x\n",
+						 wpa_ie[i], wpa_ie[i + 1], wpa_ie[i + 2], wpa_ie[i + 3], wpa_ie[i + 4],
+						 wpa_ie[i + 5], wpa_ie[i + 6], wpa_ie[i + 7]));
 				}
+			}
 
-				*wpa_len = in_ie[cnt + 1] + 2;
-				cnt += in_ie[cnt + 1] + 2;  /* get next */
+			*wpa_len = in_ie[cnt + 1] + 2;
+			cnt += in_ie[cnt + 1] + 2;  /* get next */
 		} else {
 			if (authmode == _WPA2_IE_ID_) {
 				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
