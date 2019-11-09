Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 861CAF5F76
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 Nov 2019 15:10:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1E7088671E;
	Sat,  9 Nov 2019 14:10:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YC75gvdry73s; Sat,  9 Nov 2019 14:10:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D118284B39;
	Sat,  9 Nov 2019 14:10:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A25A1BF27F
 for <devel@linuxdriverproject.org>; Sat,  9 Nov 2019 14:10:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 76268204FC
 for <devel@linuxdriverproject.org>; Sat,  9 Nov 2019 14:10:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e4tw3bFv+gOR for <devel@linuxdriverproject.org>;
 Sat,  9 Nov 2019 14:10:00 +0000 (UTC)
X-Greylist: delayed 00:30:36 by SQLgrey-1.7.6
Received: from m12-15.163.com (m12-15.163.com [220.181.12.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 3C8D820116
 for <devel@driverdev.osuosl.org>; Sat,  9 Nov 2019 14:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=uB1YLWFgB0H4kqFXea
 N2dQC0stXGaM+JHrO+t1N3wP8=; b=kG2dqz3a3VhuwAlq9gJTENHgIO5bV5+l2C
 xl8pAuvwMd/qelTvZhbLXZnzNNMUPqxjG3IIXlMe5HY3tZRMbQvx5W6sS/XHCDzZ
 MS265wltc6FV5pdpBumcfxywNTh3qoJ2aXG0T1ljwXCQH6hHN3hGQIZv0wN1N9k5
 ZDnleGo6I=
Received: from 192.168.137.242 (unknown [112.10.75.191])
 by smtp3 (Coremail) with SMTP id DcmowABn1PX1wMZd7M8zAQ--.33380S3;
 Sat, 09 Nov 2019 21:36:54 +0800 (CST)
From: Xianting Tian <xianting_tian@126.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192u: Fix typo in comment
Date: Sat,  9 Nov 2019 08:36:54 -0500
Message-Id: <1573306614-21490-1-git-send-email-xianting_tian@126.com>
X-Mailer: git-send-email 1.8.3.1
X-CM-TRANSID: DcmowABn1PX1wMZd7M8zAQ--.33380S3
X-Coremail-Antispam: 1Uf129KBjvdXoWrZF18Cr1kKFW3Cw17Gry5twb_yoWDZFX_Zr
 1Sqrs7GrnIyr1Sqr4DGr4rZa4SgrW2qrZ2vF4F934akrs8AF4rArZ7W3WUGrW7uFWj9F9x
 Aw47Gryftw1xujkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUnTE_tUUUUU==
X-Originating-IP: [112.10.75.191]
X-CM-SenderInfo: h0ld03plqjs3xldqqiyswou0bp/1tbi5hZopFpD9DJGcwAAsW
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the typo "cheked" -> "checked" in comment

Signed-off-by: Xianting Tian <xianting_tian@126.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 33a6af7..bd5b554 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -2331,7 +2331,7 @@ void ieee80211_start_bss(struct ieee80211_device *ieee)
 
 	/* ensure no-one start an associating process (thus setting
 	 * the ieee->state to ieee80211_ASSOCIATING) while we
-	 * have just cheked it and we are going to enable scan.
+	 * have just checked it and we are going to enable scan.
 	 * The ieee80211_new_net function is always called with
 	 * lock held (from both ieee80211_softmac_check_all_nets and
 	 * the rx path), so we cannot be in the middle of such function
-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
