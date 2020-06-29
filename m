Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C339820D070
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 19:37:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7C3D5892A6;
	Mon, 29 Jun 2020 17:37:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pc+6fIQIpEO3; Mon, 29 Jun 2020 17:37:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1097788934;
	Mon, 29 Jun 2020 17:37:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 270411BF34C
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 17:37:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2320288735
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 17:37:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8DUwFCo85nWL for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 17:37:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5961486354
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 17:37:24 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id r22so15978890qke.13
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 10:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gX63ojcBTGYgpVQDnPBqhrIrSpeuTImvwcad9Nat98g=;
 b=a+Nlvf8b0GAArIMrvHg0EqEamnQp9ja+U/Uaeg7YODf1sy6MdhXEIbIC32Z9sDUOi1
 n0YTthCuO1TCQA9Gzu9gdMfESJL1GeRhxHUT5p3EQI87TVgx1NNb13ujax0hp50ZogcJ
 aF7GNAKqkDl24FtYhc1YG1eiDGxe/idMS4E9EP3/SB84Y5mO2I5eNGd+tzlL9pJroJfe
 udmz34RIobKyserhWvMPiFQwaQxXynM9r2sJ0ecK2CcGyL5m3mtv3P35aXs4rPoKs0cb
 ajDa4SmE0yv8vLaOdd76VlRleFAgNw48fp+Nj4vHQ4VJJQKY/gRToo7RdOUsg5NMN62E
 O3qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gX63ojcBTGYgpVQDnPBqhrIrSpeuTImvwcad9Nat98g=;
 b=OTMl/CHNiOgN87duOcyiN1YRxBZ7YdYSUbAP5ui/1X39GY1EGEiFU618LPXipLNqkG
 m/klsTMnX2yoD8QlHBeWSnEUdFpKSpz7+QfXn3wBpvCIFIJV48gVHq4HbXgjNvs1IT8X
 c1M48/iW17ZOPeB+M/P9NLCrTYgHLZ+ed25i0tQaklEku6xe3kKtMs5JS+Efhon4vAgr
 zF9oEqAwrBvVG4gxV8cIiPc4YU+c4dti2+IsF4XoaIT/vg+BwVN6Pwwae+zJR3OeG+Fb
 4OD6slhDA2wDgGc490ErcmG2YZKYq8MrofsvKjPihdRn9uOvmZIYpDC5sA2Htj8CB0T+
 RpBQ==
X-Gm-Message-State: AOAM532GkJqtsbtCNBllZm8xiaO8aU2rZHie4jEWcISQayUmDI41/Mn4
 00ud/lEsFnyKANxNVYGcihg=
X-Google-Smtp-Source: ABdhPJx+LIz0P/8LenwLfgW7Ca7V5ftnp3ugGg/IPNoNTAFicH4tYhzrZM00ANPF8tSjhiRWFCtTWw==
X-Received: by 2002:a05:620a:2051:: with SMTP id
 d17mr16203522qka.237.1593452243400; 
 Mon, 29 Jun 2020 10:37:23 -0700 (PDT)
Received: from mooncell.myfiosgateway.com
 (pool-173-75-208-99.phlapa.fios.verizon.net. [173.75.208.99])
 by smtp.gmail.com with ESMTPSA id s46sm355282qts.85.2020.06.29.10.37.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 10:37:22 -0700 (PDT)
From: Brooke Basile <brookebasile@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, yepeilin.cs@gmail.com, colin.king@canonical.com
Subject: [PATCH v2] staging: rtl8188eu: Replace function name with __func__
Date: Mon, 29 Jun 2020 13:37:11 -0400
Message-Id: <20200629173711.5158-1-brookebasile@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Brooke Basile <brookebasile@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the following checkpatch warning:
	WARNING: Prefer using '"%s...", __func__' to using 'rtw_get_bcn_info', this function's name, in a string

Signed-off-by: Brooke Basile <brookebasile@gmail.com>
---
Changes in v2:
	- This should fix the previous issue that caused the patch to
	  fail to apply. 

 drivers/staging/rtl8188eu/core/rtw_ieee80211.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
index 3316059238e0..b80273611fb8 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
@@ -987,10 +987,10 @@ void rtw_get_bcn_info(struct wlan_network *pnetwork)
 		if (bencrypt)
 			pnetwork->BcnInfo.encryp_protocol = ENCRYP_PROTOCOL_WEP;
 	}
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: pnetwork->encryp_protocol is %x\n",
-						       pnetwork->BcnInfo.encryp_protocol));
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: pnetwork->encryp_protocol is %x\n",
-						       pnetwork->BcnInfo.encryp_protocol));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s: pnetwork->encryp_protocol is %x\n",
+							__func__, pnetwork->BcnInfo.encryp_protocol));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s: pnetwork->encryp_protocol is %x\n",
+							__func__, pnetwork->BcnInfo.encryp_protocol));
 	rtw_get_cipher_info(pnetwork);
 
 	/* get bwmode and ch_offset */
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
