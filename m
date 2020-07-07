Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2546217807
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Jul 2020 21:38:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 05B4389368;
	Tue,  7 Jul 2020 19:38:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aaqMfNT+DYfu; Tue,  7 Jul 2020 19:38:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2DDDF89354;
	Tue,  7 Jul 2020 19:38:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AD55C1BF300
 for <devel@linuxdriverproject.org>; Tue,  7 Jul 2020 19:38:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7F7FF25173
 for <devel@linuxdriverproject.org>; Tue,  7 Jul 2020 19:38:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ui6zZSJ5aGR4 for <devel@linuxdriverproject.org>;
 Tue,  7 Jul 2020 19:38:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 7B52224AF8
 for <devel@driverdev.osuosl.org>; Tue,  7 Jul 2020 19:38:24 +0000 (UTC)
Received: from embeddedor (unknown [200.39.26.250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CF410206BE;
 Tue,  7 Jul 2020 19:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594150704;
 bh=IxkmBRf5TYZxdfGV0Qe1Hi63hNYzahR8LL/gGB7loAc=;
 h=Date:From:To:Cc:Subject:From;
 b=hhI/dZxFPsgY9dhg9vOlTbYpMfFkqPTyr0+UEOgByk2BnO84qOVYZVVxKHrBO7C7A
 hJUeSnJoab7xuA1DSbipg5hQnT0bYgP7ZJCzutcRa3QODOjaRROpsPcq4F9IIsy1/8
 WpE5+Xm+cNW/bms0PyNBV9/zIi347LqKtmWESEuQ=
Date: Tue, 7 Jul 2020 14:43:50 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vt6655: Use fallthrough pseudo-keyword
Message-ID: <20200707194350.GA3255@embeddedor>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace the existing /* fall through */ comments and its variants with
the new pseudo-keyword macro fallthrough[1]. Also, remove unnecessary
fall-through markings when it is the case.

[1] https://www.kernel.org/doc/html/latest/process/deprecated.html?highlight=fallthrough#implicit-switch-case-fall-through

Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/staging/vt6655/channel.c |    2 +-
 drivers/staging/vt6655/key.c     |    6 +++---
 drivers/staging/vt6656/channel.c |    2 +-
 drivers/staging/vt6656/key.c     |    2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vt6655/channel.c b/drivers/staging/vt6655/channel.c
index 62a85c1ca6c4..889fc22f19bd 100644
--- a/drivers/staging/vt6655/channel.c
+++ b/drivers/staging/vt6655/channel.c
@@ -133,7 +133,7 @@ void vnt_init_bands(struct vnt_private *priv)
 
 		priv->hw->wiphy->bands[NL80211_BAND_5GHZ] =
 						&vnt_supported_5ghz_band;
-	/* fallthrough */
+		fallthrough;
 	case RF_RFMD2959:
 	case RF_AIROHA:
 	case RF_AL2230S:
diff --git a/drivers/staging/vt6655/key.c b/drivers/staging/vt6655/key.c
index 4d6b48fd119d..94665ddc36a5 100644
--- a/drivers/staging/vt6655/key.c
+++ b/drivers/staging/vt6655/key.c
@@ -51,15 +51,15 @@ static int vnt_set_keymode(struct ieee80211_hw *hw, u8 *mac_addr,
 		/* default key last entry */
 		entry = MAX_KEY_TABLE - 1;
 		key->hw_key_idx = entry;
-		/* fall through */
+		fallthrough;
 	case VNT_KEY_ALLGROUP:
 		key_mode |= VNT_KEY_ALLGROUP;
 		if (onfly_latch)
 			key_mode |= VNT_KEY_ONFLY_ALL;
-		/* fall through */
+		fallthrough;
 	case VNT_KEY_GROUP_ADDRESS:
 		key_mode |= mode;
-		/* fall through */
+		fallthrough;
 	case VNT_KEY_GROUP:
 		key_mode |= (mode << 4);
 		key_mode |= VNT_KEY_GROUP;
diff --git a/drivers/staging/vt6656/channel.c b/drivers/staging/vt6656/channel.c
index 5d57d34577f5..7855689af7cb 100644
--- a/drivers/staging/vt6656/channel.c
+++ b/drivers/staging/vt6656/channel.c
@@ -145,7 +145,7 @@ void vnt_init_bands(struct vnt_private *priv)
 
 		priv->hw->wiphy->bands[NL80211_BAND_5GHZ] =
 						&vnt_supported_5ghz_band;
-	/* fallthrough */
+		fallthrough;
 	case RF_AL2230:
 	case RF_AL2230S:
 	case RF_VT3226:
diff --git a/drivers/staging/vt6656/key.c b/drivers/staging/vt6656/key.c
index c66cb53cfc09..70f75c5760ce 100644
--- a/drivers/staging/vt6656/key.c
+++ b/drivers/staging/vt6656/key.c
@@ -67,7 +67,7 @@ static int vnt_set_keymode(struct ieee80211_hw *hw, u8 *mac_addr,
 		/* default key last entry */
 		entry = MAX_KEY_TABLE - 1;
 		key->hw_key_idx = entry;
-		/* fall through */
+		fallthrough;
 	case VNT_KEY_GROUP_ADDRESS:
 		key_mode = mode | (mode << 4);
 		break;

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
