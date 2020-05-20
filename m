Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EAF1DB9BC
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 May 2020 18:37:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B947288242;
	Wed, 20 May 2020 16:37:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M5e4-gJCGzPY; Wed, 20 May 2020 16:37:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C6D2B8821D;
	Wed, 20 May 2020 16:37:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 621321BF25F
 for <devel@linuxdriverproject.org>; Wed, 20 May 2020 16:37:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5D32E86F01
 for <devel@linuxdriverproject.org>; Wed, 20 May 2020 16:37:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1d9O-TD08B0D for <devel@linuxdriverproject.org>;
 Wed, 20 May 2020 16:37:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from re-prd-fep-045.btinternet.com (mailomta1-re.btinternet.com
 [213.120.69.94])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B47E786EB4
 for <devel@driverdev.osuosl.org>; Wed, 20 May 2020 16:37:49 +0000 (UTC)
Received: from re-prd-rgout-003.btmx-prd.synchronoss.net ([10.2.54.6])
 by re-prd-fep-045.btinternet.com with ESMTP id
 <20200520163747.HDJO4077.re-prd-fep-045.btinternet.com@re-prd-rgout-003.btmx-prd.synchronoss.net>;
 Wed, 20 May 2020 17:37:47 +0100
Authentication-Results: btinternet.com;
 auth=pass (LOGIN) smtp.auth=j.oldman998@btinternet.com
X-Originating-IP: [31.53.141.224]
X-OWM-Source-IP: 31.53.141.224 (GB)
X-OWM-Env-Sender: j.oldman998@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeduhedruddtledguddttdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemuceutffkvffkuffjvffgnffgvefqofdpqfgfvfenuceurghilhhouhhtmecufedtudenucenucfjughrpefhvffufffkofestddtredtredttdenucfhrhhomheplfhohhhnucfqlhgumhgrnhcuoehjohhhnhdrohhlughmrghnsehpohhlvghhihhllhdrtghordhukheqnecuggftrfgrthhtvghrnhepgeeftdfhfeeuiefhgfekfeethedutddtfeduteevleevfedvfefhjeeijefhgffgnecukfhppeefuddrheefrddugedurddvvdegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohephhgvnhhrhidrhhhomhgvpdhinhgvthepfedurdehfedrudeguddrvddvgedpmhgrihhlfhhrohhmpeeojhhohhhnrdholhgumhgrnhesphholhgvhhhilhhlrdgtohdruhhkqedprhgtphhtthhopeeouggvvhgvlhesughrihhvvghruggvvhdrohhsuhhoshhlrdhorhhgqedprhgtphhtthhopeeoghhrvghgkhhhsehlihhnuhigfhhouhhnuggrthhiohhnrdhorhhgqedprhgtphhtthhopeeojhhohhhnrdholhgumhgrnhesphholhgvhhhilhhlrdgtohdruhhkqedprhgtphhtthhopeeolhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgqe
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from henry.home (31.53.141.224) by
 re-prd-rgout-003.btmx-prd.synchronoss.net (5.8.340) (authenticated as
 j.oldman998@btinternet.com)
 id 5EC3CE9B003C9616; Wed, 20 May 2020 17:37:47 +0100
From: John Oldman <john.oldman@polehill.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192e:  Using comparison to true is error prone
Date: Wed, 20 May 2020 17:37:19 +0100
Message-Id: <20200520163719.14463-1-john.oldman@polehill.co.uk>
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
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix below issue reported by checkpatch.pl:

CHECK: Using comparison to true is error prone
CHECK: Using comparison to false is error prone

Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
---
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index b093b5629171..5b1392deb0a7 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -514,7 +514,7 @@ static void rtw_dev_remove(struct sdio_func *func)
 
 	rtw_unregister_netdevs(dvobj);
 
-	if (padapter->bSurpriseRemoved == false) {
+	if (!padapter->bSurpriseRemoved) {
 		int err;
 
 		/* test surprise remove */
@@ -554,12 +554,12 @@ static int rtw_sdio_suspend(struct device *dev)
 	struct adapter *padapter = psdpriv->if1;
 	struct debug_priv *pdbgpriv = &psdpriv->drv_dbg;
 
-	if (padapter->bDriverStopped == true) {
+	if (padapter->bDriverStopped) {
 		DBG_871X("%s bDriverStopped = %d\n", __func__, padapter->bDriverStopped);
 		return 0;
 	}
 
-	if (pwrpriv->bInSuspend == true) {
+	if (pwrpriv->bInSuspend) {
 		DBG_871X("%s bInSuspend = %d\n", __func__, pwrpriv->bInSuspend);
 		pdbgpriv->dbg_suspend_error_cnt++;
 		return 0;
@@ -574,7 +574,7 @@ static int rtw_resume_process(struct adapter *padapter)
 	struct dvobj_priv *psdpriv = padapter->dvobj;
 	struct debug_priv *pdbgpriv = &psdpriv->drv_dbg;
 
-	if (pwrpriv->bInSuspend == false) {
+	if (!pwrpriv->bInSuspend) {
 		pdbgpriv->dbg_resume_error_cnt++;
 		DBG_871X("%s bInSuspend = %d\n", __func__, pwrpriv->bInSuspend);
 		return -1;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
