Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C821D4E12
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 May 2020 14:50:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7E4D387D7F;
	Fri, 15 May 2020 12:50:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zp2JLexHy8Wa; Fri, 15 May 2020 12:50:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7BC4187D80;
	Fri, 15 May 2020 12:49:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5A99D1BF2A1
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 12:49:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 56F15899A5
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 12:49:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GgOkGZFeHiIl for <devel@linuxdriverproject.org>;
 Fri, 15 May 2020 12:49:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sa-prd-fep-040.btinternet.com (mailomta28-sa.btinternet.com
 [213.120.69.34])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4C56189999
 for <devel@driverdev.osuosl.org>; Fri, 15 May 2020 12:49:48 +0000 (UTC)
Received: from sa-prd-rgout-001.btmx-prd.synchronoss.net ([10.2.38.4])
 by sa-prd-fep-040.btinternet.com with ESMTP id
 <20200515124946.FHRG4600.sa-prd-fep-040.btinternet.com@sa-prd-rgout-001.btmx-prd.synchronoss.net>;
 Fri, 15 May 2020 13:49:46 +0100
Authentication-Results: btinternet.com;
 auth=pass (LOGIN) smtp.auth=j.oldman998@btinternet.com
X-Originating-IP: [31.53.141.224]
X-OWM-Source-IP: 31.53.141.224 (GB)
X-OWM-Env-Sender: j.oldman998@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeduhedrleekgdehhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemuceutffkvffkuffjvffgnffgvefqofdpqfgfvfenuceurghilhhouhhtmecufedtudenucenucfjughrpefhvffufffkofestddtredtredttdenucfhrhhomheplfhohhhnucfqlhgumhgrnhcuoehjohhhnhdrohhlughmrghnsehpohhlvghhihhllhdrtghordhukheqnecuggftrfgrthhtvghrnhepgeeftdfhfeeuiefhgfekfeethedutddtfeduteevleevfedvfefhjeeijefhgffgnecukfhppeefuddrheefrddugedurddvvdegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohephhgvnhhrhidrhhhomhgvpdhinhgvthepfedurdehfedrudeguddrvddvgedpmhgrihhlfhhrohhmpeeojhhohhhnrdholhgumhgrnhesphholhgvhhhilhhlrdgtohdruhhkqedprhgtphhtthhopeeouggvvhgvlhesughrihhvvghruggvvhdrohhsuhhoshhlrdhorhhgqedprhgtphhtthhopeeoghhrvghgkhhhsehlihhnuhigfhhouhhnuggrthhiohhnrdhorhhgqedprhgtphhtthhopeeojhhohhhnrdholhgumhgrnhesphholhgvhhhilhhlrdgtohdruhhkqedprhgtphhtthhopeeokhgrihdrhhgvnhhgrdhfvghnghestggrnhhonhhitggrlhdrtghomheqpdhrtghpthhtohepoehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgheq
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from henry.home (31.53.141.224) by
 sa-prd-rgout-001.btmx-prd.synchronoss.net (5.8.340) (authenticated as
 j.oldman998@btinternet.com)
 id 5E3A241110D07693; Fri, 15 May 2020 13:49:46 +0100
From: John Oldman <john.oldman@polehill.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: rtl8723bs: os_de: if-else coding style issues
Date: Fri, 15 May 2020 13:49:30 +0100
Message-Id: <20200515124930.3406-1-john.oldman@polehill.co.uk>
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
warnings."

Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 49 +++++++--------------
 1 file changed, 17 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index d29f59bbb613..479049cb16e5 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -1057,8 +1057,7 @@ static int pm_netdev_open(struct net_device *pnetdev, u8 bnormal)
 			status = _netdev_open(pnetdev);
 			mutex_unlock(&(adapter_to_dvobj(padapter)->hw_init_mutex));
 		}
-	}
-	else
+	} else
 		status =  (_SUCCESS == ips_netdrv_open(padapter)) ? (0) : (-1);
 
 	return status;
@@ -1167,9 +1166,8 @@ void rtw_dev_unload(struct adapter *padapter)
 			DBG_871X_LEVEL(_drv_always_, "%s: driver in IPS-FWLPS\n", __func__);
 			pdbgpriv->dbg_dev_unload_inIPS_cnt++;
 			LeaveAllPowerSaveMode(padapter);
-		} else {
+		} else
 			DBG_871X_LEVEL(_drv_always_, "%s: driver not in IPS\n", __func__);
