Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F3621B402
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Jul 2020 13:31:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 580EF888AD;
	Fri, 10 Jul 2020 11:31:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fK1QjWPzvWda; Fri, 10 Jul 2020 11:31:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3D3948889E;
	Fri, 10 Jul 2020 11:31:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 25ABE1BF319
 for <devel@linuxdriverproject.org>; Fri, 10 Jul 2020 11:31:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 224378917B
 for <devel@linuxdriverproject.org>; Fri, 10 Jul 2020 11:31:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J3nHP-qZG2yU for <devel@linuxdriverproject.org>;
 Fri, 10 Jul 2020 11:31:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sa-prd-fep-045.btinternet.com (mailomta12-sa.btinternet.com
 [213.120.69.18])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8E3EA88408
 for <devel@driverdev.osuosl.org>; Fri, 10 Jul 2020 11:31:24 +0000 (UTC)
Received: from sa-prd-rgout-004.btmx-prd.synchronoss.net ([10.2.38.7])
 by sa-prd-fep-045.btinternet.com with ESMTP id
 <20200710113121.LAUG4112.sa-prd-fep-045.btinternet.com@sa-prd-rgout-004.btmx-prd.synchronoss.net>;
 Fri, 10 Jul 2020 12:31:21 +0100
Authentication-Results: btinternet.com;
 auth=pass (LOGIN) smtp.auth=j.oldman998@btinternet.com
X-Originating-IP: [31.53.71.41]
X-OWM-Source-IP: 31.53.71.41 (GB)
X-OWM-Env-Sender: j.oldman998@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeduiedrvddugdeggecutefuodetggdotefrodftvfcurfhrohhfihhlvgemuceutffkvffkuffjvffgnffgvefqofdpqfgfvfenuceurghilhhouhhtmecufedtudenucenucfjughrpefhvffufffkofestddtredtredttdenucfhrhhomheplfhohhhnucfqlhgumhgrnhcuoehjohhhnhdrohhlughmrghnsehpohhlvghhihhllhdrtghordhukheqnecuggftrfgrthhtvghrnhepgeeftdfhfeeuiefhgfekfeethedutddtfeduteevleevfedvfefhjeeijefhgffgnecukfhppeefuddrheefrdejuddrgedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohephhgvnhhrhidrhhhomhgvpdhinhgvthepfedurdehfedrjedurdeguddpmhgrihhlfhhrohhmpeeojhhohhhnrdholhgumhgrnhesphholhgvhhhilhhlrdgtohdruhhkqedprhgtphhtthhopeeonfgrrhhrhidrhfhinhhgvghrsehlfihfihhnghgvrhdrnhgvtheqpdhrtghpthhtohepoeguvghvvghlsegurhhivhgvrhguvghvrdhoshhuohhslhdrohhrgheqpdhrtghpthhtohepoehflhhorhhirghnrdgtrdhstghhihhlhhgrsggvlhesghhoohhglhgvmhgrihhlrdgtohhmqedprhgtphhtthhopeeoghhrvghgkhhhsehlihhnuhigfhhouhhnuggrthhiohhnrdhorhhgqedprhgtphhtthhopeeojhhohhhnrdholhgumhgrnhesphholhgvhhhilhhlrdgtohdruhhk
 qedprhgt
 phhtthhopeeolhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgqe
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from henry.home (31.53.71.41) by
 sa-prd-rgout-004.btmx-prd.synchronoss.net (5.8.340) (authenticated as
 j.oldman998@btinternet.com)
 id 5ED9B66106110673; Fri, 10 Jul 2020 12:31:21 +0100
From: John Oldman <john.oldman@polehill.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8712/: Using comparison to true is error prone
Date: Fri, 10 Jul 2020 12:31:13 +0100
Message-Id: <20200710113113.1648-1-john.oldman@polehill.co.uk>
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 John Oldman <john.oldman@polehill.co.uk>, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

clear below issues reported by checkpatch.pl:

CHECK: Using comparison to true is error prone
CHECK: Comparison to NULL should be written "!oldest"

Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 9ee1bfac0763..2ccd49032206 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -264,13 +264,13 @@ struct	wlan_network *r8712_get_oldest_wlan_network(
 	phead = &scanned_queue->queue;
 	plist = phead->next;
 	while (1) {
-		if (end_of_queue_search(phead, plist) ==  true)
+		if (end_of_queue_search(phead, plist))
 			break;
 		pwlan = container_of(plist, struct wlan_network, list);
-		if (pwlan->fixed != true) {
-			if (oldest == NULL ||
+		if (!pwlan->fixed) {
+			if (!oldest ||
 			    time_after((unsigned long)oldest->last_scanned,
-			    (unsigned long)pwlan->last_scanned))
+				       (unsigned long)pwlan->last_scanned))
 				oldest = pwlan;
 		}
 		plist = plist->next;
--
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
