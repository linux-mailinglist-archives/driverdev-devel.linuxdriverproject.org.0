Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE1A2ACE58
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 05:10:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 586A987440;
	Tue, 10 Nov 2020 04:10:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0c54raw3V5nI; Tue, 10 Nov 2020 04:10:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8C214871A7;
	Tue, 10 Nov 2020 04:10:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 40FD31BF34E
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 04:10:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3CDED871B2
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 04:10:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u2jNyd5vCdNe for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 04:10:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8869C871A7
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 04:10:27 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id r9so12324778ioo.7
 for <devel@driverdev.osuosl.org>; Mon, 09 Nov 2020 20:10:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/9o/uLwXwpriyz2hEdpSoPJHB5qVBBNPqLsNjiOdgac=;
 b=oROsUTXR3irXR7CwhPLQW1q62wOvswP+8Entjgqv/4a6UQ15YA8S640S6OOpBEszT9
 tZJpIFy0D5zujqASQyPJwTmAFR7d9w0MytaBxTPao1VAdMxJuINZOb3IpRf95XuA+IgF
 /L0jezO0WmdSc4OKJLROs7Ny9h2XRhn2XwoRQPJAfh46CXlwTYwmsYe33b+hc5PijEn2
 492Is1/HFvFJBxm39sN1xPToqjsuuQ+daeII95uXXy4B+poMBIbfMMwPJCPeLK/RxEf4
 0vMFeWfD2z7l0USAjNqCZPVrbE/w/Fven1oDhkQkVQzaObxEVB9loWr6lp8aMJFJxpuU
 BSLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/9o/uLwXwpriyz2hEdpSoPJHB5qVBBNPqLsNjiOdgac=;
 b=rByKowu7aardbzDSToQMjALpE0x512A61J36rnh+Lz250pDRFExG6Po8IVGoLUKH5G
 A5gV9weKN5/6Qsn2PPT3uncI1vq/xUO1eKe3g4IxMdOuKazX+VQtgZuoIhYUi01Kud05
 dprokcm1lAkOEqGhWu7MXUrPAeflRlQ9OTQKRkD2QfdPj62uCDs03gw/1mHTUbzPIrZN
 yvcN1tK8HVpMINLkKGvhGThrO5BYMHg6QgCuSgejYImeEjBkKW9HgdwXrOdffnOUGTa0
 XPjiOqGw4O6/8g/9T2qSieMl0gFOTqAnmy8QU3UgkvOyU0bVLs3STYyzQJLVhtWRgEGg
 gH3Q==
X-Gm-Message-State: AOAM533MYOfVw1mM/1AnIUvc8IcipkMGDRBvNzJR0e1YMGWzqz+YGUoA
 paao35WenujPlbR4pLDUHIw=
X-Google-Smtp-Source: ABdhPJxoWzja8osei2u2dZqugnRf4cP/m87ScMxnueBrH5kLOnCUsAkF1sbUv9V3316DeHbHKtJe/Q==
X-Received: by 2002:a5d:9683:: with SMTP id m3mr6725781ion.192.1604981426960; 
 Mon, 09 Nov 2020 20:10:26 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id e21sm6658842ioc.0.2020.11.09.20.10.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 20:10:26 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 07/10] staging: rtl8723bs: clean up trailing statements
Date: Mon,  9 Nov 2020 22:10:05 -0600
Message-Id: <20201110041008.15847-7-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201110041008.15847-1-ross.schm.dev@gmail.com>
References: <20201110041008.15847-1-ross.schm.dev@gmail.com>
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
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Move trailing statements to the next line to fix coding style issues and
clear checkpatch errors.

ERROR: trailing statements should be on next line

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 3 ++-
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c    | 9 ++++++---
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 385705aafa5c..7676056913d8 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -2870,7 +2870,8 @@ static struct sta_info *rtw_sta_info_get_by_idx(const int idx, struct sta_priv *
 
 	/* check asoc_queue */
 	while (phead != plist) {
-		if (idx == i) psta = LIST_CONTAINOR(plist, struct sta_info, asoc_list);
+		if (idx == i)
+			psta = LIST_CONTAINOR(plist, struct sta_info, asoc_list);
 		plist = get_next(plist);
 		i++;
 	}
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 773e4816fbc4..9c00469deeab 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -3151,7 +3151,8 @@ static int rtw_dbg_port(struct net_device *dev,
 #endif
 				case 0xaa:
 					{
-						if ((extra_arg & 0x7F) > 0x3F) extra_arg = 0xFF;
+						if ((extra_arg & 0x7F) > 0x3F)
+							extra_arg = 0xFF;
 						DBG_871X("chang data rate to :0x%02x\n", extra_arg);
 						padapter->fix_rate = extra_arg;
 					}
@@ -4934,7 +4935,8 @@ static int rtw_ioctl_wext_private(struct net_device *dev, union iwreq_data *wrq_
 			count = 0;
 			do {
 				str = strsep(&ptr, delim);
-				if (NULL == str) break;
+				if (NULL == str)
+					break;
 				sscanf(str, "%i", &temp);
 				buffer[count++] = (u8)temp;
 			} while (1);
@@ -4952,7 +4954,8 @@ static int rtw_ioctl_wext_private(struct net_device *dev, union iwreq_data *wrq_
 			count = 0;
 			do {
 				str = strsep(&ptr, delim);
-				if (NULL == str) break;
+				if (NULL == str)
+					break;
 				sscanf(str, "%i", &temp);
 				((s32 *)buffer)[count++] = (s32)temp;
 			} while (1);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
