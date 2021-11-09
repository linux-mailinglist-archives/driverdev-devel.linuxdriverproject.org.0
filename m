Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC0944B560
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Nov 2021 23:18:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9950B4045D;
	Tue,  9 Nov 2021 22:17:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id He9hFH4E8rtG; Tue,  9 Nov 2021 22:17:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8334E400FE;
	Tue,  9 Nov 2021 22:17:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 48BA71BF3C2
 for <devel@linuxdriverproject.org>; Tue,  9 Nov 2021 22:17:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 37681401B1
 for <devel@linuxdriverproject.org>; Tue,  9 Nov 2021 22:17:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FOZvxuRnd1WU for <devel@linuxdriverproject.org>;
 Tue,  9 Nov 2021 22:17:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ED64B40166
 for <devel@driverdev.osuosl.org>; Tue,  9 Nov 2021 22:17:34 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 00B5C61251;
 Tue,  9 Nov 2021 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1636496254;
 bh=8YTO9GM2snWCx4syTdijevGapzQg0EPpWDzJb1mHziw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IRLUWcucd5PdCItHYG/2ifA/qRplWCaNZKA1j3Q1EFhInhMacw2TZWA/sAGibhqJ+
 Ek5rb5O7n8NQhgoRP3uYxpbIn9EOCEc9A6q/Qe+WNnVwnVVrPRZTePKZzWxvSkusT4
 jT9MENdtGa3P3hKePzr7aIB0s0oBodXHAOiOtftIKR68cztmOO74Lrl/D2AGS3BnP3
 EmCbIGMUgOOG8d29Qs0LekwuAWrXn+Zp3sb3Y7hM1Xnyam/x240fvJI6uqoNIEWHbH
 SK1i7z7NPAn+TThsVHm8qd2FmMbICxMsNejWsin7WAtn8Mhvid5qYmXyW8xMi8w4QS
 ocNgyIdRX7sZQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.15 25/82] staging: rtl8723bs: remove a second
 possible deadlock
Date: Tue,  9 Nov 2021 17:15:43 -0500
Message-Id: <20211109221641.1233217-25-sashal@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211109221641.1233217-1-sashal@kernel.org>
References: <20211109221641.1233217-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Hans de Goede <hdegoede@redhat.com>

[ Upstream commit a7ac783c338bafc04d3259600646350dba989043 ]

Lockdep complains about rtw_free_assoc_resources() taking the sta_hash_lock
followed by it calling rtw_free_stainfo() which takes xmitpriv->lock.
While the rtl8723bs_xmit_thread takes the sta_hash_lock while already
holding the xmitpriv->lock:

[  103.849756] ======================================================
[  103.849761] WARNING: possible circular locking dependency detected
[  103.849767] 5.15.0-rc1+ #470 Tainted: G         C  E
[  103.849773] ------------------------------------------------------
[  103.849776] wpa_supplicant/695 is trying to acquire lock:
[  103.849781] ffffa5d0c0562b00 (&pxmitpriv->lock){+.-.}-{2:2}, at: rtw_free_stainfo+0x8a/0x510 [r8723bs]
[  103.849840]
               but task is already holding lock:
[  103.849843] ffffa5d0c05636a8 (&pstapriv->sta_hash_lock){+.-.}-{2:2}, at: rtw_free_assoc_resources+0x48/0x110 [r8723bs]
[  103.849881]
               which lock already depends on the new lock.

[  103.849884]
               the existing dependency chain (in reverse order) is:
[  103.849887]
               -> #1 (&pstapriv->sta_hash_lock){+.-.}-{2:2}:
[  103.849898]        _raw_spin_lock_bh+0x34/0x40
[  103.849913]        rtw_get_stainfo+0x93/0x110 [r8723bs]
[  103.849948]        rtw_make_wlanhdr+0x14a/0x270 [r8723bs]
[  103.849983]        rtw_xmitframe_coalesce+0x5c/0x6c0 [r8723bs]
[  103.850019]        rtl8723bs_xmit_thread+0x4ac/0x620 [r8723bs]
[  103.850050]        kthread+0x143/0x160
[  103.850058]        ret_from_fork+0x22/0x30
[  103.850067]
               -> #0 (&pxmitpriv->lock){+.-.}-{2:2}:
[  103.850077]        __lock_acquire+0x1158/0x1de0
[  103.850084]        lock_acquire+0xb5/0x2b0
[  103.850090]        _raw_spin_lock_bh+0x34/0x40
[  103.850095]        rtw_free_stainfo+0x8a/0x510 [r8723bs]
[  103.850130]        rtw_free_assoc_resources+0x53/0x110 [r8723bs]
[  103.850159]        PHY_IQCalibrate_8723B+0x122b/0x36a0 [r8723bs]
[  103.850189]        cfg80211_disconnect+0x173/0x320 [cfg80211]
[  103.850331]        nl80211_disconnect+0x6e/0xb0 [cfg80211]
[  103.850422]        genl_family_rcv_msg_doit+0xcd/0x110
[  103.850430]        genl_rcv_msg+0xce/0x1c0
[  103.850435]        netlink_rcv_skb+0x50/0xf0
[  103.850441]        genl_rcv+0x24/0x40
[  103.850446]        netlink_unicast+0x16d/0x230
[  103.850452]        netlink_sendmsg+0x22b/0x450
[  103.850457]        sock_sendmsg+0x5e/0x60
[  103.850465]        ____sys_sendmsg+0x22f/0x270
[  103.850472]        ___sys_sendmsg+0x81/0xc0
[  103.850479]        __sys_sendmsg+0x49/0x80
[  103.850485]        do_syscall_64+0x3b/0x90
[  103.850493]        entry_SYSCALL_64_after_hwframe+0x44/0xae
[  103.850500]
               other info that might help us debug this:

[  103.850504]  Possible unsafe locking scenario:

[  103.850507]        CPU0                    CPU1
[  103.850510]        ----                    ----
[  103.850512]   lock(&pstapriv->sta_hash_lock);
[  103.850518]                                lock(&pxmitpriv->lock);
[  103.850524]                                lock(&pstapriv->sta_hash_lock);
[  103.850530]   lock(&pxmitpriv->lock);
[  103.850535]
                *** DEADLOCK ***

Push the taking of sta_hash_lock down into rtw_free_stainfo(),
where the critical section is, this allows taking the lock after
rtw_free_stainfo() has released pxmitpriv->lock.

This requires changing rtw_free_all_stainfo() so that it does its freeing
in 2 steps, first moving all stainfo-s to free to a local list while
holding the sta_hash_lock and then walking that list to call
rtw_free_stainfo() on them without holding the sta_hash_lock.

Pushing the taking of sta_hash_lock down into rtw_free_stainfo(),
also fixes a whole bunch of callers of rtw_free_stainfo() which
were not holding that lock even though they should.

