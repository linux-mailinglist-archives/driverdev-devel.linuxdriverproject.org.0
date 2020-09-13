Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E52A026803A
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Sep 2020 18:25:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0741B87184;
	Sun, 13 Sep 2020 16:25:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wyvwAjRUxMWf; Sun, 13 Sep 2020 16:25:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 350938714A;
	Sun, 13 Sep 2020 16:25:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CDEC91BF59E
 for <devel@linuxdriverproject.org>; Sun, 13 Sep 2020 16:25:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CABAC87144
 for <devel@linuxdriverproject.org>; Sun, 13 Sep 2020 16:25:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8jSVkPmm4SRT for <devel@linuxdriverproject.org>;
 Sun, 13 Sep 2020 16:25:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C8B9287141
 for <devel@driverdev.osuosl.org>; Sun, 13 Sep 2020 16:25:41 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id j2so4501772eds.9
 for <devel@driverdev.osuosl.org>; Sun, 13 Sep 2020 09:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=h3zCmgxorbQQmGIZIsq6TgsZ3TNFWxay30dLGKDvyQo=;
 b=KhMFRZ9YRS4UjN4jRA/2rdCl8MKC2fzGsFZuAtLIh2rXnvVaTjwnpId4hbKagB01MR
 rcF65+LTAHOJhUH60Vkw23rrOLqAW3ZcmGSYIAZN1sx/9n4pIsltKZ13eZVVBZVxJZMY
 FLi/hBOd7DrcLzTLvJCmrXQqe0OHa7Xur//F5ojWqnmr28gS8TM+xIWo09mZoev7+OoT
 ENuhrDiUkvTIeAno2iW1Wi5OD/TglhObymR8j4wmyFDiblYJ1EU0jvFrhNyqRrYN9jLs
 KE6GSM59MyZQLjU/PF7EU63Rwzu45l8C752GDFfc31ytxpQZ30+/Ws85jeEJRroYPEy8
 LisA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=h3zCmgxorbQQmGIZIsq6TgsZ3TNFWxay30dLGKDvyQo=;
 b=XhBxUByGNgLj0D5ru+CycavvyR50XiN3/TBgCGNAV1Ct5Wyb1XqlG7o5aVhc9vWrOK
 djr9oUqQsSg96KcxNCzWBNdSDm1x9/+lVwEY+zIM9wBh8AGUwGibyIT+plAVnbyT/sIY
 1Anx+5vFXWlUHksF4QB/W8VLZkHgJjt4HptydVUQodaNPAlK7akxoiijX3fO+KWVvCTi
 2RIPq3ZHUQESey9s+gwfL4zZ7+/j9MvbMcaNk4CSAIlj3xMvAbBxolZ5mZrbpTiLJtxR
 v6p/9Ro1vUMT5aYeCSf00cedl2cApDWPxg5aeKejBOphfj4CCvVNnfG3/t7BC8zHWQ5D
 YTGA==
X-Gm-Message-State: AOAM533xWNGT7rGbOW6QNVJMVzUENpsfilsuko5VGXE5GM9TZFjBUyv/
 ZaGr6PAEbcFkBJFbzMJyApsqo+qI4sY=
X-Google-Smtp-Source: ABdhPJxNpX5Be7RNrtUkOOK5UyxwDgZBIQpgUbEbitlrdEcVOKwvw/UP8hjgSP+F2BeV4iRNRBfk8A==
X-Received: by 2002:a50:fb18:: with SMTP id d24mr13482556edq.149.1600014340198; 
 Sun, 13 Sep 2020 09:25:40 -0700 (PDT)
Received: from localhost.localdomain
 (ipservice-092-219-207-100.092.219.pools.vodafone-ip.de. [92.219.207.100])
 by smtp.gmail.com with ESMTPSA id w19sm7163505edt.22.2020.09.13.09.25.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Sep 2020 09:25:39 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: rtl8723bs: remove 5 GHz code
Date: Sun, 13 Sep 2020 18:22:06 +0200
Message-Id: <20200913162206.19477-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200913162206.19477-1-straube.linux@gmail.com>
References: <20200913162206.19477-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Acoording to the TODO code valid only for 5 GHz should be removed.

- find and remove remaining code valid only for 5 GHz. Most of the obvious
  ones have been removed, but things like channel > 14 still exist.

Remove code path only valid for channels > 14.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 .../staging/rtl8723bs/core/rtw_wlan_util.c    | 31 +++++++------------
 1 file changed, 11 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 6cb779bc9410..372ce17c3569 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1724,26 +1724,17 @@ void update_wireless_mode(struct adapter *padapter)
 	if ((pmlmeinfo->HT_info_enable) && (pmlmeinfo->HT_caps_enable))
 		pmlmeinfo->HT_enable = 1;
 
-	if (pmlmeext->cur_channel > 14) {
-		if (pmlmeinfo->VHT_enable)
-			network_type = WIRELESS_11AC;
-		else if (pmlmeinfo->HT_enable)
-			network_type = WIRELESS_11_5N;
-
-		network_type |= WIRELESS_11A;
-	} else {
-		if (pmlmeinfo->VHT_enable)
-			network_type = WIRELESS_11AC;
-		else if (pmlmeinfo->HT_enable)
-			network_type = WIRELESS_11_24N;
-
-		if (rtw_is_cckratesonly_included(rate))
-			network_type |= WIRELESS_11B;
-		else if (rtw_is_cckrates_included(rate))
-			network_type |= WIRELESS_11BG;
-		else
-			network_type |= WIRELESS_11G;
-	}
+	if (pmlmeinfo->VHT_enable)
+		network_type = WIRELESS_11AC;
+	else if (pmlmeinfo->HT_enable)
+		network_type = WIRELESS_11_24N;
+
+	if (rtw_is_cckratesonly_included(rate))
+		network_type |= WIRELESS_11B;
+	else if (rtw_is_cckrates_included(rate))
+		network_type |= WIRELESS_11BG;
+	else
+		network_type |= WIRELESS_11G;
 
 	pmlmeext->cur_wireless_mode = network_type & padapter->registrypriv.wireless_mode;
 
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
