Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1F0778C5
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jul 2019 14:47:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E8FC89442;
	Sat, 27 Jul 2019 12:47:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KVh2WX0+szYm; Sat, 27 Jul 2019 12:47:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AE1D98942C;
	Sat, 27 Jul 2019 12:47:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9CEA71BF37C
 for <devel@linuxdriverproject.org>; Sat, 27 Jul 2019 12:47:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9897F89427
 for <devel@linuxdriverproject.org>; Sat, 27 Jul 2019 12:47:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3kra6gwapX5q for <devel@linuxdriverproject.org>;
 Sat, 27 Jul 2019 12:47:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0A60989424
 for <devel@driverdev.osuosl.org>; Sat, 27 Jul 2019 12:47:04 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id t132so26019300pgb.9
 for <devel@driverdev.osuosl.org>; Sat, 27 Jul 2019 05:47:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=vCgH18Sx+HG3PjjMYsyJR+T5KOZZ1lCW+dOldljDzvU=;
 b=XJc/Z0EaEU4mkmhHwZ/sDYw7Vun3wx5kEA6+/KUnOX5FT9/bJyQQBGulBfHXI8kosg
 TLWKOD5Y0oYcoGvxX1v42XNkBbDqmDQ/4jqera5P5HKX928NIztp1ZGtwDEIl3ASg1js
 2BzR/1pDU/t59iX0oozRc0aTAv03WSNsewRwk5mpo0241UvBPKBxu+aW9nHBtFKLP0me
 pz+JXZa3xKSqNqLimzJDN8AcYBToC6KngjJsVb1QQfiVhbN7RgS/4QveJmSymeX5+eds
 q0Iad3lexazmGkmtNuQkIwtHO+4XBzPxCuDRZWTd8N6OtQFGLIr6QwF5+p0urMicmwuY
 cpOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=vCgH18Sx+HG3PjjMYsyJR+T5KOZZ1lCW+dOldljDzvU=;
 b=rq8jQHZXyssz2Qc5+LEzK5LEG/X5ylvWtX4XGYwougNSE8dpr3ultkHiDHYGzEGZrj
 5saZfY+k9ZtXcruX0S66VlEL9nTWKQhqub37gy3uD8REZ/Q0AecCRi7CV/tmSwu5IPAe
 twlf0eYOx/z5WZd7h6e8JIz+YzKPblR555u0fui7hSCsJzvGUodBEZDtcovY9d0BVNSH
 CjpslR281+h6Xx+X5EQfohJHRlRUeEE6oxsGQOuEy3hw9npqSlrbutORASrH6d+ri+VF
 WKk+PZF+rL1lIHk1ulHtmHriPq9kVGhUpM3Pq+ccx7ZIGfrYxfSV74r6DN75TWdE14cR
 5LiA==
X-Gm-Message-State: APjAAAVHUzPCkyvuFtbbCq9YxxrQMmujWmSoTkw5kij9CesQ31Oc4rc9
 QtNhFsWdmJ30Z5f1SCjHBxM=
X-Google-Smtp-Source: APXvYqy3/fig2ne1YkWYjVCjGBDdGWAGaCWbJi1DUQ/9F0vceF170kOGOvn52SdQy4awnJixaNN0kA==
X-Received: by 2002:a65:46cf:: with SMTP id n15mr1881375pgr.267.1564231623635; 
 Sat, 27 Jul 2019 05:47:03 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id e189sm34311617pgc.15.2019.07.27.05.47.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Jul 2019 05:47:03 -0700 (PDT)
Date: Sat, 27 Jul 2019 18:16:58 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Puranjay Mohan <puranjay12@gmail.com>,
 Jeeeun Evans <jeeeunevans@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: os_dep: Remove unused defines
Message-ID: <20190727124658.GA7829@hari-Inspiron-1545>
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
