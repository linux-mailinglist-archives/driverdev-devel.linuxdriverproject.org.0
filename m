Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4042E44B5FA
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Nov 2021 23:21:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C57F1403BD;
	Tue,  9 Nov 2021 22:21:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S5Pvd_xEYu7u; Tue,  9 Nov 2021 22:21:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5984A403CD;
	Tue,  9 Nov 2021 22:21:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7952E1BF3C2
 for <devel@linuxdriverproject.org>; Tue,  9 Nov 2021 22:21:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6954B40468
 for <devel@linuxdriverproject.org>; Tue,  9 Nov 2021 22:21:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jqSC7WqzUeNw for <devel@linuxdriverproject.org>;
 Tue,  9 Nov 2021 22:21:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0C70B40466
 for <devel@driverdev.osuosl.org>; Tue,  9 Nov 2021 22:21:36 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BF93C61ABD;
 Tue,  9 Nov 2021 22:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1636496495;
 bh=3e1XVI640VozlBJboqnxZ5xsl32zla1mKSrptRoNwRU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XK0XCiljsJXENKcxZECZ4/BIOn3e30OXwzg3n4QDxE7euJoiIEbASp0zxL2s1/C6K
 Beurfg/uVNAgheuLGQaB15usG2Ng9duxfo7k7KgDTOnykzJiCzMx8ISpr9KpcfHvXU
 edMidfGHacclC3+LwR2Ss6bw8A9YtS5zmT/ZV+Y3A94EAqrOVsbfR1FOftSJoKBkW/
 NZXPOjXl6t45j2JOaUM9OVpxEr85aus0kS3l3oAHCsi/aes4UTsoKaDEwJ93mCwu3E
 t5SnkPAFXmatYTy4tIj3szQ8Iq6lF+ZCfQzJeyWRtEYTHnXHdZC+k98+C4+734Uj1c
 GhDIavGhGFynA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.10 19/50] staging: rtl8723bs: remove possible
 deadlock when disconnect (v2)
Date: Tue,  9 Nov 2021 17:20:32 -0500
Message-Id: <20211109222103.1234885-19-sashal@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211109222103.1234885-1-sashal@kernel.org>
References: <20211109222103.1234885-1-sashal@kernel.org>
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Fabio Aiuto <fabioaiuto83@gmail.com>, Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Fabio Aiuto <fabioaiuto83@gmail.com>

[ Upstream commit 54659ca026e586bbb33a7e60daa6443a3ac6b5df ]

