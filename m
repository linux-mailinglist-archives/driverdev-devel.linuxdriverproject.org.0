Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D72EF1D56D7
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 May 2020 18:55:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 83EE987E2E;
	Fri, 15 May 2020 16:55:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jezfzklsPRvm; Fri, 15 May 2020 16:55:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 08C7486274;
	Fri, 15 May 2020 16:55:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9335C1BF28E
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 16:55:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8E55C88DFA
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 16:55:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 59z6R0S1pLiE for <devel@linuxdriverproject.org>;
 Fri, 15 May 2020 16:55:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from re-prd-fep-049.btinternet.com (mailomta26-re.btinternet.com
 [213.120.69.119])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8927F88DF3
 for <devel@driverdev.osuosl.org>; Fri, 15 May 2020 16:55:34 +0000 (UTC)
Received: from re-prd-rgout-002.btmx-prd.synchronoss.net ([10.2.54.5])
 by re-prd-fep-049.btinternet.com with ESMTP id
 <20200515165532.IPEA8801.re-prd-fep-049.btinternet.com@re-prd-rgout-002.btmx-prd.synchronoss.net>;
 Fri, 15 May 2020 17:55:32 +0100
Authentication-Results: btinternet.com;
 auth=pass (LOGIN) smtp.auth=j.oldman998@btinternet.com
X-Originating-IP: [31.53.141.224]
X-OWM-Source-IP: 31.53.141.224 (GB)
X-OWM-Env-Sender: j.oldman998@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeduhedrleekgddutdehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuueftkffvkffujffvgffngfevqffopdfqfgfvnecuuegrihhlohhuthemuceftddunecunecujfgurhephffvufffkffosedttdertdertddtnecuhfhrohhmpeflohhhnhcuqfhlughmrghnuceojhhohhhnrdholhgumhgrnhesphholhgvhhhilhhlrdgtohdruhhkqeenucggtffrrghtthgvrhhnpeegfedthfefueeihffgkeefteehuddttdefudetveelveefvdefhfejieejhffggfenucfkphepfedurdehfedrudeguddrvddvgeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopehhvghnrhihrdhhohhmvgdpihhnvghtpeefuddrheefrddugedurddvvdegpdhmrghilhhfrhhomhepoehjohhhnhdrohhlughmrghnsehpohhlvghhihhllhdrtghordhukheqpdhrtghpthhtohepoeguvghvvghlsegurhhivhgvrhguvghvrdhoshhuohhslhdrohhrgheqpdhrtghpthhtohepoehgrhgvghhkhheslhhinhhugihfohhunhgurghtihhonhdrohhrgheqpdhrtghpthhtohepoehjohhhnhdrohhlughmrghnsehpohhlvghhihhllhdrtghordhukheqpdhrtghpthhtohepoehkrghirdhhvghnghdrfhgvnhhgsegtrghnohhnihgtrghlrdgtohhmqedprhgtphhtthhopeeolhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
 qe
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from henry.home (31.53.141.224) by
 re-prd-rgout-002.btmx-prd.synchronoss.net (5.8.340) (authenticated as
 j.oldman998@btinternet.com)
 id 5E3A15B610AAE225; Fri, 15 May 2020 17:55:32 +0100
From: John Oldman <john.oldman@polehill.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: rtl8723bs: os_de: if-else coding style issue
Date: Fri, 15 May 2020 17:54:31 +0100
Message-Id: <20200515165431.12819-1-john.oldman@polehill.co.uk>
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
 kai.heng.feng@canonical.com, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Coding style issues:
This patch clears the checkpatch.pl "braces {} are not necessary for
single statement blocks" and "else_should_follow_close_brace"
warnings.

Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
---
v1: First attempt
v2: Followed The rule is that "if one side of the if else statement
has curly braces then all sides get curly braces even if they're
just one line long."

 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 33 ++++++++-------------
 1 file changed, 12 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index d29f59bbb613..50a3c2c3a8d2 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -1057,9 +1057,9 @@ static int pm_netdev_open(struct net_device *pnetdev, u8 bnormal)
 			status = _netdev_open(pnetdev);
 			mutex_unlock(&(adapter_to_dvobj(padapter)->hw_init_mutex));
 		}