Note that this also fixes the deadlock from the "remove possible
deadlock when disconnect" patch in a different way. But the
changes from that patch offer a nice locking cleanup regardless.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
Link: https://lore.kernel.org/r/20210920145502.155454-2-hdegoede@redhat.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c      |  5 -----
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c  |  4 ----
 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c   | 11 +++++++++--
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c |  2 --
 4 files changed, 9 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index ab6a24d70cc96..1f49c49e10b45 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -897,7 +897,6 @@ void rtw_free_assoc_resources(struct adapter *adapter, int lock_scanned_queue)
 {
 	struct	mlme_priv *pmlmepriv = &adapter->mlmepriv;
 	struct wlan_network *tgt_network = &pmlmepriv->cur_network;
-	struct	sta_priv *pstapriv = &adapter->stapriv;
 	struct dvobj_priv *psdpriv = adapter->dvobj;
 	struct debug_priv *pdbgpriv = &psdpriv->drv_dbg;
 
@@ -905,11 +904,7 @@ void rtw_free_assoc_resources(struct adapter *adapter, int lock_scanned_queue)
 		struct sta_info *psta;
 
 		psta = rtw_get_stainfo(&adapter->stapriv, tgt_network->network.mac_address);
-		spin_lock_bh(&(pstapriv->sta_hash_lock));
 		rtw_free_stainfo(adapter,  psta);
-
-		spin_unlock_bh(&(pstapriv->sta_hash_lock));
-
 	}
 
 	if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE|WIFI_ADHOC_MASTER_STATE|WIFI_AP_STATE)) {
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index a1ae16ec69eb6..ad9c237054c4b 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -1489,9 +1489,7 @@ unsigned int OnDeAuth(struct adapter *padapter, union recv_frame *precv_frame)
 		struct sta_info *psta;
 		struct sta_priv *pstapriv = &padapter->stapriv;
 
-		/* spin_lock_bh(&(pstapriv->sta_hash_lock)); */
 		/* rtw_free_stainfo(padapter, psta); */
-		/* spin_unlock_bh(&(pstapriv->sta_hash_lock)); */
 
 		netdev_dbg(padapter->pnetdev,
 			   "ap recv deauth reason code(%d) sta:%pM\n", reason,
@@ -1565,9 +1563,7 @@ unsigned int OnDisassoc(struct adapter *padapter, union recv_frame *precv_frame)
 		struct sta_info *psta;
 		struct sta_priv *pstapriv = &padapter->stapriv;
 
-		/* spin_lock_bh(&(pstapriv->sta_hash_lock)); */
 		/* rtw_free_stainfo(padapter, psta); */
-		/* spin_unlock_bh(&(pstapriv->sta_hash_lock)); */
 
 		netdev_dbg(padapter->pnetdev,
 			   "ap recv disassoc reason code(%d) sta:%pM\n",
diff --git a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
index c23d0c833ecf8..3d269842677dd 100644
--- a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
@@ -263,7 +263,6 @@ exit:
 	return psta;
 }
 
-/*  using pstapriv->sta_hash_lock to protect */
 u32 rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta)
 {
 	int i;
@@ -334,8 +333,10 @@ u32 rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta)
 
 	spin_unlock_bh(&pxmitpriv->lock);
 
+	spin_lock_bh(&pstapriv->sta_hash_lock);
 	list_del_init(&psta->hash_list);
 	pstapriv->asoc_sta_count--;
+	spin_unlock_bh(&pstapriv->sta_hash_lock);
 
 	/*  re-init sta_info; 20061114 will be init in alloc_stainfo */
 	/* _rtw_init_sta_xmit_priv(&psta->sta_xmitpriv); */
@@ -430,6 +431,7 @@ void rtw_free_all_stainfo(struct adapter *padapter)
 	struct sta_info *psta = NULL;
 	struct	sta_priv *pstapriv = &padapter->stapriv;
 	struct sta_info *pbcmc_stainfo = rtw_get_bcmc_stainfo(padapter);
+	LIST_HEAD(stainfo_free_list);
 
 	if (pstapriv->asoc_sta_count == 1)
 		return;
@@ -442,11 +444,16 @@ void rtw_free_all_stainfo(struct adapter *padapter)
 			psta = list_entry(plist, struct sta_info, hash_list);
 
 			if (pbcmc_stainfo != psta)
-				rtw_free_stainfo(padapter, psta);
+				list_move(&psta->hash_list, &stainfo_free_list);
 		}
 	}
 
 	spin_unlock_bh(&pstapriv->sta_hash_lock);
+
+	list_for_each_safe(plist, tmp, &stainfo_free_list) {
+		psta = list_entry(plist, struct sta_info, hash_list);
+		rtw_free_stainfo(padapter, psta);
+	}
 }
 
 /* any station allocated can be searched by hash list */
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 9d4a233a861e3..295121c268bd4 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -835,9 +835,7 @@ static int rtw_add_sta(struct net_device *dev, struct ieee_param *param)
 	psta = rtw_get_stainfo(pstapriv, param->sta_addr);
 	if (psta)
 	{
-		spin_lock_bh(&(pstapriv->sta_hash_lock));
 		rtw_free_stainfo(padapter,  psta);
-		spin_unlock_bh(&(pstapriv->sta_hash_lock));
 
 		psta = NULL;
 	}
-- 
2.33.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
