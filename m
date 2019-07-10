Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A09064F07
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Jul 2019 01:06:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 242B42047F;
	Wed, 10 Jul 2019 23:06:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OlwmNiqzuMgc; Wed, 10 Jul 2019 23:06:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DC16620421;
	Wed, 10 Jul 2019 23:06:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 557F01BF47A
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 23:06:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 52D43869B4
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 23:06:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R-j4dN1w6lZ0 for <devel@linuxdriverproject.org>;
 Wed, 10 Jul 2019 23:06:27 +0000 (UTC)
X-Greylist: delayed 00:06:47 by SQLgrey-1.7.6
Received: from fieldses.org (fieldses.org [173.255.197.46])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9F1FD8671F
 for <devel@driverdev.osuosl.org>; Wed, 10 Jul 2019 23:06:27 +0000 (UTC)
Received: by fieldses.org (Postfix, from userid 2815)
 id B4E641D27; Wed, 10 Jul 2019 18:59:39 -0400 (EDT)
From: "J. Bruce Fields" <bfields@redhat.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] rtl8192*: display ESSIDs using %pE
Date: Wed, 10 Jul 2019 18:59:34 -0400
Message-Id: <1562799574-13315-1-git-send-email-bfields@redhat.com>
X-Mailer: git-send-email 1.8.3.1
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
Cc: devel@driverdev.osuosl.org, "J. Bruce Fields" <bfields@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: "J. Bruce Fields" <bfields@redhat.com>

Everywhere else in the kernel ESSIDs are printed using %pE, and I can't
see why there should be an exception here.

Signed-off-by: J. Bruce Fields <bfields@redhat.com>
---
 drivers/staging/rtl8192e/rtllib.h              | 2 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
index 2dd57e88276e..096254e422b3 100644
--- a/drivers/staging/rtl8192e/rtllib.h
+++ b/drivers/staging/rtl8192e/rtllib.h
@@ -2132,7 +2132,7 @@ static inline const char *escape_essid(const char *essid, u8 essid_len)
 		return escaped;
 	}
 
-	snprintf(escaped, sizeof(escaped), "%*pEn", essid_len, essid);
+	snprintf(escaped, sizeof(escaped), "%*pE", essid_len, essid);
 	return escaped;
 }
 
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index d36963469015..3963a08b9eb2 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -2426,7 +2426,7 @@ static inline const char *escape_essid(const char *essid, u8 essid_len)
 		return escaped;
 	}
 
-	snprintf(escaped, sizeof(escaped), "%*pEn", essid_len, essid);
+	snprintf(escaped, sizeof(escaped), "%*pE", essid_len, essid);
 	return escaped;
 }
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
