Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C4E33AFB4
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 11:15:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0AC2D83410;
	Mon, 15 Mar 2021 10:15:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gCMr9Z2OnA7w; Mon, 15 Mar 2021 10:15:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3EF06833DB;
	Mon, 15 Mar 2021 10:15:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CFB041BF384
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:15:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BF54A833CA
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:15:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id onzdsVcd9jJA for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 10:15:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2076F833DB
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:15:06 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 124-20020a1c00820000b029010b871409cfso19880672wma.4
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 03:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8y5b2VDJq2uxZg06dfRG9ZmzLOxQKYqLlX2oZGo99NU=;
 b=R6WiinF+JrvfG9o+EBcqGNJrb69/rPZm58W9qFIx9BhDF4/e1m5XXgnTmrqMlbskDH
 7KayyE7u6LyBV8emT0jN4+6ac8MI4+bfL8vfxPiyuqgNhv/1nyj9sJpQsxc/yvy/pf7o
 36KZvGanGHqwLG8p3oWlTp7Z3KcMPZ9ShxGl+VhaRoZtD1AYuJB2ACNRq7w0Bi+S74OK
 42DKmuIjI2oJzILLTyYUUW2NkrgLSsfbP+S5SofWCRdQg4kpzFbiG8zu+nlA3xAhC22k
 +oel77zyKD+Ffv5jLOuz9FinJ7k5/uyy+Fin1/x8c0nK7EDZTfWXZA160/n1Xx9x+ocv
 Z83w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8y5b2VDJq2uxZg06dfRG9ZmzLOxQKYqLlX2oZGo99NU=;
 b=FIXjl9X7PFOlgKk8/ZQWhFftERtIG4FlXuF/7NqZGNJMlwnAwBYorGEIWA9c2tBgzC
 Ftorc3ejMZwcOmbltxdOjRhwUVhIbjEpbFuFIkFPOiPD+qgyvtxbydb2MusZ6DPqMShu
 yLuB+5iNlXnqC+i/b6ftSp7EI/WOjWKWmbz3dq7VI8y7Lhg0FX3KAkSymkpQmk680S6g
 nrZmpdQ6AK9BnFffOY4RYa0bhipqjmMCHZXLOkCmlG1Ysfabe9ofxvfPqYdZR0TzX3JF
 6XvOW7RxA1/UKQ2e5XLYb2JZ3HNJ78px6RLRjZtt/7Ec0HPDffc/YSKI1InwmtjsdJUB
 otzQ==
X-Gm-Message-State: AOAM5304ljztWN3AQbr2+hYKFAVraXAKatAwaijBqm6fVMbDQHtlVl7q
 UYTSRtj+AldApW4PH0gsdMg=
X-Google-Smtp-Source: ABdhPJy5bAAu9UX8pJjpmoDXYhNqrJ6HBtu1X638wPkYsapll6EJCO8xrn7Zf06CdtOJhbiS39muNQ==
X-Received: by 2002:a05:600c:2106:: with SMTP id
 u6mr25505382wml.55.1615803305505; 
 Mon, 15 Mar 2021 03:15:05 -0700 (PDT)
Received: from agape.jhs ([5.171.72.229])
 by smtp.gmail.com with ESMTPSA id i8sm20229937wry.90.2021.03.15.03.15.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 03:15:05 -0700 (PDT)
Date: Mon, 15 Mar 2021 11:15:02 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 05/15] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_PM
Message-ID: <77ea39e63246fa4756afcf2bdea573f43fefc74c.1615801721.git.fabioaiuto83@gmail.com>
References: <cover.1615801721.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615801721.git.fabioaiuto83@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

remove conditional code blocks checked by unused CONFIG_PM

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 2ff71d001c07..5748e1c1a25c 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -3198,14 +3198,6 @@ static void rtw_cfg80211_preinit_wiphy(struct adapter *padapter, struct wiphy *w
 	wiphy->flags |= WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL;
 	wiphy->flags |= WIPHY_FLAG_OFFCHAN_TX | WIPHY_FLAG_HAVE_AP_SME;
 
-#if defined(CONFIG_PM)
-	wiphy->max_sched_scan_reqs = 1;
-#endif
-
-#if defined(CONFIG_PM)
-	wiphy->wowlan = &wowlan_stub;
-#endif
-
 	if (padapter->registrypriv.power_mgnt != PS_MODE_ACTIVE)
 		wiphy->flags |= WIPHY_FLAG_PS_ON_BY_DEFAULT;
 	else
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
