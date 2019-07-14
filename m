Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D9368080
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jul 2019 19:28:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 46AB8861D5;
	Sun, 14 Jul 2019 17:28:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CnsWS-kPXCc2; Sun, 14 Jul 2019 17:28:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A74E86146;
	Sun, 14 Jul 2019 17:28:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E54AD1BF20F
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 17:28:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E2A9A85137
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 17:28:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d1t8fNEm6rew for <devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 17:28:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 70E7584D11
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 17:28:32 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id q10so6351081pff.9
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 10:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Eg/DP7K1WzO3LKkPNWtjmpuyH7UktmZHkdh6/bI4Cu0=;
 b=JsyK6x4IIiDh+I9mbXhj+rgYkW2WSYpo3quaqhQlZPNey6c5ioCyqypxTQuADUSkAC
 zVOaXrA6raVvlGhbcqSojvguzmYgV0ESFwq6QSaj7lAEiAKVrOmKPpuTGtBCtJ3Y5Zsg
 4aeCK4XSqgqk98qNcA+w8b2jbg0XCyxbyn5dtpcG7alAkSMi9pVCR/hUtEuJx1FsIg4T
 spxPSj+fgkkZfbN9YaB4/eOhiGyelLe//Sb/328jP96r/gFDoE2Lh6P0KZEy9CayY4OP
 VFrKhgDFXijPWU+0n5psEwDq9UWuPkD1Mg44feFq0V2SkzyzVhFzBjtwEux5H2ghzqep
 S8GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Eg/DP7K1WzO3LKkPNWtjmpuyH7UktmZHkdh6/bI4Cu0=;
 b=PiDQ92xpiK7U4STao0icaOWk4Cak2BCfKImO2x1nUkjw/X7wSn8yo3OlcySr2SvVwZ
 tVu71k/q20HnvSalnxwe8pPUQABuXkbRzkR6BkhU8R+guQT3mqlueH4SZwqBtZWdkqcP
 E3ZTUkSogRYOM9GMpvLscCzlEYwgl6Qoqukhad5syjIWHybaLGbUAzFrOOnsegWuixYZ
 ZPXTrXcEBrSoWxgzOiDn7kBd+JRbdvBVjmYH4bLFWwJrZ77Dymp3b6M+ljY0xsPh4fsU
 /WoGG93DkOY7XaHaPdw0Je6q69yZ5CAOh0X/ojEEkoc1VxyOCxiQZ93ywQeolyP4taOW
 026Q==
X-Gm-Message-State: APjAAAWA3oRLeHWY7dWlhz3IJM1akeoQQGQ1tC3BmYzD+euDl1geoq9R
 gUIKuYMbUfDLBbpo/0OXGvQ=
X-Google-Smtp-Source: APXvYqyxA1WfTxRlxIFCPjpD2t2gTPEmD3S2Oie4bywlLZUETO7LwfA9DHzey256spKkh5OV166VIw==
X-Received: by 2002:a63:fb14:: with SMTP id o20mr11837553pgh.136.1563125312117; 
 Sun, 14 Jul 2019 10:28:32 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id u1sm12971306pgi.28.2019.07.14.10.28.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 10:28:31 -0700 (PDT)
Date: Sun, 14 Jul 2019 22:58:26 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vatsala Narang <vatsalanarang@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Michael Straube <straube.linux@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 hdegoede@redhat.com, Larry.Finger@lwfinger.net
Subject: [PATCH] staging: rtl8723bs: core: Remove code valid only for 5GHz
Message-ID: <20190714172826.GA6950@hari-Inspiron-1545>
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

As per TODO ,remove code valid only for 5 GHz(channel > 14).

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 4285844..967da71 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -295,11 +295,7 @@ static void init_mlme_ext_priv_value(struct adapter *padapter)
 
 	init_mlme_default_rate_set(padapter);
 
-	if (pmlmeext->cur_channel > 14)
-		pmlmeext->tx_rate = IEEE80211_OFDM_RATE_6MB;
-	else
-		pmlmeext->tx_rate = IEEE80211_CCK_RATE_1MB;
-
+	pmlmeext->tx_rate = IEEE80211_CCK_RATE_1MB;
 	pmlmeext->sitesurvey_res.state = SCAN_DISABLE;
 	pmlmeext->sitesurvey_res.channel_idx = 0;
 	pmlmeext->sitesurvey_res.bss_cnt = 0;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
