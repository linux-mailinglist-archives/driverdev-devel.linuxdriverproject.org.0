Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 537A21F48D1
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jun 2020 23:25:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6DBCF86E1F;
	Tue,  9 Jun 2020 21:25:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IzM2apCy8uQA; Tue,  9 Jun 2020 21:25:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E915686D5B;
	Tue,  9 Jun 2020 21:25:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9A10C1BF471
 for <devel@linuxdriverproject.org>; Tue,  9 Jun 2020 21:25:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 96E4A8887D
 for <devel@linuxdriverproject.org>; Tue,  9 Jun 2020 21:25:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Qy-yD1FbJ0S for <devel@linuxdriverproject.org>;
 Tue,  9 Jun 2020 21:25:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 639C488876
 for <devel@driverdev.osuosl.org>; Tue,  9 Jun 2020 21:25:04 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id k2so1934723pjs.2
 for <devel@driverdev.osuosl.org>; Tue, 09 Jun 2020 14:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=9zvvHkYMkDaGTEKW+me8qA60+3Z319xyUwYS20n6J2U=;
 b=K8TZ28rOkHEoo+YZHwY4pe4qjY4oAjrRRdD6PQEKtb45xTUsntY64ayxjN9K/wq8bK
 0z6JQdBKiWMdVql42jgzBuiC5ROZ/RRXySrk8+iR1SzEvmho/xAb7nxJSsx9txFGeqjR
 kw7P11uqO+HceZm7dlVs70XHlp4FUJYmaejC2rAldPifCTVK64l3i+u2aWROh6AaXPCq
 vuMmR9nbaTatc7n2M92UdsVUvVAsqq7qlbJUrbEiZx1IBXl5GDEYuDa3S3yJoTVydElc
 jHDkDTLUh0zu5hUoiO8zDk9pHmoaB6eQGOowEwWjknDNaTY9s95slLAJZB5n/ACTVwIR
 dpEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=9zvvHkYMkDaGTEKW+me8qA60+3Z319xyUwYS20n6J2U=;
 b=nGhPKflTcvZsfED70IeJCmQW6aIiB2OpFjU0xRIPbQHvO77vvtp+ruusRLIVccwrp1
 d5T87xRn6bbIzOqh2KM8jmi4qK4+6i0uA0IDzndHb1IGNnM3sXuQUWuULKf4Dmi4nvUr
 bNSoZIuIZMBOKKzqRgV75HpSVk8Jpk0oYE/xSuLjaNv5mKWgCWwRNI0RzjLZ3MEbj6IJ
 2pPfAtafNc5wTFkOAOSvvzlavnc7M+r/MUcG8MaXlxUiw6/x4qqq6LycFw/HoKeLBc2W
 puE19jjnK0kza2iqdkCsca/7mEpuXpvVXQmc0ijNG3pFcQTWJp0uUGYaJW8A1swP0kQT
 +Xig==
X-Gm-Message-State: AOAM533N+ig2M5M8eBRkBj+tl9H6VuPX5pXDrcFGqXbJcqtKdyRw5pnM
 b3nFEvalmjaGwPbsRauOCUw=
X-Google-Smtp-Source: ABdhPJxv0GaZjaUtYOXZO/mQEyw55j0yqpwPuT2kjRvK0icVlpUc8DeDAAGgQN512pDZBuG2YoB/gA==
X-Received: by 2002:a17:90a:6ace:: with SMTP id
 b14mr6927592pjm.13.1591737903696; 
 Tue, 09 Jun 2020 14:25:03 -0700 (PDT)
Received: from pjh-vbox.hsd1.ca.comcast.net
 (c-73-71-152-156.hsd1.ca.comcast.net. [73.71.152.156])
 by smtp.gmail.com with ESMTPSA id gg10sm3178897pjb.38.2020.06.09.14.25.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jun 2020 14:25:03 -0700 (PDT)
From: Julius Hemanth Pitti <juliushemanth@gmail.com>
To: gregkh@linuxfoundation.org,
	jerome.pouiller@silabs.com
Subject: [PATCH] staging: wfx: make methods 'wfx_get_ps_timeout' and
 'wfx_update_pm' static
Date: Tue,  9 Jun 2020 14:24:14 -0700
Message-Id: <1591737854-11855-1-git-send-email-juliushemanth@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, Julius Hemanth Pitti <juliushemanth@gmail.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add "static" for local methods wfx_get_ps_timeout() and
wfx_update_pm() to address following sparse warnings.

wfx/sta.c:203:5: warning: symbol 'wfx_get_ps_timeout' was not declared. Should it be static?
wfx/sta.c:233:5: warning: symbol 'wfx_update_pm' was not declared. Should it be static?

Signed-off-by: Julius Hemanth Pitti <juliushemanth@gmail.com>
---
 drivers/staging/wfx/sta.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
index 12e8a5b..d855d87 100644
--- a/drivers/staging/wfx/sta.c
+++ b/drivers/staging/wfx/sta.c
@@ -200,7 +200,7 @@ void wfx_configure_filter(struct ieee80211_hw *hw, unsigned int changed_flags,
 	mutex_unlock(&wdev->conf_mutex);
 }
 
-int wfx_get_ps_timeout(struct wfx_vif *wvif, bool *enable_ps)
+static int wfx_get_ps_timeout(struct wfx_vif *wvif, bool *enable_ps)
 {
 	struct ieee80211_channel *chan0 = NULL, *chan1 = NULL;
 	struct ieee80211_conf *conf = &wvif->wdev->hw->conf;
@@ -230,7 +230,7 @@ int wfx_get_ps_timeout(struct wfx_vif *wvif, bool *enable_ps)
 		return -1;
 }
 
-int wfx_update_pm(struct wfx_vif *wvif)
+static int wfx_update_pm(struct wfx_vif *wvif)
 {
 	int ps_timeout;
 	bool ps;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
