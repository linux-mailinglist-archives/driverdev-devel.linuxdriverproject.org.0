Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76408309C4D
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 Jan 2021 14:13:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0F0C585C05;
	Sun, 31 Jan 2021 13:13:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fdICJFbno3Wv; Sun, 31 Jan 2021 13:13:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 70D0E85BB8;
	Sun, 31 Jan 2021 13:12:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CAE681BF40F
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 13:12:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C7BF685BB8
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 13:12:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V6pY3kCc0Byv for <devel@linuxdriverproject.org>;
 Sun, 31 Jan 2021 13:12:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-of-o58.zoho.com (sender4-of-o58.zoho.com
 [136.143.188.58])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1724D85A76
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 13:12:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1612098770; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=kXSyYXt0OU15b8rLJdEhfl71YU5MajyPTWxa+eSNZc/RSb2yX5glkZuibhUAh5+f/bm+zg8+ejb3BAIjgQVa8Kseh4RS5JEgeo8rxrAZNjWEVy5dyi+GP9SRMEjnDFBeqvD2Ub5HovDtCYU8yOgjSBtSWHSu8DneNVW2N2c5+js=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1612098770;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To;
 bh=22IBYo2i14umdP+4J3CM8H7ACHcSueDSklVkBVbnYis=; 
 b=VA74wJPpdoLymBuwd0CyUSqZffHnDzHbDBDVwDiSr+nukce5gH0oy2KCZkQtfV7uB6FNwLu22ZATdQABoGVP/hZD2+YIV+nmKCRJbzSbL/bf0bH5MxWYmeKE66QXgljcxCA1ZaAPqVB+er7cvD9sZKZn8qWKAEBOYS6qFW74CQo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=anirudhrb.com;
 spf=pass  smtp.mailfrom=mail@anirudhrb.com;
 dmarc=pass header.from=<mail@anirudhrb.com> header.from=<mail@anirudhrb.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1612098770; 
 s=zoho; d=anirudhrb.com; i=mail@anirudhrb.com;
 h=From:To:Cc:Message-ID:Subject:Date:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=22IBYo2i14umdP+4J3CM8H7ACHcSueDSklVkBVbnYis=;
 b=H8Mmf1BwIasinSm8BHXBRZWwZL7HJLo3WJLKOppLLiXWet3d3j+8VMld3rVF+MQ7
 B7lywAZ651RcLctofcTqAy0/xLgAmlRiRwCnrbiXecM5IJrUOnaBVMbSFLzywxqgECX
 SCX9MtxFC/su//N1NSuBoUbXP9RvB6TutOzC6Nu4=
Received: from localhost.localdomain (106.51.110.132 [106.51.110.132]) by
 mx.zohomail.com with SMTPS id 161209876836540.51516286602123;
 Sun, 31 Jan 2021 05:12:48 -0800 (PST)
From: Anirudh Rayabharam <mail@anirudhrb.com>
To: gregkh@linuxfoundation.org, jane.pnx9@gmail.com, john.oldman@polehill.co.uk
Message-ID: <20210131131226.16917-1-mail@anirudhrb.com>
Subject: [PATCH] staging: rtl8192u/ieee80211: fix switch case indentation
Date: Sun, 31 Jan 2021 18:42:26 +0530
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-ZohoMailClient: External
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
Cc: devel@driverdev.osuosl.org, Anirudh Rayabharam <mail@anirudhrb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Make switch and case to be at the same indent. This fixes the
checkpatch error "switch and case should be at the same indent".

Signed-off-by: Anirudh Rayabharam <mail@anirudhrb.com>
---
 .../staging/rtl8192u/ieee80211/ieee80211_tx.c | 28 +++++++++----------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index 63a561ab4a76..bd8914645e95 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -327,20 +327,20 @@ static void ieee80211_tx_query_agg_cap(struct ieee80211_device *ieee,
 	}
 FORCED_AGG_SETTING:
 	switch (pHTInfo->ForcedAMPDUMode) {
-		case HT_AGG_AUTO:
-			break;
-
-		case HT_AGG_FORCE_ENABLE:
-			tcb_desc->bAMPDUEnable = true;
-			tcb_desc->ampdu_density = pHTInfo->ForcedMPDUDensity;
-			tcb_desc->ampdu_factor = pHTInfo->ForcedAMPDUFactor;
-			break;
-
-		case HT_AGG_FORCE_DISABLE:
-			tcb_desc->bAMPDUEnable = false;
-			tcb_desc->ampdu_density = 0;
-			tcb_desc->ampdu_factor = 0;
-			break;
+	case HT_AGG_AUTO:
+		break;
+
+	case HT_AGG_FORCE_ENABLE:
+		tcb_desc->bAMPDUEnable = true;
+		tcb_desc->ampdu_density = pHTInfo->ForcedMPDUDensity;
+		tcb_desc->ampdu_factor = pHTInfo->ForcedAMPDUFactor;
+		break;
+
+	case HT_AGG_FORCE_DISABLE:
+		tcb_desc->bAMPDUEnable = false;
+		tcb_desc->ampdu_density = 0;
+		tcb_desc->ampdu_factor = 0;
+		break;
 
 	}
 		return;
-- 
2.26.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
