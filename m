Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4F022D829
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jul 2020 16:37:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F26D186D1E;
	Sat, 25 Jul 2020 14:37:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WbzegBl0OxYa; Sat, 25 Jul 2020 14:37:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 872358659E;
	Sat, 25 Jul 2020 14:37:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D9331BF2A1
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 14:37:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2A5808654C
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 14:37:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dLTVWKDJoTB4 for <devel@linuxdriverproject.org>;
 Sat, 25 Jul 2020 14:37:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from re-prd-fep-046.btinternet.com (mailomta24-re.btinternet.com
 [213.120.69.117])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D88FF85D3D
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 14:37:31 +0000 (UTC)
Received: from re-prd-rgout-003.btmx-prd.synchronoss.net ([10.2.54.6])
 by re-prd-fep-046.btinternet.com with ESMTP id
 <20200725143729.HBPQ4657.re-prd-fep-046.btinternet.com@re-prd-rgout-003.btmx-prd.synchronoss.net>;
 Sat, 25 Jul 2020 15:37:29 +0100
Authentication-Results: btinternet.com;
 auth=pass (LOGIN) smtp.auth=j.oldman998@btinternet.com
X-Originating-IP: [86.152.161.91]
X-OWM-Source-IP: 86.152.161.91 (GB)
X-OWM-Env-Sender: j.oldman998@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeduiedrheehgdejlecutefuodetggdotefrodftvfcurfhrohhfihhlvgemuceutffkvffkuffjvffgnffgvefqofdpqfgfvfenuceurghilhhouhhtmecufedtudenucenucfjughrpefhvffufffkofestddtredtredttdenucfhrhhomheplfhohhhnucfqlhgumhgrnhcuoehjohhhnhdrohhlughmrghnsehpohhlvghhihhllhdrtghordhukheqnecuggftrfgrthhtvghrnhepgeeftdfhfeeuiefhgfekfeethedutddtfeduteevleevfedvfefhjeeijefhgffgnecukfhppeekiedrudehvddrudeiuddrledunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohephhgvnhhrhidrhhhomhgvpdhinhgvthepkeeirdduhedvrdduiedurdeluddpmhgrihhlfhhrohhmpeeojhhohhhnrdholhgumhgrnhesphholhgvhhhilhhlrdgtohdruhhkqedprhgtphhtthhopeeouggvvhgvlhesughrihhvvghruggvvhdrohhsuhhoshhlrdhorhhgqedprhgtphhtthhopeeoghhrvghgkhhhsehlihhnuhigfhhouhhnuggrthhiohhnrdhorhhgqedprhgtphhtthhopeeoghhushhtrghvohesvghmsggvugguvgguohhrrdgtohhmqedprhgtphhtthhopeeojhhohhhnrdholhgumhgrnhesphholhgvhhhilhhlrdgtohdruhhkqedprhgtphhtthhopeeolhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgqe
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from henry.home (86.152.161.91) by
 re-prd-rgout-003.btmx-prd.synchronoss.net (5.8.340) (authenticated as
 j.oldman998@btinternet.com)
 id 5ED9C2FD08ABC0DF; Sat, 25 Jul 2020 15:37:29 +0100
From: John Oldman <john.oldman@polehill.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH V3] staging: rtl8723bs: core: Using comparison to true is
 error prone
Date: Sat, 25 Jul 2020 15:37:12 +0100
Message-Id: <20200725143712.16667-1-john.oldman@polehill.co.uk>
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
Cc: devel@driverdev.osuosl.org, John Oldman <john.oldman@polehill.co.uk>,
 linux-kernel@vger.kernel.org, gustavo@embeddedor.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

clear below issues reported by checkpatch.pl:

CHECK: Using comparison to true is error prone

Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
---
v1- First attempt: removed comparison to true.
v2- Removed unneccessary parentheses around 'pregistrypriv->ht_enable, missed in v1.
v3- Corrected the 'odd' subject line; moved the || and && to the end of the line.

 drivers/staging/rtl8723bs/core/rtw_ieee80211.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index ca98274ae390..46fad71197b6 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -363,8 +363,9 @@ int rtw_generate_ie(struct registry_priv *pregistrypriv)
 	}

 	/* HT Cap. */
-	if (((pregistrypriv->wireless_mode&WIRELESS_11_5N) || (pregistrypriv->wireless_mode&WIRELESS_11_24N))
-		&& (pregistrypriv->ht_enable == true)) {
+	if (((pregistrypriv->wireless_mode & WIRELESS_11_5N) ||
+	     (pregistrypriv->wireless_mode & WIRELESS_11_24N)) &&
+	     pregistrypriv->ht_enable) {
 		/* todo: */
 	}

--
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
