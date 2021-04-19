Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D8F364734
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Apr 2021 17:34:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7ECEA4043C;
	Mon, 19 Apr 2021 15:34:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tdFyt8x9ArkC; Mon, 19 Apr 2021 15:34:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7AE554038C;
	Mon, 19 Apr 2021 15:34:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 43F2C1BF3C4
 for <devel@linuxdriverproject.org>; Mon, 19 Apr 2021 15:33:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2F0BB4013E
 for <devel@linuxdriverproject.org>; Mon, 19 Apr 2021 15:33:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zi5wRL_xyeB7 for <devel@linuxdriverproject.org>;
 Mon, 19 Apr 2021 15:33:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 30A6640100
 for <devel@driverdev.osuosl.org>; Mon, 19 Apr 2021 15:33:54 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id
 j21-20020a17090ae615b02901505b998b45so5285594pjy.0
 for <devel@driverdev.osuosl.org>; Mon, 19 Apr 2021 08:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=6C2ypx1ltTtAbaNb1djC1piRseYP7dsd7kJM0vd662s=;
 b=Qoi9lv3o1Ko56QjAVFcNOHsmAPb7DFUAABLCuRfkITyjvV0bqYJxkIUnH3ar3AXZCv
 7nLFlRSy45HRQ27c42CnVU0IivkzivxpGBMZgrF/yeujfCrPrG3vPTYkqbGpQKA9uEpC
 Mj171RG6/IL+F7+us2tZWtNfATiDzlHrDtU5VuHafDgOrKbW17zDvQSwrdUsCcwGvHEP
 argcqPGM2cSQq99+ROrED2aW7aoD4/fZjy53eQjtzmPWU+MMl+cWTWCPsbJsWi+q3HKH
 ksqHkqNeCPB4Trzq1EU0Bufg7QlLHnpkUrQcMHZgGVIFecu3uyv75P9q5Q1NB3rRK55k
 mOwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=6C2ypx1ltTtAbaNb1djC1piRseYP7dsd7kJM0vd662s=;
 b=IWMRj1yQWV+iWNUeiFQ9iLlZnw+sycD2q5q8ZDbSnq5g+xklAbtacT9vKF/Zg8GHJ0
 9Xd1wKU7dkuJTjYf2ZJykDLjh+Y6tE4YSViSiTMP2pGjjfc0aJf3J1b/X+uVHQ4y7sHY
 Qtr0U2to6WxpwYwn5vQu992w17VDlNAvdOUwin/RAVgdggCKL/3P+nJg6UB0wj9CIuZN
 SUW6DyBTMt5IrFUOXIkumngj8tUwDWnS6vMnAonznjqvOmmgpXoNoGOFaws/mloI3SVv
 pmoukLhCcS0PJQh5vYz/bopsD5vlZ9YiQa1WxTnSZN5S2GWV/aRwlP4S/5xwFfbHZ9PX
 SqEA==
X-Gm-Message-State: AOAM530SEWfleYXL3gVpTNCEbzR9hhQoTm4XTSbkNmDMK5WANLZWNV2A
 mBst0Z3A9KOikE1mJ8rO6dc=
X-Google-Smtp-Source: ABdhPJxtAI5140A9y+4SLkqFlgO0dJnegwBF+HVfZdViH9OQHRi/CUpN9bL0+FlGeTp+jtVIfaU/Rg==
X-Received: by 2002:a17:90a:7897:: with SMTP id
 x23mr8624574pjk.133.1618846433453; 
 Mon, 19 Apr 2021 08:33:53 -0700 (PDT)
Received: from ashish-NUC8i5BEH ([182.77.14.23])
 by smtp.gmail.com with ESMTPSA id d3sm15694597pjw.35.2021.04.19.08.33.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Apr 2021 08:33:52 -0700 (PDT)
Date: Mon, 19 Apr 2021 21:03:48 +0530
From: Ashish Kalra <eashishkalra@gmail.com>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: wfx: silence symbol 'wfx_get_ps_timeout' was not
 declared warning
Message-ID: <20210419153348.GA22782@ashish-NUC8i5BEH>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: eashishkalra@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Upon running sparse, "warning: symbol 'wfx_get_ps_timeout' was not declared.
Should it be static?" and "warning: symbol 'wfx_update_pm' was not declared.
Should it be static?" is brought to notice for this file.  static keyword
should be added to prevent this warning. let's add it to make it cleaner and
silence the Sparse warning.

Signed-off-by: Ashish Kalra <eashishkalra@gmail.com>
---
 drivers/staging/wfx/sta.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
index 12e8a5b638f1..d855d87c2102 100644
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
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
