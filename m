Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8F7303BCA
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Jan 2021 12:38:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E2F68706A;
	Tue, 26 Jan 2021 11:38:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RpietJ5pSgDI; Tue, 26 Jan 2021 11:38:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A939F86FE5;
	Tue, 26 Jan 2021 11:38:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F290E1BF47E
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 11:38:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EEE118677D
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 11:38:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Eju2rfb9p6Af for <devel@linuxdriverproject.org>;
 Tue, 26 Jan 2021 11:38:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sipsolutions.net (s3.sipsolutions.net [144.76.43.62])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D9B468677B
 for <devel@driverdev.osuosl.org>; Tue, 26 Jan 2021 11:38:14 +0000 (UTC)
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94) (envelope-from <johannes@sipsolutions.net>)
 id 1l4LzE-00BsQd-2V; Tue, 26 Jan 2021 11:54:16 +0100
From: Johannes Berg <johannes@sipsolutions.net>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: rtl8723bs: fix wireless regulatory API misuse
Date: Tue, 26 Jan 2021 11:54:09 +0100
Message-Id: <20210126115409.d5fd6f8fe042.Ib5823a6feb2e2aa01ca1a565d2505367f38ad246@changeid>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
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
Cc: Johannes Berg <johannes.berg@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, ilan.peer@intel.com,
 Hans de Goede <hdegoede@redhat.com>, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Johannes Berg <johannes.berg@intel.com>

This code ends up calling wiphy_apply_custom_regulatory(), for which
we document that it should be called before wiphy_register(). This
driver doesn't do that, but calls it from ndo_open() with the RTNL
held, which caused deadlocks.

Since the driver just registers static regdomain data and then the
notifier applies the channel changes if any, there's no reason for
it to call this in ndo_open(), move it earlier to fix the deadlock.

Reported-and-tested-by: Hans de Goede <hdegoede@redhat.com>
Fixes: 51d62f2f2c50 ("cfg80211: Save the regulatory domain with a lock")
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
Greg, can you take this for 5.11 please? Or if you prefer, since the
patch that exposed this and broke the driver went through my tree, I
can take it as well.
---
 drivers/staging/rtl8723bs/include/rtw_wifi_regd.h |  6 +++---
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c |  6 +++---
 drivers/staging/rtl8723bs/os_dep/wifi_regd.c      | 10 +++-------
 3 files changed, 9 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_wifi_regd.h b/drivers/staging/rtl8723bs/include/rtw_wifi_regd.h
index ab5a8627d371..f798b0c744a4 100644
--- a/drivers/staging/rtl8723bs/include/rtw_wifi_regd.h
+++ b/drivers/staging/rtl8723bs/include/rtw_wifi_regd.h
@@ -20,9 +20,9 @@ enum country_code_type_t {
 	COUNTRY_CODE_MAX
 };
 
-int rtw_regd_init(struct adapter *padapter,
-	void (*reg_notifier)(struct wiphy *wiphy,
-		struct regulatory_request *request));
+void rtw_regd_init(struct wiphy *wiphy,
+		   void (*reg_notifier)(struct wiphy *wiphy,
+					struct regulatory_request *request));
 void rtw_reg_notifier(struct wiphy *wiphy, struct regulatory_request *request);
 
 
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index bf1417236161..11032316c53d 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -3211,9 +3211,6 @@ void rtw_cfg80211_init_wiphy(struct adapter *padapter)
 			rtw_cfg80211_init_ht_capab(&bands->ht_cap, NL80211_BAND_2GHZ, rf_type);
 	}
 
-	/* init regulary domain */
-	rtw_regd_init(padapter, rtw_reg_notifier);
-
 	/* copy mac_addr to wiphy */
 	memcpy(wiphy->perm_addr, padapter->eeprompriv.mac_addr, ETH_ALEN);
 
@@ -3328,6 +3325,9 @@ int rtw_wdev_alloc(struct adapter *padapter, struct device *dev)
 	*((struct adapter **)wiphy_priv(wiphy)) = padapter;
 	rtw_cfg80211_preinit_wiphy(padapter, wiphy);
 
+	/* init regulary domain */
+	rtw_regd_init(wiphy, rtw_reg_notifier);
+
 	ret = wiphy_register(wiphy);
 	if (ret < 0) {
 		DBG_8192C("Couldn't register wiphy device\n");
diff --git a/drivers/staging/rtl8723bs/os_dep/wifi_regd.c b/drivers/staging/rtl8723bs/os_dep/wifi_regd.c
index 578b9f734231..2833fc6901e6 100644
--- a/drivers/staging/rtl8723bs/os_dep/wifi_regd.c
+++ b/drivers/staging/rtl8723bs/os_dep/wifi_regd.c
@@ -139,15 +139,11 @@ static void _rtw_regd_init_wiphy(struct rtw_regulatory *reg,
 	_rtw_reg_apply_flags(wiphy);
 }
 
-int rtw_regd_init(struct adapter *padapter,
-		  void (*reg_notifier)(struct wiphy *wiphy,
-				       struct regulatory_request *request))
+void rtw_regd_init(struct wiphy *wiphy,
+		   void (*reg_notifier)(struct wiphy *wiphy,
+					struct regulatory_request *request))
 {
-	struct wiphy *wiphy = padapter->rtw_wdev->wiphy;
-
 	_rtw_regd_init_wiphy(NULL, wiphy, reg_notifier);
-
-	return 0;
 }
 
 void rtw_reg_notifier(struct wiphy *wiphy, struct regulatory_request *request)
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
