Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D426A7CBBB
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 20:17:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 69D8F85BCE;
	Wed, 31 Jul 2019 18:17:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2uiKaNRmoFil; Wed, 31 Jul 2019 18:17:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 656F385810;
	Wed, 31 Jul 2019 18:17:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3F30D1BF2EA
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:17:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3C49784B1F
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:17:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ULPwYUzHJqSI for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 18:17:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B5CDC84AE1
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 18:17:40 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id w10so32458514pgj.7
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 11:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=C5LUoF9wt23TkOe1qlJjYDBJ8FM6oQedM0HGhfgeOjc=;
 b=aJ/ez4+lxs7KkM0SRxZVVF6/pqzJevVAc1EBV0/DyYIvbiwmD87VGD+DeBVjPYplFv
 lxzcNTz3nfFo2jkZQWSKjDpl3frMvGj4VzJV14CN3fhEXTt5hgMcc0GNT3pOxnpZ8GuA
 oxtHkqXp2oc89c4sDsKRJnz/FVPXZpSNfiBZjJARBlawIuDR9gFY6apTHGkxx8dj5ENk
 pVPCmwrftgzfb3Ip00rbpL+pDQyazIk4S7gPorocRl/Rlb+8CudlqUo76boF6WwhPcfg
 6edqKwE0LOSZShqa2wdXAvvVpYsqEM1nf+9VUsl6n7FKcGY/4iWyuJM7e357GDUmr1iV
 Z0Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=C5LUoF9wt23TkOe1qlJjYDBJ8FM6oQedM0HGhfgeOjc=;
 b=WtZk6c8FE5rF4ZL7/pP8+y+TfdZulE7A6FBr/hueBPmOBdMyxhKv0qlg9nI9Iq3b+Q
 5x/iXvPiQUltKoUTJgGT4A+xrYqR8Gr3bwOKLkF0opBPMuJ9g4bxYgCcfQsPluTQHSZR
 js+8T4mT6aanmCNL9xeaJIIgRAVDB6QnRREXNDY055V8I5RCjem3w24u+QqRECNu6wD1
 LPUjsWINmBjUN/oFfxfJzSMS5fs0ZoXgmCIfkHdaLczKti30dD/0YUlykVknKM18GQsI
 gHmkGURrzv9k+GWD7UXlyC5R9PPeDa81XVyaZwGsMEkdIJyy0hXnNKPo7M/azm02pOkQ
 6D9Q==
X-Gm-Message-State: APjAAAUTa8u9jQg+XkysB8R50k2bbfdxpJo8VzIoZ7tcvfFaay/C0JUc
 Q4AoPAaghJPFJQUIdSymQ7Q=
X-Google-Smtp-Source: APXvYqxIfI11bfEXr6hEhdatJu6SWlztNlTKjBctw5c68rbYscHmra0EnAHZHWrnmz7T9ek4VXZ0Vw==
X-Received: by 2002:a62:2b81:: with SMTP id
 r123mr47147570pfr.108.1564597060398; 
 Wed, 31 Jul 2019 11:17:40 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id s12sm69137141pgr.79.2019.07.31.11.17.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 11:17:39 -0700 (PDT)
Date: Wed, 31 Jul 2019 23:47:35 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Jeeeun Evans <jeeeunevans@gmail.com>,
 Puranjay Mohan <puranjay12@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, hdegoede@redhat.com
Subject: [Patch v2 05/10] staging: rtl8723bs: os_dep: Remove unused defines
Message-ID: <20190731181735.GA9441@hari-Inspiron-1545>
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

Remove below unused defines RTW_CH_MAX_2G_CHANNEL rtw_a_rates
RTW_A_RATES_NUM RTW_5G_CHANNELS_NUM

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
v2 - Add patch number

 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 9bc6856..30165ca 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -19,8 +19,6 @@
 #define RTW_MAX_REMAIN_ON_CHANNEL_DURATION 5000 /* ms */
 #define RTW_MAX_NUM_PMKIDS 4
 
-#define RTW_CH_MAX_2G_CHANNEL               14      /* Max channel in 2G band */
-
 static const u32 rtw_cipher_suites[] = {
 	WLAN_CIPHER_SUITE_WEP40,
 	WLAN_CIPHER_SUITE_WEP104,
@@ -73,13 +71,10 @@ static struct ieee80211_rate rtw_rates[] = {
 	RATETAB_ENT(540, 0x800, 0),
 };
 
-#define rtw_a_rates		(rtw_rates + 4)
-#define RTW_A_RATES_NUM	8
 #define rtw_g_rates		(rtw_rates + 0)
 #define RTW_G_RATES_NUM	12
 
 #define RTW_2G_CHANNELS_NUM 14
-#define RTW_5G_CHANNELS_NUM 37
 
 static struct ieee80211_channel rtw_2ghz_channels[] = {
 	CHAN2G(1, 2412, 0),
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
