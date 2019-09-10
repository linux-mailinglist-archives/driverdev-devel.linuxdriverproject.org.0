Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E697AAF0FD
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Sep 2019 20:24:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 37C2521563;
	Tue, 10 Sep 2019 18:24:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EZS2fn3PTqeZ; Tue, 10 Sep 2019 18:24:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 10C5D2202C;
	Tue, 10 Sep 2019 18:24:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B1BC81BF294
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 18:24:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BBF7E875A7
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 18:24:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uWy0NtsLDl4G for <devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 18:24:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 400F186D92
 for <devel@driverdev.osuosl.org>; Tue, 10 Sep 2019 18:24:22 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id u17so10154603pgi.6
 for <devel@driverdev.osuosl.org>; Tue, 10 Sep 2019 11:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=0I346vx91sUiAeUkNi54oztkGxRJ6TRG5+oqyFk02bY=;
 b=Tek+1ZjhvQoukKmunz9oWSi7ehimuA5KNE4USUlNH47zOHVd7hK0lshi8vdBQQkbft
 Y+iykjcmDFByvT0DrQj25tk3pbgmrZ1AcmvSU8+8z2lSWZLPwQWvSuVxWC21ApMyga2A
 yG+q1sDyeQ6DN+YIJUtFgFBoE3iV+h8EvN++Y3O+9vAiayxcmUZwiloMHp0ijIqcaF0r
 Hy1BK9ziX1IvLaq7/XZ5KN9NmyX+QBXkuIlC665PpUyuLLdIVS8LHHvCVe9DEuNUxJtE
 UuW59djanWpWgRWGAdhnyGGGyTKYYvRDzhuPP6gynSHQZGjd208Vs/hTeflWpKMNYWt/
 nv8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=0I346vx91sUiAeUkNi54oztkGxRJ6TRG5+oqyFk02bY=;
 b=uN1XgxsJkVVmeKuacISy84Gb72c7ZSeJRIQuA1huVASQRnmy3GBQM+AqIO520T/itp
 LaNrqFyvVpiXY2n775Mp1HiUOwVy/WNSgXBGuMHQKM6DTOnlOjazrlwomDD0hB9dwFOI
 mQKJBt6SxKF+xD/ZHRnRqtzcQVDXbIvCSQWDsMWHe2sYgQGb+N2g6xNJEofTZJ7P/P3m
 i6n+m5EoBcWVgWfYQW/7ZEF/D8pd5sFk2Pjc83tBvQx2i8Vxpv9wkGkUjCG8MHrgcwwh
 v/aKBy6jNBpxMOpc+u9tnsS8F5uq9JDQ/ISdpNIQoLz1VVgP5U2YUCA6wZ9/48Cs5nwX
 Xkog==
X-Gm-Message-State: APjAAAU7NzO57BUs6ho68D9OC6azXBcdU9lKHrZrCQOpDMwWxFcOH/FU
 URwR/oBxV73U/aIXVgn3/e0=
X-Google-Smtp-Source: APXvYqxa8LiqtCxiVtBgng/u1HVtbAH6tYazztOwvGiOc/JeuqbxpUEnR4B5jfyPSEnwhlrgw3VhAw==
X-Received: by 2002:a17:90a:1c01:: with SMTP id s1mr930789pjs.76.1568139861681; 
 Tue, 10 Sep 2019 11:24:21 -0700 (PDT)
Received: from SARKAR ([1.186.12.73])
 by smtp.gmail.com with ESMTPSA id u1sm14384025pgi.28.2019.09.10.11.24.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2019 11:24:21 -0700 (PDT)
Date: Tue, 10 Sep 2019 23:54:15 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: gregkh@linuxfoundation.org, johnfwhitmore@gmail.com,
 devel@driverdev.osuosl.org
Subject: [PATCH] staging: rtl8192u: ieee80211: Replace snprintf with scnprintf
Message-ID: <20190910182415.GA5768@SARKAR>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When the number of bytes to be printed exceeds the limit snprintf
returns the number of bytes that would have been printed (if there was
no truncation). This might cause issues, hence use scnprintf which
returns the actual number of bytes printed to buffer always.

Signed-off-by: Rohit Sarkar <rohitsarkar5398@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 4 ++--
 drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 0a3e478fccd6..b0a78508f378 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -1647,7 +1647,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 			for (i = 0; i < network->rates_len; i++) {
 				network->rates[i] = info_element->data[i];
 #ifdef CONFIG_IEEE80211_DEBUG
-				p += snprintf(p, sizeof(rates_str) -
+				p += scnprintf(p, sizeof(rates_str) -
 					      (p - rates_str), "%02X ",
 					      network->rates[i]);
 #endif
@@ -1674,7 +1674,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 			for (i = 0; i < network->rates_ex_len; i++) {
 				network->rates_ex[i] = info_element->data[i];
 #ifdef CONFIG_IEEE80211_DEBUG
-				p += snprintf(p, sizeof(rates_str) -
+				p += scnprintf(p, sizeof(rates_str) -
 					      (p - rates_str), "%02X ",
 					      network->rates_ex[i]);
 #endif
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
index be08cd1d37a7..8f378ba0e62a 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
@@ -109,7 +109,7 @@ static inline char *rtl819x_translate_scan(struct ieee80211_device *ieee,
 	/* Add basic and extended rates */
 	max_rate = 0;
 	p = custom;
-	p += snprintf(p, MAX_CUSTOM_LEN - (p - custom), " Rates (Mb/s): ");
+	p += scnprintf(p, MAX_CUSTOM_LEN - (p - custom), " Rates (Mb/s): ");
 	for (i = 0, j = 0; i < network->rates_len; ) {
 		if (j < network->rates_ex_len &&
 		    ((network->rates_ex[j] & 0x7F) <
@@ -119,12 +119,12 @@ static inline char *rtl819x_translate_scan(struct ieee80211_device *ieee,
 			rate = network->rates[i++] & 0x7F;
 		if (rate > max_rate)
 			max_rate = rate;
-		p += snprintf(p, MAX_CUSTOM_LEN - (p - custom),
+		p += scnprintf(p, MAX_CUSTOM_LEN - (p - custom),
 			      "%d%s ", rate >> 1, (rate & 1) ? ".5" : "");
 	}
 	for (; j < network->rates_ex_len; j++) {
 		rate = network->rates_ex[j] & 0x7F;
-		p += snprintf(p, MAX_CUSTOM_LEN - (p - custom),
+		p += scnprintf(p, MAX_CUSTOM_LEN - (p - custom),
 			      "%d%s ", rate >> 1, (rate & 1) ? ".5" : "");
 		if (rate > max_rate)
 			max_rate = rate;
@@ -215,7 +215,7 @@ static inline char *rtl819x_translate_scan(struct ieee80211_device *ieee,
 	 * for given network. */
 	iwe.cmd = IWEVCUSTOM;
 	p = custom;
-	p += snprintf(p, MAX_CUSTOM_LEN - (p - custom),
+	p += scnprintf(p, MAX_CUSTOM_LEN - (p - custom),
 		      " Last beacon: %lums ago", (jiffies - network->last_scanned) / (HZ / 100));
 	iwe.u.data.length = p - custom;
 	if (iwe.u.data.length)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