-		}
 
 		if (padapter->bSurpriseRemoved == false) {
 			hal_btcoex_IpsNotify(padapter, pwrctl->ips_mode_req);
@@ -1177,8 +1175,7 @@ void rtw_dev_unload(struct adapter *padapter)
 			if (pwrctl->bSupportRemoteWakeup == true &&
 				pwrctl->wowlan_mode == true) {
 				DBG_871X_LEVEL(_drv_always_, "%s bSupportRemoteWakeup ==true  do not run rtw_hal_deinit()\n", __func__);
-			}
-			else
+			} else
 #endif
 			{
 				/* amy modify 20120221 for power seq is different between driver open and ips */
@@ -1192,8 +1189,7 @@ void rtw_dev_unload(struct adapter *padapter)
 		padapter->bup = false;
 
 		DBG_871X("<=== %s\n", __func__);
-	}
-	else {
+	} else {
 		RT_TRACE(_module_hci_intfs_c_, _drv_notice_, ("%s: bup ==false\n", __func__));
 		DBG_871X("%s: bup ==false\n", __func__);
 	}
@@ -1223,10 +1219,8 @@ static int rtw_suspend_free_assoc_resource(struct adapter *padapter)
 		rtw_disassoc_cmd(padapter, 0, false);
 		/* s2-2.  indicate disconnect to os */
 		rtw_indicate_disconnect(padapter);
-	}
-	else if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
+	} else if (check_fwstate(pmlmepriv, WIFI_AP_STATE))
 		rtw_sta_flush(padapter);
-	}
 
 	/* s2-3. */
 	rtw_free_assoc_resources(padapter, 1);
@@ -1264,15 +1258,15 @@ void rtw_suspend_wow(struct adapter *padapter)
 	if (pwrpriv->wowlan_mode == true) {
 		if (pnetdev)
 			rtw_netif_stop_queue(pnetdev);
+
 		/*  1. stop thread */
 		padapter->bDriverStopped = true;	/* for stop thread */
 		rtw_stop_drv_threads(padapter);
 		padapter->bDriverStopped = false;	/* for 32k command */
 
 		/*  2. disable interrupt */
-		if (padapter->intf_stop) {
+		if (padapter->intf_stop)
 			padapter->intf_stop(padapter);
-		}
 
 		/*  2.1 clean interrupt */
 		if (padapter->HalFunc.clear_interrupt)
@@ -1316,10 +1310,9 @@ void rtw_suspend_wow(struct adapter *padapter)
 			DBG_871X_LEVEL(_drv_always_, "%s: pno: %d\n", __func__, pwrpriv->wowlan_pno_enable);
 		else
 			rtw_set_ps_mode(padapter, PS_MODE_DTIM, 0, 0, "WOWLAN");
-	}
-	else {
+	} else
 		DBG_871X_LEVEL(_drv_always_, "%s: ### ERROR ### wowlan_mode =%d\n", __func__, pwrpriv->wowlan_mode);
-	}
+
 	DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", FUNC_ADPT_ARG(padapter));
 }
 #endif /* ifdef CONFIG_WOWLAN */
@@ -1448,14 +1441,13 @@ int rtw_suspend_common(struct adapter *padapter)
 
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
 
@@ -1522,9 +1514,8 @@ int rtw_resume_process_wow(struct adapter *padapter)
 
 		pwrpriv->bFwCurrentInPSMode = false;
 
-		if (padapter->intf_stop) {
+		if (padapter->intf_stop)
 			padapter->intf_stop(padapter);
-		}
 
 		if (padapter->HalFunc.clear_interrupt)
 			padapter->HalFunc.clear_interrupt(padapter);
@@ -1541,18 +1532,15 @@ int rtw_resume_process_wow(struct adapter *padapter)
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
@@ -1561,10 +1549,8 @@ int rtw_resume_process_wow(struct adapter *padapter)
 			else
 				rtw_netif_wake_queue(pnetdev);
 		}
-	}
-	else {
+	} else
 		DBG_871X_LEVEL(_drv_always_, "%s: ### ERROR ### wowlan_mode =%d\n", __func__, pwrpriv->wowlan_mode);
-	}
 
 	if (padapter->pid[1] != 0) {
 		DBG_871X("pid[1]:%d\n", padapter->pid[1]);
@@ -1656,9 +1642,8 @@ int rtw_resume_process_ap_wow(struct adapter *padapter)
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
