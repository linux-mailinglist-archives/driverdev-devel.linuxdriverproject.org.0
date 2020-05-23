Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2671DFB91
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 May 2020 01:03:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3B43A86978;
	Sat, 23 May 2020 23:03:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dYBKdZAY_fCn; Sat, 23 May 2020 23:03:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D64FE86962;
	Sat, 23 May 2020 23:03:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9364A1BF405
 for <devel@linuxdriverproject.org>; Sat, 23 May 2020 23:03:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 74453215DF
 for <devel@linuxdriverproject.org>; Sat, 23 May 2020 23:03:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zWIWlvl6m7lX for <devel@linuxdriverproject.org>;
 Sat, 23 May 2020 23:03:41 +0000 (UTC)
X-Greylist: delayed 01:30:13 by SQLgrey-1.7.6
Received: from mail-pg1-f201.google.com (mail-pg1-f201.google.com
 [209.85.215.201])
 by silver.osuosl.org (Postfix) with ESMTPS id 453E320494
 for <devel@driverdev.osuosl.org>; Sat, 23 May 2020 23:03:41 +0000 (UTC)
Received: by mail-pg1-f201.google.com with SMTP id x3so11106406pgl.2
 for <devel@driverdev.osuosl.org>; Sat, 23 May 2020 16:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=2bby9cI45fyWKXrKxGRnCB0PRSUsYL3TkgfMjCuANdc=;
 b=dNeKxX1T//NGG+vd4uYpN00vNrJRS7onBOZtFFDXQPplWUpavI0ZRFPSGOxiUoCKkL
 9ulpdOjmwUdhFktPdMKioK1Z3sZ3cX6mcNzWzqRQYt9DojkHv6yMNNq2Zj6ftm0QcxN5
 tH72kJn7qHRu5p6FiMKXPNOPoYqeuSO7Kov2urHL6Cu7Y5R5AU+h5B0XXH0pmvozrnsU
 ZZz9aaLYUBrYvWwkE9PAdx6ghEB3KDmYt87ovSQ/mEq/geuIu8Sjd4Lre8fx/p1vboqD
 f+SqAQX9fJmbaZv1QCqR6bqAPfI+/yuHt4wpM1agiK+Va+I63YrWPRTtGFHFhbFrE5l4
 M30g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=2bby9cI45fyWKXrKxGRnCB0PRSUsYL3TkgfMjCuANdc=;
 b=tFKif+pjDQapc09N5lD8BOWJlyO+vE1CeDQ6FLAQGtDj9sn9m6/3NMS0tfneb8iq84
 IkbB9yktwdQamWF3gtA/DC32k7DTs8IwkwW25JF/OPhJFbyzJX3glKxooouMLjd8FDf+
 4eF3pc10dP4lLDZNmvq+bj6ajG403AMr7+ADMUOdFCzMNXnCrcDr++wVss0rSuuT1Qiq
 jqxDO4TPGYxXgjrNJaQYAgElM0cqXEY7GaDplT4Lgq7GoIs+KXAJlPsdnhV0Adb6hbX9
 K66Np/A/w38TnCFdwmnY2ODn/pqnGUwAnab1HgpsesSTTJo/j3c83fOMZ/7eRhcWb3JR
 6/nQ==
X-Gm-Message-State: AOAM532u7DNTAvcxSA4/LhZ348OwWqQpQDVdkh4G2QaqYHcoOocDciYZ
 hVpjEDw081XJHlCk5NBt91U0cB+3IIyA
X-Google-Smtp-Source: ABdhPJwcJbwcvkxkyoyFSZSbn82VKMzlrI84RDXWlN8XaC46q1B7drpSxXma/Hm3zmPp9rGVqI2twciQSTlq
X-Received: by 2002:a0c:a5c5:: with SMTP id z63mr9694727qvz.50.1590268381597; 
 Sat, 23 May 2020 14:13:01 -0700 (PDT)
Date: Sat, 23 May 2020 22:12:47 +0100
Message-Id: <20200523211247.23262-1-pterjan@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.rc0.183.gde8f92d652-goog
Subject: [PATCH] staging: rtl8712: Fix IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK
From: Pascal Terjan <pterjan@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Taihsiang Ho (tai271828)" <tai271828@gmail.com>, devel@driverdev.osuosl.org, 
 linux-kernel@vger.kernel.org
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
Cc: Pascal Terjan <pterjan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The value in shared headers was fixed 9 years ago in commit 8d661f1e462d
("ieee80211: correct IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK macro") and
while looking at using shared headers for other duplicated constants
I noticed this driver uses the old value.

The macros are also defined twice in this file so I am deleting the
second definition.

Signed-off-by: Pascal Terjan <pterjan@google.com>
---
 drivers/staging/rtl8712/wifi.h | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
index be731f1a2209..91b65731fcaa 100644
--- a/drivers/staging/rtl8712/wifi.h
+++ b/drivers/staging/rtl8712/wifi.h
@@ -440,7 +440,7 @@ static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
 /* block-ack parameters */
 #define IEEE80211_ADDBA_PARAM_POLICY_MASK 0x0002
 #define IEEE80211_ADDBA_PARAM_TID_MASK 0x003C
-#define IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK 0xFFA0
+#define IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK 0xFFC0
 #define IEEE80211_DELBA_PARAM_TID_MASK 0xF000
 #define IEEE80211_DELBA_PARAM_INITIATOR_MASK 0x0800
 
@@ -532,13 +532,6 @@ struct ieee80211_ht_addt_info {
 #define IEEE80211_HT_IE_NON_GF_STA_PRSNT	0x0004
 #define IEEE80211_HT_IE_NON_HT_STA_PRSNT	0x0010
 
-/* block-ack parameters */
-#define IEEE80211_ADDBA_PARAM_POLICY_MASK 0x0002
-#define IEEE80211_ADDBA_PARAM_TID_MASK 0x003C
-#define IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK 0xFFA0
-#define IEEE80211_DELBA_PARAM_TID_MASK 0xF000
-#define IEEE80211_DELBA_PARAM_INITIATOR_MASK 0x0800
-
 /*
  * A-PMDU buffer sizes
  * According to IEEE802.11n spec size varies from 8K to 64K (in powers of 2)
-- 
2.27.0.rc0.183.gde8f92d652-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
