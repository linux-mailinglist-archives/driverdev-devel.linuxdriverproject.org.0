Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FB3242CD8
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 18:08:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 420AB88248;
	Wed, 12 Aug 2020 16:07:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CLdieeKKB-Ob; Wed, 12 Aug 2020 16:07:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D0B5188144;
	Wed, 12 Aug 2020 16:07:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4BB051BF4DD
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 16:07:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4833687C7D
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 16:07:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e23yA6UHXLMK for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 16:07:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2DF4F87B05
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 16:07:53 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id qc22so2875358ejb.4
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 09:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=roFWW4idZSPrkc+cb/iYIWliDRvt+NhQWTQEf1GtCyw=;
 b=ubhnaz54GTYc6qTGiyUNH9W+bQXnxPga4CQ3bqcohpsujpPNoRj/xyZ/EiTr+4kaVs
 NgmDOE61mDvVuxyy3Aj+rJ4nyxVHVWbINKaXxrehiJnjGKibfOdzGDyYRojKj9h/wHqf
 AZOOrWTwpLOjO2FcyyZSa1J/CZpLiQcfSFJ4N4YHX78rix1NI+XpAFhe/6wY+Smi/bYY
 gW+bW5IgxUvNYTkR7KMVsvnc3lUO7DeFxZc6UoLF6stt1QQFuv8Q2A4XTG5DQI88zcDL
 EIie5be8TpZYv6vxXHuz+7TLj5N3UlqcJCs46PTpppRIahRI62vVp5ituRaozhO0K1Dh
 AcDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=roFWW4idZSPrkc+cb/iYIWliDRvt+NhQWTQEf1GtCyw=;
 b=SOJ20vVNXsLVic2/9MT+QpPUPcTkO3NVbbcPxEh0PovJTjOEZNeIHgoJPE2206rcxK
 2jMYRrHpLgqkOZAUivBmf3+fZgsvksMpPAlk/2fUvtQuB38VcHbdrENZuHWPuDI5ZXAY
 hMpKHa8HzmczqCm+nWRVb2UE2ofS9ALWR5hm1sQYeuFTk4b2SJhJF09bWBCHRmJYVMX+
 WitkFNbI8neVaUWmaY0Rpncbilnby7XHzTHBpfmFff/dyRAvRHXdmabvDcFMR0gqrSp3
 nZ8N3Wi/K34KKpKWUytdYGydDpg1CHgF1L7V+dlsF+s7N5CS4Z1BeRQ9j6klzlukYpuJ
 bCKQ==
X-Gm-Message-State: AOAM532Z0IWP20q+AheFugAuMHGewgHL7U1JdVesnuBwYjr4yXVQPi0e
 FWttx/0BBfeE7jNj5+qcY7o=
X-Google-Smtp-Source: ABdhPJwrSR6wbm8JIlxtPyFsKHUfOigzmG1n/hbWAdHohIrsTMtzqcSLbTnAspzlbzTVDYPig5r/Kw==
X-Received: by 2002:a17:906:1a0f:: with SMTP id
 i15mr500757ejf.293.1597248471360; 
 Wed, 12 Aug 2020 09:07:51 -0700 (PDT)
Received: from localhost.localdomain ([2001:8f8:1821:74c4:6c84:35b4:48ac:419a])
 by smtp.gmail.com with ESMTPSA id b9sm1948823ejz.57.2020.08.12.09.07.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Aug 2020 09:07:50 -0700 (PDT)
From: Mohammed Rushad <mohammedrushad@gmail.com>
To: gregkh@linuxfoundation.org, john.oldman@polehill.co.uk,
 kai.heng.feng@canonical.com, luk@wybcz.pl, vkor@vkten.in,
 nachukannan@gmail.com, mohammedrushad@gmail.com, hdegoede@redhat.com
Subject: [PATCH] staging: rtl8723bs: os_dep: fix function-name print using
 __func__
Date: Wed, 12 Aug 2020 21:37:45 +0530
Message-Id: <20200812160745.7215-1-mohammedrushad@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch to the os_intfs.c fixes the printing of function names using
the preferred '"%s...", __func__' and alignment issues as pointed out by
the checkpatch.pl tool.

Signed-off-by: Mohammed Rushad <mohammedrushad@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 56 +++++++++++----------
 1 file changed, 29 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 27f990a01a23..0460db4ae660 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -400,17 +400,17 @@ u16 rtw_recv_select_queue(struct sk_buff *skb)
 	memcpy(&eth_type, pdata + (ETH_ALEN << 1), 2);
 
 	switch (be16_to_cpu(eth_type)) {
-		case ETH_P_IP:
+	case ETH_P_IP:
 
-			piphdr = (struct iphdr *)(pdata + ETH_HLEN);
+		piphdr = (struct iphdr *)(pdata + ETH_HLEN);
 
-			dscp = piphdr->tos & 0xfc;
+		dscp = piphdr->tos & 0xfc;
 
-			priority = dscp >> 5;
+		priority = dscp >> 5;
 
-			break;
-		default:
-			priority = 0;
+		break;
+	default:
+		priority = 0;
 	}
 
 	return rtw_1d_to_queue[priority];
