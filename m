Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CDD63B35E
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 12:38:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2E0FA865EE;
	Mon, 10 Jun 2019 10:38:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x0iVYX21sqbk; Mon, 10 Jun 2019 10:38:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 389FD86038;
	Mon, 10 Jun 2019 10:38:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E8D721BF3AA
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 10:38:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D9D711FE32
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 10:38:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3t5QOTjLm1Hy for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 10:38:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 221B920004
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 10:38:39 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id d126so5076940pfd.2
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 03:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=mpPScSwEUvGCrfFSzsPIPCGbvFV9XPrrj9L5Mq7ES2o=;
 b=Tc6RBG0z7+LuK3uLgyEbinWPqfxyBMhm12dlPYzpTzHReHHdD3yLFL8h17hrzxueg7
 qig4UDVs9F89wrRD8QEbjMnF3K16yUHWMDQHf8lTMWVzkAH2EIbQkzTNG/01cADfYMU0
 8pjCY3miVG0yvYeljjpnEMrDD3nUzFno3PmZySlqzCh9E2FiK5blo+mREoPBF0EFUjX+
 0IEC9UeEZoSBnS5b+lrqPLaTGw/hMqLlF93mq2YG5dcrIU3lGfJHIWq38HZHDgfVwatY
 pY2KayHBUvlArMNcseVykmzuPqYiO/AnPT+bpjdaxXXvEANsbJ5KkD8UmAkEW28drvj/
 KgUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=mpPScSwEUvGCrfFSzsPIPCGbvFV9XPrrj9L5Mq7ES2o=;
 b=H1Bx73WTGK2eF3SznVEPe7bFZVFmHWRfh2U9Xs1/ayXuibfbmyjvC2FI6ZsevyINE8
 RTHQw0ULTLuIQxiZguZ/SrsMM4fxBLoj7C6jDvgV5P0wpvpd8uD2Rm+VOPHWXZWstEHj
 A6Vs8d/0RkxSeG7gA03SUCBJfl10e6W1CrjhApZxT+nXJvOW9qbzQTQCca+tw2akjxfN
 K/ash5WmUtFDW++GxmU2rDZF3G+pDK2U9Su76qFsRgQIfJQX5EXS9rhun8ws0jDvNbBP
 N6OeAtv4JK9zT7e7AA8tLwZ2c1hsYLwEj0GZab4w8q6Brf11Rf9K/Xlen07yYhfV2kNc
 XwJw==
X-Gm-Message-State: APjAAAVjkoQgC2h3dPO0xqkbvJYHQzooMTyC+/4w8zy7fHmkTl0YIC7c
 oxIR7NOf9DP6B82weJmQde4xCSwmFM8=
X-Google-Smtp-Source: APXvYqwoF8NxU5GFTcruRD63cj7AzF075nfcFx3++9Qc63hWP7Czfbgxm7vJEkvKcIx/BeaKiESjNQ==
X-Received: by 2002:a17:90a:a593:: with SMTP id
 b19mr947374pjq.31.1560163118455; 
 Mon, 10 Jun 2019 03:38:38 -0700 (PDT)
Received: from localhost.localdomain
 ([2401:4900:2747:12e9:74e9:432c:7ca9:f9ed])
 by smtp.gmail.com with ESMTPSA id q7sm9512883pfb.32.2019.06.10.03.38.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 03:38:38 -0700 (PDT)
From: Merwin Trever Ferrao <merwintf@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 16/16] Staging: wlan-ng: cfg80211: fixed alignment issue with
 open parenthesis line ending with (
Date: Mon, 10 Jun 2019 16:08:25 +0530
Message-Id: <20190610103825.19364-1-merwintf@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Merwin Trever Ferrao <merwintf@gmail.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Merwin Trever Ferrao <Merwintf@gmail.com>

Fixed a coding style issue.

Signed-off-by: Merwin Trever Ferrao <merwintf@gmail.com>
---
 drivers/staging/wlan-ng/cfg80211.c | 32 ++++++++++++++----------------
 1 file changed, 15 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index eee1998c4b18..5424e2682911 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -324,8 +324,7 @@ static int prism2_scan(struct wiphy *wiphy,
 		(i < request->n_channels) && i < ARRAY_SIZE(prism2_channels);
 		i++)
 		msg1.channellist.data.data[i] =
-			ieee80211_frequency_to_channel(
-				request->channels[i]->center_freq);
+			ieee80211_frequency_to_channel(request->channels[i]->center_freq);
 	msg1.channellist.data.len = request->n_channels;
 
 	msg1.maxchanneltime.data = 250;
@@ -359,15 +358,15 @@ static int prism2_scan(struct wiphy *wiphy,
 		freq = ieee80211_channel_to_frequency(msg2.dschannel.data,
 						      NL80211_BAND_2GHZ);
 		bss = cfg80211_inform_bss(wiphy,
-			ieee80211_get_channel(wiphy, freq),
-			CFG80211_BSS_FTYPE_UNKNOWN,
-			(const u8 *)&msg2.bssid.data.data,
-			msg2.timestamp.data, msg2.capinfo.data,
-			msg2.beaconperiod.data,
-			ie_buf,
-			ie_len,
-			(msg2.signal.data - 65536) * 100, /* Conversion to signed type */
-			GFP_KERNEL
+					  ieee80211_get_channel(wiphy, freq),
+					  CFG80211_BSS_FTYPE_UNKNOWN,
+					  (const u8 *)&msg2.bssid.data.data,
+					  msg2.timestamp.data, msg2.capinfo.data,
+					  msg2.beaconperiod.data,
+					  ie_buf,
+					  ie_len,
+					  (msg2.signal.data - 65536) * 100, /* Conversion to signed type */
+					  GFP_KERNEL
 		);
 
 		if (!bss) {
@@ -475,14 +474,13 @@ static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
 			}
 
 			result = prism2_domibset_uint32(wlandev,
-				DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
-				sme->key_idx);
+							DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
+							sme->key_idx);
 			if (result)
 				goto exit;
 
 			/* send key to driver */
-			did = didmib_dot11smt_wepdefaultkeystable_key(
-					sme->key_idx + 1);
+			did = didmib_dot11smt_wepdefaultkeystable_key(sme->key_idx + 1);
 			result = prism2_domibset_pstr32(wlandev,
 							did, sme->key_len,
 							(u8 *)sme->key);
@@ -588,8 +586,8 @@ static int prism2_set_tx_power(struct wiphy *wiphy, struct wireless_dev *wdev,
 		data = MBM_TO_DBM(mbm);
 
 	result = prism2_domibset_uint32(wlandev,
-		DIDMIB_DOT11PHY_TXPOWERTABLE_CURRENTTXPOWERLEVEL,
-		data);
+					DIDMIB_DOT11PHY_TXPOWERTABLE_CURRENTTXPOWERLEVEL,
+					data);
 
 	if (result) {
 		err = -EFAULT;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
