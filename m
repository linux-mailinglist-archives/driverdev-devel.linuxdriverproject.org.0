Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADFE980F0
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 19:03:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 93FC886E77;
	Wed, 21 Aug 2019 17:03:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fZZ1Z9h9evo9; Wed, 21 Aug 2019 17:03:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 05C7686C11;
	Wed, 21 Aug 2019 17:03:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 94B661BF308
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 17:03:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9223A8614A
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 17:03:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 09pYeHFGtMCU for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 17:03:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3BCC08613E
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 17:03:00 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id w2so1831734pfi.3
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 10:03:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=gUlx/um1HFD7RMzoZykItYeWz2z0qcEVlZBdNXsKsEk=;
 b=a4x6YvQXRMDCLvqwaM9VQowW4QcQlgsb8FjNynAVKJnQjLeKj6hcbhgmYulQ0SYIHC
 Jxek2OAqeKBmnbmwBmgtMIKzryhPmOtm4cjOpDHvdGnCKOu47YwS6PggZ82vosBthXsh
 fAFsRAp81mGZ04gnWQ5AwmNrJCn/5vzDg8jJgw8ojy9qmmlTXapWHQ9nlRYTsZ4HgTfo
 0JzK42mfIQH6ljrD2PgXTM0Ep0e6yFyRVJwv/2n9O9Jay1Up3zs8iPWMqoXtyWRkd4TC
 y00qyXC8/yTX6CWCHzos23AKH7+VTldC1GOynTEo1iPyxvcg0yODEAwnIdphum1hoh1S
 bUmQ==
X-Gm-Message-State: APjAAAXrn850TCCksGm1p1gkJ1oK6Hesr4pcTL1G92aIMr8aoYSN2wPL
 EuZYYDbpmmep8vtxCc2Gu5k=
X-Google-Smtp-Source: APXvYqxVyvMoF9ed2a4L61EU+/0ePS42YeRgy7jjhgMqmJuXB6PE/rQTiC7F1rqXVoLIT2gwDwhq3g==
X-Received: by 2002:a65:64c4:: with SMTP id t4mr27878678pgv.298.1566406979733; 
 Wed, 21 Aug 2019 10:02:59 -0700 (PDT)
Received: from localhost.localdomain ([183.83.90.246])
 by smtp.gmail.com with ESMTPSA id x17sm23620815pff.62.2019.08.21.10.02.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 21 Aug 2019 10:02:57 -0700 (PDT)
From: hariprasad@osuosl.org, Kelam@osuosl.org,
	hariprasad.kelam@gmail.com
To: hariprasad.kelam@gmail.com
Subject: [PATCH] staging: rtl8723bs: os_dep: Remove unused declarations
Date: Wed, 21 Aug 2019 22:31:10 +0530
Message-Id: <1566406901-6700-1-git-send-email-hariprasad.kelam@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Jeeeun Evans <jeeeunevans@gmail.com>,
 Puranjay Mohan <puranjay12@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chris Chiu <chiu@endlessm.com>, linux-kernel@vger.kernel.org,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Hariprasad Kelam <hariprasad.kelam@gmail.com>

Remove unused Macro declarations

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 2 --
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c    | 3 ---
 drivers/staging/rtl8723bs/os_dep/wifi_regd.c      | 5 -----
 3 files changed, 10 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 5787646..f819abb 100644
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
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 90c2997..0e565c0 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -21,13 +21,10 @@
 #define RATE_COUNT 4
 
 /*  combo scan */
-#define WEXT_CSCAN_AMOUNT 9
-#define WEXT_CSCAN_BUF_LEN		360
 #define WEXT_CSCAN_HEADER		"CSCAN S\x01\x00\x00S\x00"
 #define WEXT_CSCAN_HEADER_SIZE		12
 #define WEXT_CSCAN_SSID_SECTION		'S'
 #define WEXT_CSCAN_CHANNEL_SECTION	'C'
-#define WEXT_CSCAN_NPROBE_SECTION	'N'
 #define WEXT_CSCAN_ACTV_DWELL_SECTION	'A'
 #define WEXT_CSCAN_PASV_DWELL_SECTION	'P'
 #define WEXT_CSCAN_HOME_DWELL_SECTION	'H'
diff --git a/drivers/staging/rtl8723bs/os_dep/wifi_regd.c b/drivers/staging/rtl8723bs/os_dep/wifi_regd.c
index aa2f62a..578b9f7 100644
--- a/drivers/staging/rtl8723bs/os_dep/wifi_regd.c
+++ b/drivers/staging/rtl8723bs/os_dep/wifi_regd.c
@@ -33,11 +33,6 @@
 	REG_RULE(2467 - 10, 2472 + 10, 40, 0, 20,	\
 	NL80211_RRF_PASSIVE_SCAN)
 
-/* 2G chan 14, PASSIVS SCAN, NO OFDM (B only) */
-#define RTW_2GHZ_CH14	\
-	REG_RULE(2484 - 10, 2484 + 10, 40, 0, 20,	\
-	NL80211_RRF_PASSIVE_SCAN | NL80211_RRF_NO_OFDM)
-
 static const struct ieee80211_regdomain rtw_regdom_rd = {
 	.n_reg_rules = 3,
 	.alpha2 = "99",
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