@@ -539,7 +539,7 @@ u32 rtw_start_drv_threads(struct adapter *padapter)
 {
 	u32 _status = _SUCCESS;
 
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_start_drv_threads\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+%s\n", __func__));
 	padapter->xmitThread = kthread_run(rtw_xmit_thread, padapter, "RTW_XMIT_THREAD");
 	if (IS_ERR(padapter->xmitThread))
 		_status = _FAIL;
@@ -556,7 +556,7 @@ u32 rtw_start_drv_threads(struct adapter *padapter)
 
 void rtw_stop_drv_threads(struct adapter *padapter)
 {
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_stop_drv_threads\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+%s\n", __func__));
 
 	rtw_stop_cmd_thread(padapter);
 
@@ -710,7 +710,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
 {
 	u8 ret8 = _SUCCESS;
 
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_init_drv_sw\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+%s\n", __func__));
 
 	rtw_init_default_value(padapter);
 
@@ -773,29 +773,29 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
 
 exit:
 
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-rtw_init_drv_sw\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-%s\n", __func__));
 
 	return ret8;
 }
 
 void rtw_cancel_all_timer(struct adapter *padapter)
 {
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_cancel_all_timer\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+%s\n", __func__));
 
 	del_timer_sync(&padapter->mlmepriv.assoc_timer);
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("rtw_cancel_all_timer:cancel association timer complete!\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("%s:cancel association timer complete!\n", __func__));
 
 	del_timer_sync(&padapter->mlmepriv.scan_to_timer);
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("rtw_cancel_all_timer:cancel scan_to_timer!\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("%s:cancel scan_to_timer!\n", __func__));
 
 	del_timer_sync(&padapter->mlmepriv.dynamic_chk_timer);
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("rtw_cancel_all_timer:cancel dynamic_chk_timer!\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("%s:cancel dynamic_chk_timer!\n", __func__));
 
 	del_timer_sync(&(adapter_to_pwrctl(padapter)->pwr_state_check_timer));
 
 	del_timer_sync(&padapter->mlmepriv.set_scan_deny_timer);
 	rtw_clear_scan_deny(padapter);
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("rtw_cancel_all_timer:cancel set_scan_deny_timer!\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("%s:cancel set_scan_deny_timer!\n", __func__));
 
 	del_timer_sync(&padapter->recvpriv.signal_stat_timer);
 
@@ -805,7 +805,7 @@ void rtw_cancel_all_timer(struct adapter *padapter)
 
 u8 rtw_free_drv_sw(struct adapter *padapter)
 {
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("==>rtw_free_drv_sw"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("==>%s", __func__));
 
 	free_mlme_ext_priv(&padapter->mlmeextpriv);
 
@@ -829,7 +829,7 @@ u8 rtw_free_drv_sw(struct adapter *padapter)
 
 	rtw_hal_free_data(padapter);
 
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("<==rtw_free_drv_sw\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("<==%s\n", __func__));
 
 	/* free the old_pnetdev */
 	if (padapter->rereg_nd_name_priv.old_pnetdev) {
@@ -841,7 +841,7 @@ u8 rtw_free_drv_sw(struct adapter *padapter)
 	if (padapter->pbuddy_adapter != NULL)
 		padapter->pbuddy_adapter->pbuddy_adapter = NULL;
 
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-rtw_free_drv_sw\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-%s\n", __func__));
 
 	return _SUCCESS;
 }
@@ -994,7 +994,7 @@ static int  ips_netdrv_open(struct adapter *padapter)
 
 	status = rtw_hal_init(padapter);
 	if (status == _FAIL) {
-		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("ips_netdrv_open(): Can't init h/w!\n"));
+		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("%s(): Can't init h/w!\n", __func__));
 		goto netdev_open_error;
 	}
 
@@ -1007,7 +1007,7 @@ static int  ips_netdrv_open(struct adapter *padapter)
 
 netdev_open_error:
 	/* padapter->bup = false; */
-	DBG_871X("-ips_netdrv_open - drv_open failure, bup =%d\n", padapter->bup);
+	DBG_871X("-%s - drv_open failure, bup =%d\n", __func__, padapter->bup);
 
 	return _FAIL;
 }
@@ -1016,24 +1016,25 @@ static int  ips_netdrv_open(struct adapter *padapter)
 int rtw_ips_pwr_up(struct adapter *padapter)
 {
 	int result;
-	DBG_871X("===>  rtw_ips_pwr_up..............\n");
+
+	DBG_871X("===>  %s..............\n", __func__);
 
 	result = ips_netdrv_open(padapter);
 
-	DBG_871X("<===  rtw_ips_pwr_up..............\n");
+	DBG_871X("<===  %s..............\n", __func__);
 	return result;
 }
 
 void rtw_ips_pwr_down(struct adapter *padapter)
 {
-	DBG_871X("===> rtw_ips_pwr_down...................\n");
+	DBG_871X("===> %s...................\n", __func__);
 
 	padapter->bCardDisableWOHSM = true;
 	padapter->net_closed = true;
 
 	rtw_ips_dev_unload(padapter);
 	padapter->bCardDisableWOHSM = false;
-	DBG_871X("<=== rtw_ips_pwr_down.....................\n");
+	DBG_871X("<=== %s.....................\n", __func__);
 }
 
 void rtw_ips_dev_unload(struct adapter *padapter)
@@ -1087,7 +1088,8 @@ static int netdev_close(struct net_device *pnetdev)
 
 		rtw_dev_unload(padapter);
 	}
-	else*/
+	else
+*/
 	if (pwrctl->rf_pwrstate == rf_on) {
 		DBG_871X("(2)871x_drv - drv_close, bup =%d, hw_init_completed =%d\n", padapter->bup, padapter->hw_init_completed);
 
@@ -1144,7 +1146,7 @@ void rtw_dev_unload(struct adapter *padapter)
 		if (padapter->intf_stop)
 			padapter->intf_stop(padapter);
 
-		RT_TRACE(_module_hci_intfs_c_, _drv_notice_, ("@ rtw_dev_unload: stop intf complete!\n"));
+		RT_TRACE(_module_hci_intfs_c_, _drv_notice_, ("@ %s: stop intf complete!\n", __func__));
 
 		if (!pwrctl->bInternalAutoSuspend)
 			rtw_stop_drv_threads(padapter);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
