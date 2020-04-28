Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F381BC697
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 19:27:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 92F5E882AF;
	Tue, 28 Apr 2020 17:27:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pekzfWWGq0-y; Tue, 28 Apr 2020 17:27:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CD46388275;
	Tue, 28 Apr 2020 17:27:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2274C1BF857
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 17:27:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1EA158648E
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 17:27:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cVXDaeB_TSAh for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 17:27:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sa-prd-fep-045.btinternet.com (mailomta10-sa.btinternet.com
 [213.120.69.16])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 664AB86463
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 17:27:03 +0000 (UTC)
Received: from sa-prd-rgout-003.btmx-prd.synchronoss.net ([10.2.38.6])
 by sa-prd-fep-045.btinternet.com with ESMTP id
 <20200428172701.RJQE15999.sa-prd-fep-045.btinternet.com@sa-prd-rgout-003.btmx-prd.synchronoss.net>;
 Tue, 28 Apr 2020 18:27:01 +0100
Authentication-Results: btinternet.com;
 auth=pass (LOGIN) smtp.auth=j.oldman998@btinternet.com
X-Originating-IP: [86.162.174.118]
X-OWM-Source-IP: 86.162.174.118 (GB)
X-OWM-Env-Sender: j.oldman998@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeduhedriedugdduuddvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuueftkffvkffujffvgffngfevqffopdfqfgfvnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffosedttdertdertddtnecuhfhrohhmpeflohhhnhcuqfhlughmrghnuceojhhohhhnrdholhgumhgrnhesphholhgvhhhilhhlrdgtohdruhhkqeenucfkphepkeeirdduiedvrddujeegrdduudeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohephhgvnhhrhidrhhhomhgvpdhinhgvthepkeeirdduiedvrddujeegrdduudekpdhmrghilhhfrhhomhepoehjohhhnhdrohhlughmrghnsehpohhlvghhihhllhdrtghordhukheqpdhrtghpthhtohepoeguvghvvghlsegurhhivhgvrhguvghvrdhoshhuohhslhdrohhrgheqpdhrtghpthhtohepoehgrhgvghhkhheslhhinhhugihfohhunhgurghtihhonhdrohhrgheqpdhrtghpthhtohepoehhvhgvrhhkuhhilhesgihsgegrlhhlrdhnlheqpdhrtghpthhtohepoehjohhhnhdrohhlughmrghnsehpohhlvghhihhllhdrtghordhukheqpdhrtghpthhtohepoehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgheqpdhrtghpthhtohepoehlihhnuhigqdhmvgguihgrsehvghgvrhdrkhgvrhhnvghlrdhorhhgqedprhgtphhtthhopeeomhgthhgv
 hhgrsges
 khgvrhhnvghlrdhorhhgqedprhgtphhtthhopeeothhglhigsehlihhnuhhtrhhonhhigidruggvqe
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from henry.home (86.162.174.118) by
 sa-prd-rgout-003.btmx-prd.synchronoss.net (5.8.340) (authenticated as
 j.oldman998@btinternet.com)
 id 5E3A268A0DD3C544; Tue, 28 Apr 2020 18:27:01 +0100
From: John Oldman <john.oldman@polehill.co.uk>
To: hverkuil@xs4all.nl
Subject: [PATCH] staging: media: usbvision: usbvision-core Correct spelling
Date: Tue, 28 Apr 2020 18:26:55 +0100
Message-Id: <20200428172655.30227-1-john.oldman@polehill.co.uk>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, John Oldman <john.oldman@polehill.co.uk>,
 tglx@linutronix.de, mchehab@kernel.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Correct spelling in comment

Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
---
 drivers/staging/media/usbvision/usbvision-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/usbvision/usbvision-core.c b/drivers/staging/media/usbvision/usbvision-core.c
index f05a5c84dc18..e35dee35b068 100644
--- a/drivers/staging/media/usbvision/usbvision-core.c
+++ b/drivers/staging/media/usbvision/usbvision-core.c
@@ -1268,7 +1268,7 @@ static void usbvision_isoc_irq(struct urb *urb)
 	if (!USBVISION_IS_OPERATIONAL(usbvision))
 		return;
 
-	/* any urb with wrong status is ignored without acknowledgement */
+	/* any urb with wrong status is ignored without acknowledgment */
 	if (urb->status == -ENOENT)
 		return;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
