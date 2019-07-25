Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0795C755CF
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 19:34:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9BD8F88157;
	Thu, 25 Jul 2019 17:34:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tMgpe27x-Bnp; Thu, 25 Jul 2019 17:34:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8D60C87F5C;
	Thu, 25 Jul 2019 17:33:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1A7151BF312
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 17:33:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1222287FA4
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 17:33:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fH5zlVo0DnV4 for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 17:33:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CDCBA87F5C
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 17:33:55 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id f20so14149789pgj.0
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 10:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=hZk0TqDrxTM1KdLxSkV0vH8ZC4HuTZk2jgm5Qa5W38s=;
 b=pq97gd7dW3xHRFqRCYE8GJRT4eFN1Oj1H5if4i+6I+1XvKweGTnzQwHVsEJWNIOEJV
 wFmglC/Y6anBzCmfBMAR2fd/ijMUAKRFXrLeW6T6Kd64u0grkGrKPE0COa2IlTXwgr1h
 2qneSwBzA/J0tRwQyqPkKJYeHgpE0aRlUojIT43YH5zK1rw3QKRi9YbzJxY6ppFIVEj8
 HFfKnXLyGnJ7imdQS0R3CNWcPb+tyE0ct79f1XvvZ2dnxgr9iKaBXiOVYOaZ26fmjo3u
 SH3o6qzzN11S5tbchQDdLuP92OciyhnTVvxnyvfTMn2GYfmXLt56QsixUeBWtKHWfJMQ
 Koqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=hZk0TqDrxTM1KdLxSkV0vH8ZC4HuTZk2jgm5Qa5W38s=;
 b=GClKGlutXtTUfTPPdzkV/dkUyL1ZwsIsyWgO++YzlhSwGAEkXvuBdgW3szr5ZiUgsc
 Zvgdrb05p1DnaHg8RDgQGbm3eL4e95ZAjB5VcjmR9ftI7FMsaGo/PpPz2LKf194m37e8
 JM5ZUPw45eH7gl6k5DBIzYoOnODwJTrZI1hnzlvo99xhXCBoVV29v6n/E3xLWaHnAzUr
 eyAG+rMGNZmCvdkwd4W288Kh1TQZgopp+Fy6foc4NVWlqE6MbZAdhL4zH6f/NnYkEMDZ
 ZqOaLdpLtTpP4SjnU08GEI5I3qgixRb8WzH4+DaSd3x7+19bIxwnDjq9uB/+p43XueC5
 n0Uw==
X-Gm-Message-State: APjAAAWxgTTnBe8M4gfN3hWJ10xTuNfc9xCtIo5UBLqNu72aj54MjKqL
 ZZvEcEdlpr9LrcKDDMxNrxM=
X-Google-Smtp-Source: APXvYqw6/wLL6u7WdrtkLm19PLdxm+noBmOPehGs2ypkQbAARYSFQNprz51nqVoNIQ8IT66oWN/mfg==
X-Received: by 2002:a65:49cc:: with SMTP id t12mr81629192pgs.83.1564076035389; 
 Thu, 25 Jul 2019 10:33:55 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id t9sm25753094pgj.89.2019.07.25.10.33.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 10:33:54 -0700 (PDT)
Date: Thu, 25 Jul 2019 23:03:49 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 hdegoede@redhat.com, Larry.Finger@lwfinger.net
Subject: [PATCH] staging: rtl8723bs: os_dep: Remove function
 _rtw_regdomain_select
Message-ID: <20190725173349.GA9894@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This function simply returns &rtw_regdom_rd . So replace this function
with actual code

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/wifi_regd.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/wifi_regd.c b/drivers/staging/rtl8723bs/os_dep/wifi_regd.c
index aa2f62a..bbd83b2 100644
--- a/drivers/staging/rtl8723bs/os_dep/wifi_regd.c
+++ b/drivers/staging/rtl8723bs/os_dep/wifi_regd.c
@@ -115,13 +115,6 @@ static int _rtw_reg_notifier_apply(struct wiphy *wiphy,
 	return 0;
 }
 
-static const struct ieee80211_regdomain *_rtw_regdomain_select(struct
-							       rtw_regulatory
-							       *reg)
-{
-	return &rtw_regdom_rd;
-}
-
 static void _rtw_regd_init_wiphy(struct rtw_regulatory *reg,
 				 struct wiphy *wiphy,
 				 void (*reg_notifier)(struct wiphy *wiphy,
@@ -137,7 +130,7 @@ static void _rtw_regd_init_wiphy(struct rtw_regulatory *reg,
 	wiphy->regulatory_flags &= ~REGULATORY_STRICT_REG;
 	wiphy->regulatory_flags &= ~REGULATORY_DISABLE_BEACON_HINTS;
 
-	regd = _rtw_regdomain_select(reg);
+	regd = &rtw_regdom_rd;
 	wiphy_apply_custom_regulatory(wiphy, regd);
 
 	/* Hard code flags */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