-	}
-	else
+	} else {
 		status =  (_SUCCESS == ips_netdrv_open(padapter)) ? (0) : (-1);
+	}
 
 	return status;
 }
@@ -1192,8 +1192,7 @@ void rtw_dev_unload(struct adapter *padapter)
 		padapter->bup = false;
 
 		DBG_871X("<=== %s\n", __func__);
-	}
-	else {
+	} else {
 		RT_TRACE(_module_hci_intfs_c_, _drv_notice_, ("%s: bup ==false\n", __func__));
 		DBG_871X("%s: bup ==false\n", __func__);
 	}
@@ -1223,8 +1222,7 @@ static int rtw_suspend_free_assoc_resource(struct adapter *padapter)
 		rtw_disassoc_cmd(padapter, 0, false);
 		/* s2-2.  indicate disconnect to os */
 		rtw_indicate_disconnect(padapter);
-	}
-	else if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
+	} else if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
 		rtw_sta_flush(padapter);
 	}
 
@@ -1270,9 +1268,8 @@ void rtw_suspend_wow(struct adapter *padapter)
 		padapter->bDriverStopped = false;	/* for 32k command */
 
 		/*  2. disable interrupt */
-		if (padapter->intf_stop) {
+		if (padapter->intf_stop)
 			padapter->intf_stop(padapter);
-		}
 
 		/*  2.1 clean interrupt */
 		if (padapter->HalFunc.clear_interrupt)
@@ -1448,14 +1445,13 @@ int rtw_suspend_common(struct adapter *padapter)
 
 	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE) == true) {
 	#ifdef CONFIG_WOWLAN
-		if (check_fwstate(pmlmepriv, _FW_LINKED)) {
+		if (check_fwstate(pmlmepriv, _FW_LINKED))
 			pwrpriv->wowlan_mode = true;
-		} else if (pwrpriv->wowlan_pno_enable == true) {
+		else if (pwrpriv->wowlan_pno_enable == true)
 			pwrpriv->wowlan_mode |= pwrpriv->wowlan_pno_enable;
-		}
 
 		if (pwrpriv->wowlan_mode == true)
-		rtw_suspend_wow(padapter);
+			rtw_suspend_wow(padapter);
 		else
 			rtw_suspend_normal(padapter);
 
@@ -1522,9 +1518,8 @@ int rtw_resume_process_wow(struct adapter *padapter)
 
 		pwrpriv->bFwCurrentInPSMode = false;
 
-		if (padapter->intf_stop) {
+		if (padapter->intf_stop)
 			padapter->intf_stop(padapter);
-		}
 
 		if (padapter->HalFunc.clear_interrupt)
 			padapter->HalFunc.clear_interrupt(padapter);
@@ -1541,18 +1536,15 @@ int rtw_resume_process_wow(struct adapter *padapter)
 		padapter->HalFunc.SetHwRegHandler(padapter, HW_VAR_WOWLAN, (u8 *)&poidparam);
 
 		psta = rtw_get_stainfo(&padapter->stapriv, get_bssid(&padapter->mlmepriv));
-		if (psta) {
+		if (psta)
 			set_sta_rate(padapter, psta);
-		}
-
 
 		padapter->bDriverStopped = false;
 		DBG_871X("%s: wowmode resuming, DriverStopped:%d\n", __func__, padapter->bDriverStopped);
 		rtw_start_drv_threads(padapter);
 
-		if (padapter->intf_start) {
+		if (padapter->intf_start)
 			padapter->intf_start(padapter);
-		}
 
 		/*  start netif queue */
 		if (pnetdev) {
@@ -1656,9 +1648,8 @@ int rtw_resume_process_ap_wow(struct adapter *padapter)
 	DBG_871X("%s: wowmode resuming, DriverStopped:%d\n", __func__, padapter->bDriverStopped);
 	rtw_start_drv_threads(padapter);
 
-	if (padapter->intf_start) {
+	if (padapter->intf_start)
 		padapter->intf_start(padapter);
-	}
 
 	/*  start netif queue */
 	if (pnetdev) {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
