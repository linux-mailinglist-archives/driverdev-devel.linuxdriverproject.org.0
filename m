Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 276F913FAD
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 May 2019 15:23:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 54FA323337;
	Sun,  5 May 2019 13:23:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q2iFjpFO4ARN; Sun,  5 May 2019 13:23:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 363B22287D;
	Sun,  5 May 2019 13:23:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4D4E51BF3B8
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 13:23:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4A8E4226A2
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 13:23:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SGQTf4iScBEh for <devel@linuxdriverproject.org>;
 Sun,  5 May 2019 13:23:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 9C61122658
 for <devel@driverdev.osuosl.org>; Sun,  5 May 2019 13:23:12 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id c6so92647pfa.10
 for <devel@driverdev.osuosl.org>; Sun, 05 May 2019 06:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=UQqO8W5D4CT+ksezNayfRuTwaSX+rCT5sHrxvCqimbQ=;
 b=ErIf4xe5fYpYMe9INM/qc3CEZIKoHTj2S6l6oBe8RS67eQBWDRYdt4hEmdCw8t0sjw
 5/YpbgsP41BrjdBgFBp1Rj59pK35ihXEg+8rlc4bmDXvxmDjwtsMmRPwpJ7HPxiBX7ME
 o9xfWE+s8WnAVUK7xTRq+H3vK+xcRH5DyJnMncw5gzlbz/WoBc8i3N9ueniTl2tiLz+E
 YK2hz41eW+XLFltiOtDNUFdM+IvHYGxkoyTdYZW1gss48sqzrD+wSRTpyoOQb1SoA0WD
 Y7QUnk1OJjTGoI5T3E5QiA4mq7LQ4i3U9yPZnmfkpuytGIOy74QepzjiDJzE7xP/e9ag
 QouA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=UQqO8W5D4CT+ksezNayfRuTwaSX+rCT5sHrxvCqimbQ=;
 b=Zva86CYxhVRZU8dANQWqLak4wxeQcLdnp33eLzSO4FDN5A7Et+bV97kmOiuD5ykrGg
 B9gMUAp4Gl2UqPodb9Q5fBnjSaf69vFzPRJ5DxpzdkWBsrA0KO9+ld88+P2benMPSelj
 dejk2mPMasE2YoO1g8hq4wfk1UsyFOSRRSmAR5ykC1oesdOVKA8fVU7pZ8YOViiqMz45
 NmH99FyGqRe4Cz3mCw7nR98M6c0iAb3eZLMM5P+XW1JFcVbvV190CwpUBdOW7spbZm6/
 DpyYT8tYl1hoX1uEoqq2icEwYmBUqHaiDydX9gE8L+yLl/j44GMlRP9YY+PvpZBQSZhN
 ujLg==
X-Gm-Message-State: APjAAAVQlYazLSUj+2DEz+P4sngV0m2ZS4guXEkMDm8MRUNqFKqrTIJx
 8447intpPkD246Q2b56f2SPsM0tX
X-Google-Smtp-Source: APXvYqxVvYTOatU5SYFHrVIYPqWoVVEyDux3Fe5NTaerGxjib46XgBej05B7sQf8FaoM8/jz0YdViQ==
X-Received: by 2002:aa7:8d98:: with SMTP id i24mr26015539pfr.8.1557062592276; 
 Sun, 05 May 2019 06:23:12 -0700 (PDT)
Received: from localhost.localdomain ([103.87.56.229])
 by smtp.gmail.com with ESMTPSA id a26sm10312709pfl.177.2019.05.05.06.23.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 May 2019 06:23:11 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 6/6] staging: rtl8723bs: core: Move logical operator to
 previous line.
Date: Sun,  5 May 2019 18:52:53 +0530
Message-Id: <20190505132253.4516-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, julia.lawall@lip6.fr,
 linux-kernel@vger.kernel.org, hdegoede@redhat.com, hadess@hadess.net,
 Vatsala Narang <vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Move logical operator to previous line to get rid of checkpatch warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 0b5bd047a552..b5e355de1199 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -5656,9 +5656,9 @@ static u8 chk_ap_is_alive(struct adapter *padapter, struct sta_info *psta)
 	);
 	#endif
 
-	if ((sta_rx_data_pkts(psta) == sta_last_rx_data_pkts(psta))
-		&& sta_rx_beacon_pkts(psta) == sta_last_rx_beacon_pkts(psta)
-		&& sta_rx_probersp_pkts(psta) == sta_last_rx_probersp_pkts(psta)
+	if ((sta_rx_data_pkts(psta) == sta_last_rx_data_pkts(psta)) &&
+	    sta_rx_beacon_pkts(psta) == sta_last_rx_beacon_pkts(psta) &&
+	     sta_rx_probersp_pkts(psta) == sta_last_rx_probersp_pkts(psta)
 	) {
 		ret = false;
 	} else {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