when turning off a connection, lockdep complains with the
following warning (a modprobe has been done but the same
happens with a disconnection from NetworkManager,
it's enough to trigger a cfg80211_disconnect call):

[  682.855867] ======================================================
[  682.855877] WARNING: possible circular locking dependency detected
[  682.855887] 5.14.0-rc6+ #16 Tainted: G         C OE
[  682.855898] ------------------------------------------------------
[  682.855906] modprobe/1770 is trying to acquire lock:
[  682.855916] ffffb6d000332b00 (&pxmitpriv->lock){+.-.}-{2:2},
		at: rtw_free_stainfo+0x52/0x4a0 [r8723bs]
[  682.856073]
               but task is already holding lock:
[  682.856081] ffffb6d0003336a8 (&pstapriv->sta_hash_lock){+.-.}-{2:2},
		at: rtw_free_assoc_resources+0x48/0x110 [r8723bs]
[  682.856207]
               which lock already depends on the new lock.

[  682.856215]
               the existing dependency chain (in reverse order) is:
[  682.856223]
               -> #1 (&pstapriv->sta_hash_lock){+.-.}-{2:2}:
[  682.856247]        _raw_spin_lock_bh+0x34/0x40
[  682.856265]        rtw_get_stainfo+0x9a/0x110 [r8723bs]
[  682.856389]        rtw_xmit_classifier+0x27/0x130 [r8723bs]
[  682.856515]        rtw_xmitframe_enqueue+0xa/0x20 [r8723bs]
[  682.856642]        rtl8723bs_hal_xmit+0x3b/0xb0 [r8723bs]
[  682.856752]        rtw_xmit+0x4ef/0x890 [r8723bs]
[  682.856879]        _rtw_xmit_entry+0xba/0x350 [r8723bs]
[  682.856981]        dev_hard_start_xmit+0xee/0x320
[  682.856999]        sch_direct_xmit+0x8c/0x330
[  682.857014]        __dev_queue_xmit+0xba5/0xf00
[  682.857030]        packet_sendmsg+0x981/0x1b80
[  682.857047]        sock_sendmsg+0x5b/0x60
[  682.857060]        __sys_sendto+0xf1/0x160
[  682.857073]        __x64_sys_sendto+0x24/0x30
[  682.857087]        do_syscall_64+0x3a/0x80
[  682.857102]        entry_SYSCALL_64_after_hwframe+0x44/0xae
[  682.857117]
               -> #0 (&pxmitpriv->lock){+.-.}-{2:2}:
[  682.857142]        __lock_acquire+0xfd9/0x1b50
[  682.857158]        lock_acquire+0xb4/0x2c0
[  682.857172]        _raw_spin_lock_bh+0x34/0x40
[  682.857185]        rtw_free_stainfo+0x52/0x4a0 [r8723bs]
[  682.857308]        rtw_free_assoc_resources+0x53/0x110 [r8723bs]
[  682.857415]        cfg80211_rtw_disconnect+0x4b/0x70 [r8723bs]
[  682.857522]        cfg80211_disconnect+0x12e/0x2f0 [cfg80211]
[  682.857759]        cfg80211_leave+0x2b/0x40 [cfg80211]
[  682.857961]        cfg80211_netdev_notifier_call+0xa9/0x560 [cfg80211]
[  682.858163]        raw_notifier_call_chain+0x41/0x50
[  682.858180]        __dev_close_many+0x62/0x100
[  682.858195]        dev_close_many+0x7d/0x120
[  682.858209]        unregister_netdevice_many+0x416/0x680
[  682.858225]        unregister_netdevice_queue+0xab/0xf0
[  682.858240]        unregister_netdev+0x18/0x20
[  682.858255]        rtw_unregister_netdevs+0x28/0x40 [r8723bs]
[  682.858360]        rtw_dev_remove+0x24/0xd0 [r8723bs]
[  682.858463]        sdio_bus_remove+0x31/0xd0 [mmc_core]
[  682.858532]        device_release_driver_internal+0xf7/0x1d0
[  682.858550]        driver_detach+0x47/0x90
[  682.858564]        bus_remove_driver+0x77/0xd0
[  682.858579]        rtw_drv_halt+0xc/0x678 [r8723bs]
[  682.858685]        __x64_sys_delete_module+0x13f/0x250
[  682.858699]        do_syscall_64+0x3a/0x80
[  682.858715]        entry_SYSCALL_64_after_hwframe+0x44/0xae
[  682.858729]
               other info that might help us debug this:

[  682.858737]  Possible unsafe locking scenario:

[  682.858744]        CPU0                    CPU1
[  682.858751]        ----                    ----
[  682.858758]   lock(&pstapriv->sta_hash_lock);
[  682.858772]                                lock(&pxmitpriv->lock);
[  682.858786]                                lock(&pstapriv->sta_hash_lock);
[  682.858799]   lock(&pxmitpriv->lock);
[  682.858812]
                *** DEADLOCK ***

[  682.858820] 5 locks held by modprobe/1770:
[  682.858831]  #0: ffff8d870697d980 (&dev->mutex){....}-{3:3},
		at: device_release_driver_internal+0x1a/0x1d0
[  682.858869]  #1: ffffffffbdbbf1c8 (rtnl_mutex){+.+.}-{3:3},
		at: unregister_netdev+0xe/0x20
[  682.858906]  #2: ffff8d87054ee5e8 (&rdev->wiphy.mtx){+.+.}-{3:3},
		at: cfg80211_netdev_notifier_call+0x9e/0x560 [cfg80211]
[  682.859131]  #3: ffff8d870f2bc8f0 (&wdev->mtx){+.+.}-{3:3},
		at: cfg80211_leave+0x20/0x40 [cfg80211]
[  682.859354]  #4: ffffb6d0003336a8 (&pstapriv->sta_hash_lock){+.-.}-{2:2},
		at: rtw_free_assoc_resources+0x48/0x110 [r8723bs]
[  682.859482]
               stack backtrace:
[  682.859491] CPU: 1 PID: 1770 Comm: modprobe Tainted: G
		C OE     5.14.0-rc6+ #16
[  682.859507] Hardware name: LENOVO 80NR/Madrid, BIOS DACN25WW 08/20/2015
[  682.859517] Call Trace:
[  682.859531]  dump_stack_lvl+0x56/0x6f
[  682.859551]  check_noncircular+0xdb/0xf0
[  682.859579]  __lock_acquire+0xfd9/0x1b50
[  682.859606]  lock_acquire+0xb4/0x2c0
[  682.859623]  ? rtw_free_stainfo+0x52/0x4a0 [r8723bs]
[  682.859752]  ? mark_held_locks+0x48/0x70
[  682.859769]  ? rtw_free_stainfo+0x4a/0x4a0 [r8723bs]
[  682.859898]  _raw_spin_lock_bh+0x34/0x40
[  682.859914]  ? rtw_free_stainfo+0x52/0x4a0 [r8723bs]
[  682.860039]  rtw_free_stainfo+0x52/0x4a0 [r8723bs]
[  682.860171]  rtw_free_assoc_resources+0x53/0x110 [r8723bs]
[  682.860286]  cfg80211_rtw_disconnect+0x4b/0x70 [r8723bs]
[  682.860397]  cfg80211_disconnect+0x12e/0x2f0 [cfg80211]
[  682.860629]  cfg80211_leave+0x2b/0x40 [cfg80211]
[  682.860836]  cfg80211_netdev_notifier_call+0xa9/0x560 [cfg80211]
[  682.861048]  ? __lock_acquire+0x4dc/0x1b50
[  682.861070]  ? lock_is_held_type+0xa8/0x110
[  682.861089]  ? lock_is_held_type+0xa8/0x110
[  682.861104]  ? find_held_lock+0x2d/0x90
[  682.861120]  ? packet_notifier+0x173/0x300
[  682.861141]  ? lock_release+0xb3/0x250
[  682.861160]  ? packet_notifier+0x192/0x300
[  682.861184]  raw_notifier_call_chain+0x41/0x50
[  682.861205]  __dev_close_many+0x62/0x100
[  682.861224]  dev_close_many+0x7d/0x120
[  682.861245]  unregister_netdevice_many+0x416/0x680
[  682.861264]  ? find_held_lock+0x2d/0x90
[  682.861284]  unregister_netdevice_queue+0xab/0xf0
[  682.861306]  unregister_netdev+0x18/0x20
[  682.861325]  rtw_unregister_netdevs+0x28/0x40 [r8723bs]
[  682.861434]  rtw_dev_remove+0x24/0xd0 [r8723bs]
[  682.861542]  sdio_bus_remove+0x31/0xd0 [mmc_core]
[  682.861615]  device_release_driver_internal+0xf7/0x1d0
[  682.861637]  driver_detach+0x47/0x90
[  682.861656]  bus_remove_driver+0x77/0xd0
[  682.861674]  rtw_drv_halt+0xc/0x678 [r8723bs]
[  682.861782]  __x64_sys_delete_module+0x13f/0x250
[  682.861801]  ? lockdep_hardirqs_on_prepare+0xf3/0x170
[  682.861817]  ? syscall_enter_from_user_mode+0x20/0x70
[  682.861836]  do_syscall_64+0x3a/0x80
[  682.861855]  entry_SYSCALL_64_after_hwframe+0x44/0xae
[  682.861873] RIP: 0033:0x7f6dbe85400b
[  682.861890] Code: 73 01 c3 48 8b 0d 6d 1e 0c 00 f7 d8 64 89
01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa
b8 b0 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 3d
1e 0c 00 f7 d8 64 89 01 48
[  682.861906] RSP: 002b:00007ffe7a82f538 EFLAGS: 00000206 ORIG_RAX: 00000000000000b0
[  682.861923] RAX: ffffffffffffffda RBX: 000055a64693bd20 RCX: 00007f6dbe85400b
[  682.861935] RDX: 0000000000000000 RSI: 0000000000000800 RDI: 000055a64693bd88
[  682.861946] RBP: 000055a64693bd20 R08: 0000000000000000 R09: 0000000000000000
[  682.861957] R10: 00007f6dbe8c7ac0 R11: 0000000000000206 R12: 000055a64693bd88
[  682.861967] R13: 0000000000000000 R14: 000055a64693bd88 R15: 00007ffe7a831848

This happens because when we enqueue a frame for
transmission we do it under xmit_priv lock, then calling
rtw_get_stainfo (needed for enqueuing) takes sta_hash_lock
and this leads to the following lock dependency:

xmit_priv->lock -> sta_hash_lock

Turning off a connection will bring to call
rtw_free_assoc_resources which will set up
the inverse dependency:

sta_hash_lock -> xmit_priv_lock

This could lead to a deadlock as lockdep complains.

Fix it by removing the xmit_priv->lock around
rtw_xmitframe_enqueue call inside rtl8723bs_hal_xmit
and put it in a smaller critical section inside
rtw_xmit_classifier, the only place where
xmit_priv data are actually accessed.

Replace spin_{lock,unlock}_bh(pxmitpriv->lock)
in other tx paths leading to rtw_xmitframe_enqueue
call with spin_{lock,unlock}_bh(psta->sleep_q.lock)
- it's not clear why accessing a sleep_q was protected
by a spinlock on xmitpriv->lock.

This way is avoided the same faulty lock nesting
order.

Extra changes in v2 by Hans de Goede:
-Lift the taking of the struct __queue.lock spinlock out of
 rtw_free_xmitframe_queue() into the callers this allows also
 protecting a bunch of related state in rtw_free_stainfo():
-Protect psta->sleepq_len on rtw_free_xmitframe_queue(&psta->sleep_q);
-Protect struct tx_servq.tx_pending and tx_servq.qcnt when
 calling rtw_free_xmitframe_queue(&tx_servq.sta_pending)
-This also allows moving the spin_lock_bh(&pxmitpriv->lock); to below
 the sleep_q free-ing code, avoiding another ABBA locking issue

CC: Larry Finger <Larry.Finger@lwfinger.net>
Co-developed-by: Hans de Goede <hdegoede@redhat.com>
Tested-on: Lenovo Ideapad MiiX 300-10IBY
Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
Link: https://lore.kernel.org/r/20210920145502.155454-1-hdegoede@redhat.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c |  7 ++----
 drivers/staging/rtl8723bs/core/rtw_recv.c     | 10 +++------
 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c  | 22 ++++++++++---------
 drivers/staging/rtl8723bs/core/rtw_xmit.c     | 16 ++++++--------
 .../staging/rtl8723bs/hal/rtl8723bs_xmit.c    |  2 --
 5 files changed, 24 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index b912ad2f4b720..4df6d04315e39 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -6679,7 +6679,6 @@ u8 chk_bmc_sleepq_hdl(struct adapter *padapter, unsigned char *pbuf)
 	struct sta_info *psta_bmc;
 	struct list_head	*xmitframe_plist, *xmitframe_phead;
 	struct xmit_frame *pxmitframe = NULL;
-	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	struct sta_priv  *pstapriv = &padapter->stapriv;
 
 	/* for BC/MC Frames */
@@ -6690,8 +6689,7 @@ u8 chk_bmc_sleepq_hdl(struct adapter *padapter, unsigned char *pbuf)
 	if ((pstapriv->tim_bitmap&BIT(0)) && (psta_bmc->sleepq_len > 0)) {
 		msleep(10);/*  10ms, ATIM(HIQ) Windows */
 
-		/* spin_lock_bh(&psta_bmc->sleep_q.lock); */
-		spin_lock_bh(&pxmitpriv->lock);
+		spin_lock_bh(&psta_bmc->sleep_q.lock);
 
 		xmitframe_phead = get_list_head(&psta_bmc->sleep_q);
 		xmitframe_plist = get_next(xmitframe_phead);
@@ -6717,8 +6715,7 @@ u8 chk_bmc_sleepq_hdl(struct adapter *padapter, unsigned char *pbuf)
 			rtw_hal_xmitframe_enqueue(padapter, pxmitframe);
 		}
 
-		/* spin_unlock_bh(&psta_bmc->sleep_q.lock); */
-		spin_unlock_bh(&pxmitpriv->lock);
+		spin_unlock_bh(&psta_bmc->sleep_q.lock);
 
 		/* check hi queue and bmc_sleepq */
 		rtw_chk_hi_queue_cmd(padapter);
diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 6979f8dbccb84..0d47e6e121777 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -1144,10 +1144,8 @@ sint validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_
 		if ((psta->state&WIFI_SLEEP_STATE) && (pstapriv->sta_dz_bitmap&BIT(psta->aid))) {
 			struct list_head	*xmitframe_plist, *xmitframe_phead;
 			struct xmit_frame *pxmitframe = NULL;
-			struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 
-			/* spin_lock_bh(&psta->sleep_q.lock); */
-			spin_lock_bh(&pxmitpriv->lock);
+			spin_lock_bh(&psta->sleep_q.lock);
 
 			xmitframe_phead = get_list_head(&psta->sleep_q);
 			xmitframe_plist = get_next(xmitframe_phead);
@@ -1182,12 +1180,10 @@ sint validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_
 					update_beacon(padapter, _TIM_IE_, NULL, true);
 				}
 
-				/* spin_unlock_bh(&psta->sleep_q.lock); */
-				spin_unlock_bh(&pxmitpriv->lock);
+				spin_unlock_bh(&psta->sleep_q.lock);
 
 			} else {
-				/* spin_unlock_bh(&psta->sleep_q.lock); */
-				spin_unlock_bh(&pxmitpriv->lock);
+				spin_unlock_bh(&psta->sleep_q.lock);
 
 				/* DBG_871X("no buffered packets to xmit\n"); */
 				if (pstapriv->tim_bitmap&BIT(psta->aid)) {
diff --git a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
index e3f56c6cc882e..b1784b4e466f3 100644
--- a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
@@ -330,46 +330,48 @@ u32 rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta)
 
 	/* list_del_init(&psta->wakeup_list); */
 
-	spin_lock_bh(&pxmitpriv->lock);
-
+	spin_lock_bh(&psta->sleep_q.lock);
 	rtw_free_xmitframe_queue(pxmitpriv, &psta->sleep_q);
 	psta->sleepq_len = 0;
+	spin_unlock_bh(&psta->sleep_q.lock);
+
+	spin_lock_bh(&pxmitpriv->lock);
 
 	/* vo */
-	/* spin_lock_bh(&(pxmitpriv->vo_pending.lock)); */
+	spin_lock_bh(&pstaxmitpriv->vo_q.sta_pending.lock);
 	rtw_free_xmitframe_queue(pxmitpriv, &pstaxmitpriv->vo_q.sta_pending);
 	list_del_init(&(pstaxmitpriv->vo_q.tx_pending));
 	phwxmit = pxmitpriv->hwxmits;
 	phwxmit->accnt -= pstaxmitpriv->vo_q.qcnt;
 	pstaxmitpriv->vo_q.qcnt = 0;
-	/* spin_unlock_bh(&(pxmitpriv->vo_pending.lock)); */
+	spin_unlock_bh(&pstaxmitpriv->vo_q.sta_pending.lock);
 
 	/* vi */
-	/* spin_lock_bh(&(pxmitpriv->vi_pending.lock)); */
+	spin_lock_bh(&pstaxmitpriv->vi_q.sta_pending.lock);
 	rtw_free_xmitframe_queue(pxmitpriv, &pstaxmitpriv->vi_q.sta_pending);
 	list_del_init(&(pstaxmitpriv->vi_q.tx_pending));
 	phwxmit = pxmitpriv->hwxmits+1;
 	phwxmit->accnt -= pstaxmitpriv->vi_q.qcnt;
 	pstaxmitpriv->vi_q.qcnt = 0;
-	/* spin_unlock_bh(&(pxmitpriv->vi_pending.lock)); */
+	spin_unlock_bh(&pstaxmitpriv->vi_q.sta_pending.lock);
 
 	/* be */
-	/* spin_lock_bh(&(pxmitpriv->be_pending.lock)); */
+	spin_lock_bh(&pstaxmitpriv->be_q.sta_pending.lock);
 	rtw_free_xmitframe_queue(pxmitpriv, &pstaxmitpriv->be_q.sta_pending);
 	list_del_init(&(pstaxmitpriv->be_q.tx_pending));
 	phwxmit = pxmitpriv->hwxmits+2;
 	phwxmit->accnt -= pstaxmitpriv->be_q.qcnt;
 	pstaxmitpriv->be_q.qcnt = 0;
-	/* spin_unlock_bh(&(pxmitpriv->be_pending.lock)); */
+	spin_unlock_bh(&pstaxmitpriv->be_q.sta_pending.lock);
 
 	/* bk */
-	/* spin_lock_bh(&(pxmitpriv->bk_pending.lock)); */
+	spin_lock_bh(&pstaxmitpriv->bk_q.sta_pending.lock);
 	rtw_free_xmitframe_queue(pxmitpriv, &pstaxmitpriv->bk_q.sta_pending);
 	list_del_init(&(pstaxmitpriv->bk_q.tx_pending));
 	phwxmit = pxmitpriv->hwxmits+3;
 	phwxmit->accnt -= pstaxmitpriv->bk_q.qcnt;
 	pstaxmitpriv->bk_q.qcnt = 0;
-	/* spin_unlock_bh(&(pxmitpriv->bk_pending.lock)); */
+	spin_unlock_bh(&pstaxmitpriv->bk_q.sta_pending.lock);
 
 	spin_unlock_bh(&pxmitpriv->lock);
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 6ecaff9728fd4..d78cff7ed6a01 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -1871,8 +1871,6 @@ void rtw_free_xmitframe_queue(struct xmit_priv *pxmitpriv, struct __queue *pfram
 	struct list_head	*plist, *phead;
 	struct	xmit_frame	*pxmitframe;
 
-	spin_lock_bh(&pframequeue->lock);
-
 	phead = get_list_head(pframequeue);
 	plist = get_next(phead);
 
@@ -1883,7 +1881,6 @@ void rtw_free_xmitframe_queue(struct xmit_priv *pxmitpriv, struct __queue *pfram
 
 		rtw_free_xmitframe(pxmitpriv, pxmitframe);
 	}
-	spin_unlock_bh(&pframequeue->lock);
 }
 
 s32 rtw_xmitframe_enqueue(struct adapter *padapter, struct xmit_frame *pxmitframe)
@@ -1946,6 +1943,7 @@ s32 rtw_xmit_classifier(struct adapter *padapter, struct xmit_frame *pxmitframe)
 	struct sta_info *psta;
 	struct tx_servq	*ptxservq;
 	struct pkt_attrib	*pattrib = &pxmitframe->attrib;
+	struct xmit_priv *xmit_priv = &padapter->xmitpriv;
 	struct hw_xmit	*phwxmits =  padapter->xmitpriv.hwxmits;
 	sint res = _SUCCESS;
 
@@ -1974,12 +1972,14 @@ s32 rtw_xmit_classifier(struct adapter *padapter, struct xmit_frame *pxmitframe)
 
 	ptxservq = rtw_get_sta_pending(padapter, psta, pattrib->priority, (u8 *)(&ac_index));
 
+	spin_lock_bh(&xmit_priv->lock);
 	if (list_empty(&ptxservq->tx_pending))
 		list_add_tail(&ptxservq->tx_pending, get_list_head(phwxmits[ac_index].sta_queue));
 
 	list_add_tail(&pxmitframe->list, get_list_head(&ptxservq->sta_pending));
 	ptxservq->qcnt++;
 	phwxmits[ac_index].accnt++;
+	spin_unlock_bh(&xmit_priv->lock);
 
 exit:
 
@@ -2397,11 +2397,10 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 	struct list_head	*xmitframe_plist, *xmitframe_phead;
 	struct xmit_frame *pxmitframe = NULL;
 	struct sta_priv *pstapriv = &padapter->stapriv;
-	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 
 	psta_bmc = rtw_get_bcmc_stainfo(padapter);
 
-	spin_lock_bh(&pxmitpriv->lock);
+	spin_lock_bh(&psta->sleep_q.lock);
 
 	xmitframe_phead = get_list_head(&psta->sleep_q);
 	xmitframe_plist = get_next(xmitframe_phead);
@@ -2509,7 +2508,7 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 
 _exit:
 
-	spin_unlock_bh(&pxmitpriv->lock);
+	spin_unlock_bh(&psta->sleep_q.lock);
 
 	if (update_mask)
 		update_beacon(padapter, _TIM_IE_, NULL, true);
@@ -2521,9 +2520,8 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
 	struct list_head	*xmitframe_plist, *xmitframe_phead;
 	struct xmit_frame *pxmitframe = NULL;
 	struct sta_priv *pstapriv = &padapter->stapriv;
-	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 
-	spin_lock_bh(&pxmitpriv->lock);
+	spin_lock_bh(&psta->sleep_q.lock);
 
 	xmitframe_phead = get_list_head(&psta->sleep_q);
 	xmitframe_plist = get_next(xmitframe_phead);
@@ -2579,7 +2577,7 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
 		}
 	}
 
-	spin_unlock_bh(&pxmitpriv->lock);
+	spin_unlock_bh(&psta->sleep_q.lock);
 }
 
 void enqueue_pending_xmitbuf(
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
index 44799c4a9f35b..ce5bf2861d0c1 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
@@ -572,9 +572,7 @@ s32 rtl8723bs_hal_xmit(
 			rtw_issue_addbareq_cmd(padapter, pxmitframe);
 	}
 
-	spin_lock_bh(&pxmitpriv->lock);
 	err = rtw_xmitframe_enqueue(padapter, pxmitframe);
-	spin_unlock_bh(&pxmitpriv->lock);
 	if (err != _SUCCESS) {
 		RT_TRACE(_module_hal_xmit_c_, _drv_err_, ("rtl8723bs_hal_xmit: enqueue xmitframe fail\n"));
 		rtw_free_xmitframe(pxmitpriv, pxmitframe);
-- 
2.33.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
