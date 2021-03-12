Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 833D8338768
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:32:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0FB604ED53;
	Fri, 12 Mar 2021 08:32:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k64REIKbc06F; Fri, 12 Mar 2021 08:32:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3EF8E4ED64;
	Fri, 12 Mar 2021 08:32:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 12DE01C1135
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0228D8450D
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xpFBpYtoNb1Z for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:27:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9494B844F8
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:27:08 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 124-20020a1c00820000b029010b871409cfso15240945wma.4
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:27:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=nsmDdSM/+3Y4nWnUg/H1lXm5FP9mjucoYZigMKaJuOk=;
 b=JPOdSsacnnQNtNnMPDLq5XP6hz83oB4i6YDbYSo9+SZWoEav7hLOHWLJ2BzoC+4ijr
 V8BGFthfa5seQ/XhqquJarK+Pu6rRpLWk0afwEH5PzBQCBC/60MzlEO5sMAMtIhbkK4y
 aUNi9Zl9TZLRepXUQ+qL/I74a0zBQy9MVQostyhSkQPfpRzlMGN7AMVnu4sfJk29d1PC
 Mcev2w2z62bHgOr3O5Ltc/KzYN7AdabzNmcqQEmUIEuuAVUYDmU8wGApJLoUeJIim7ka
 2PV1nAbMO4H6fBCgn8tc3Pl2hsHGIEfQ1fNnpCIals0X8eRkuW3GRmvOJ8zXZ/hKvx+g
 ZxDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nsmDdSM/+3Y4nWnUg/H1lXm5FP9mjucoYZigMKaJuOk=;
 b=kF3/WFdUSahGwodZNYBf23elDAUWpcNrj7ib1hFArorn8jhK5Idd5uOrb9dXInwhT+
 kDeJLV4cNlT5ioEj0dGNc0xn2kUfevuqcKaGGFt+AEhyHOt4dEz1P8C9zjqSyfXebYMj
 efW57LCifXyNjrhHi6NRHENbVX8a8ze/c/oMcU8r3gnOWOMi9c7ako26dNBCQ+v/u+Dj
 bHavsDNv4jX/OQZ0IsIsqn4naRqRTX6IfDhRZIlgYBHcf1fp8atdtEo5IlzJVf/4BZPB
 viyaI3+VTJxIFz8fEjxZt2EIxkFIMGTTZ7ZOzGcXPLHgWzXz7YbSgm6Ob1WlKd7t0ZnE
 dYrA==
X-Gm-Message-State: AOAM530EbLfqXaJkzOOg5ZoQzI2FfkUvm3UprZrBY3qtIJ69QzXVc4fM
 1/5JyCwnCbBAyWzKxVBPNGM=
X-Google-Smtp-Source: ABdhPJyTSY/bnhzikuno7NxuY8e1HBqJWJYFJ1i7jQtRHbQPaXEoDAs1QVEz/GgoMvfsy46RKV6rRg==
X-Received: by 2002:a1c:4382:: with SMTP id q124mr12065953wma.16.1615537626681; 
 Fri, 12 Mar 2021 00:27:06 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.27.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:27:06 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 28/33] staging: rtl8723bs: remove typedefs in
 osdep_service_linux.h
Date: Fri, 12 Mar 2021 09:26:33 +0100
Message-Id: <20210312082638.25512-29-marco.cesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210312082638.25512-1-marco.cesati@gmail.com>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl warnings:

    WARNING: do not add new typedefs
    #43: FILE: include/osdep_service_linux.h:43:
    +	typedef	spinlock_t	_lock;

    WARNING: do not add new typedefs
    #44: FILE: include/osdep_service_linux.h:44:
    +	typedef struct mutex		_mutex;

    WARNING: do not add new typedefs
    #45: FILE: include/osdep_service_linux.h:45:
    +	typedef struct timer_list _timer;

    WARNING: do not add new typedefs
    #52: FILE: include/osdep_service_linux.h:52:
    +	typedef	struct sk_buff	_pkt;

    WARNING: do not add new typedefs
    #53: FILE: include/osdep_service_linux.h:53:
    +	typedef unsigned char _buffer;

    WARNING: do not add new typedefs
    #55: FILE: include/osdep_service_linux.h:55:
    +	typedef	int	_OS_STATUS;

    WARNING: do not add new typedefs
    #57: FILE: include/osdep_service_linux.h:57:
    +	typedef unsigned long _irqL;

    WARNING: do not add new typedefs
    #58: FILE: include/osdep_service_linux.h:58:
    +	typedef	struct	net_device * _nic_hdl;

    WARNING: do not add new typedefs
    #62: FILE: include/osdep_service_linux.h:62:
    +	typedef void timer_hdl_return;

    WARNING: do not add new typedefs
    #63: FILE: include/osdep_service_linux.h:63:
    +	typedef void* timer_hdl_context;

    WARNING: do not add new typedefs
    #65: FILE: include/osdep_service_linux.h:65:
    +	typedef struct work_struct _workitem;

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c      |  8 ++---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c |  2 +-
 drivers/staging/rtl8723bs/core/rtw_recv.c     |  2 +-
 drivers/staging/rtl8723bs/core/rtw_xmit.c     | 18 +++++------
 .../staging/rtl8723bs/hal/rtl8723bs_recv.c    |  4 +--
 drivers/staging/rtl8723bs/include/drv_types.h | 18 +++++------
 drivers/staging/rtl8723bs/include/hal_data.h  |  2 +-
 .../rtl8723bs/include/ioctl_cfg80211.h        |  2 +-
 .../staging/rtl8723bs/include/osdep_intf.h    |  4 +--
 .../staging/rtl8723bs/include/osdep_service.h |  2 +-
 .../rtl8723bs/include/osdep_service_linux.h   | 27 ++++-------------
 .../staging/rtl8723bs/include/recv_osdep.h    |  6 ++--
 drivers/staging/rtl8723bs/include/rtw_cmd.h   |  4 +--
 drivers/staging/rtl8723bs/include/rtw_io.h    |  2 +-
 drivers/staging/rtl8723bs/include/rtw_mlme.h  | 30 +++++++++----------
 .../staging/rtl8723bs/include/rtw_mlme_ext.h  |  8 ++---
 drivers/staging/rtl8723bs/include/rtw_mp.h    |  4 +--
 .../staging/rtl8723bs/include/rtw_pwrctrl.h   |  8 ++---
 drivers/staging/rtl8723bs/include/rtw_recv.h  | 16 +++++-----
 drivers/staging/rtl8723bs/include/rtw_xmit.h  | 18 +++++------
 drivers/staging/rtl8723bs/include/sta_info.h  | 10 +++----
 .../staging/rtl8723bs/include/xmit_osdep.h    | 12 ++++----
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   |  2 +-
 .../staging/rtl8723bs/os_dep/osdep_service.c  |  2 +-
 drivers/staging/rtl8723bs/os_dep/recv_linux.c | 12 ++++----
 drivers/staging/rtl8723bs/os_dep/xmit_linux.c | 10 +++----
 26 files changed, 108 insertions(+), 125 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 3fe79169a811..bdb77bd46a20 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -203,7 +203,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 	return res;
 }
 
-static void c2h_wk_callback(_workitem * work);
+static void c2h_wk_callback(struct work_struct * work);
 int rtw_init_evt_priv(struct evt_priv *pevtpriv)
 {
 	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
@@ -260,7 +260,7 @@ ISR/Call-Back functions can't call this sub-function.
 
 int _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj)
 {
-	_irqL irqL;
+	unsigned long irqL;
 
 	if (obj == NULL)
 		goto exit;
@@ -279,7 +279,7 @@ int _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj)
 
 struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue)
 {
-	_irqL irqL;
+	unsigned long irqL;
 	struct cmd_obj *obj;
 
 	/* spin_lock_bh(&(queue->lock)); */
@@ -1875,7 +1875,7 @@ u8 rtw_c2h_wk_cmd(struct adapter *padapter, u8 *c2h_evt)
 	return res;
 }
 
-static void c2h_wk_callback(_workitem *work)
+static void c2h_wk_callback(struct work_struct *work)
 {
 	struct evt_priv *evtpriv = container_of(work, struct evt_priv, c2h_wk);
 	struct adapter *adapter = container_of(evtpriv, struct adapter, evtpriv);
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index ca79e60838fe..23362b39082b 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -2340,7 +2340,7 @@ void dump_mgntframe(struct adapter *padapter, struct xmit_frame *pmgntframe)
 s32 dump_mgntframe_and_wait(struct adapter *padapter, struct xmit_frame *pmgntframe, int timeout_ms)
 {
 	s32 ret = _FAIL;
-	_irqL irqL;
+	unsigned long irqL;
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	struct xmit_buf *pxmitbuf = pmgntframe->pxmitbuf;
 	struct submit_ctx sctx;
diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index c8353405d11f..697da6834810 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -1846,7 +1846,7 @@ static int amsdu_to_msdu(struct adapter *padapter, union recv_frame *prframe)
 	u16 nSubframe_Length;
 	u8 nr_subframes, i;
 	u8 *pdata;
-	_pkt *sub_pkt, *subframes[MAX_SUBFRAME_COUNT];
+	struct sk_buff *sub_pkt, *subframes[MAX_SUBFRAME_COUNT];
 	struct recv_priv *precvpriv = &padapter->recvpriv;
 	struct __queue *pfree_recv_queue = &(precvpriv->free_recv_queue);
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 0644b85c6f4c..9d45484acdeb 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -641,7 +641,7 @@ static void set_qos(struct pkt_file *ppktfile, struct pkt_attrib *pattrib)
 	pattrib->subtype = WIFI_QOS_DATA_TYPE;
 }
 
-static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib *pattrib)
+static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct pkt_attrib *pattrib)
 {
 	struct pkt_file pktfile;
 	struct sta_info *psta = NULL;
@@ -1085,7 +1085,7 @@ This sub-routine will perform all the following:
 6. apply sw-encrypt, if necessary.
 
 */
-s32 rtw_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit_frame *pxmitframe)
+s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct xmit_frame *pxmitframe)
 {
 	struct pkt_file pktfile;
 
@@ -1216,7 +1216,7 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit_fram
 }
 
 /* broadcast or multicast management pkt use BIP, unicast management pkt use CCMP encryption */
-s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit_frame *pxmitframe)
+s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct xmit_frame *pxmitframe)
 {
 	u8 *pframe, *mem_start = NULL, *tmp_buf = NULL;
 	u8 subtype;
@@ -1534,7 +1534,7 @@ struct xmit_frame *__rtw_alloc_cmdxmitframe(struct xmit_priv *pxmitpriv,
 
 struct xmit_buf *rtw_alloc_xmitbuf_ext(struct xmit_priv *pxmitpriv)
 {
-	_irqL irqL;
+	unsigned long irqL;
 	struct xmit_buf *pxmitbuf =  NULL;
 	struct list_head *plist, *phead;
 	struct __queue *pfree_queue = &pxmitpriv->free_xmit_extbuf_queue;
@@ -1578,7 +1578,7 @@ struct xmit_buf *rtw_alloc_xmitbuf_ext(struct xmit_priv *pxmitpriv)
 
 s32 rtw_free_xmitbuf_ext(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 {
-	_irqL irqL;
+	unsigned long irqL;
 	struct __queue *pfree_queue = &pxmitpriv->free_xmit_extbuf_queue;
 
 	if (!pxmitbuf)
@@ -1601,7 +1601,7 @@ s32 rtw_free_xmitbuf_ext(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 
 struct xmit_buf *rtw_alloc_xmitbuf(struct xmit_priv *pxmitpriv)
 {
-	_irqL irqL;
+	unsigned long irqL;
 	struct xmit_buf *pxmitbuf =  NULL;
 	struct list_head *plist, *phead;
 	struct __queue *pfree_xmitbuf_queue = &pxmitpriv->free_xmitbuf_queue;
@@ -1650,7 +1650,7 @@ struct xmit_buf *rtw_alloc_xmitbuf(struct xmit_priv *pxmitpriv)
 
 s32 rtw_free_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 {
-	_irqL irqL;
+	unsigned long irqL;
 	struct __queue *pfree_xmitbuf_queue = &pxmitpriv->free_xmitbuf_queue;
 
 	if (!pxmitbuf)
@@ -1804,7 +1804,7 @@ s32 rtw_free_xmitframe(struct xmit_priv *pxmitpriv, struct xmit_frame *pxmitfram
 {
 	struct __queue *queue = NULL;
 	struct adapter *padapter = pxmitpriv->adapter;
-	_pkt *pndis_pkt = NULL;
+	struct sk_buff *pndis_pkt = NULL;
 
 	if (!pxmitframe) {
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("======rtw_free_xmitframe():pxmitframe == NULL!!!!!!!!!!\n"));
@@ -2077,7 +2077,7 @@ static void do_queue_select(struct adapter	*padapter, struct pkt_attrib *pattrib
  *0	success, hardware will handle this xmit frame(packet)
  *<0	fail
  */
-s32 rtw_xmit(struct adapter *padapter, _pkt **ppkt)
+s32 rtw_xmit(struct adapter *padapter, struct sk_buff **ppkt)
 {
 	static unsigned long start;
 	static u32 drop_cnt;
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index 415e519e8aa0..9e1b33c71710 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
@@ -98,7 +98,7 @@ static void update_recvframe_phyinfo(union recv_frame *precvframe,
 		.is_beacon   = false,
 	};
 
-	/* _irqL		irqL; */
+	/* unsigned long		irqL; */
 	struct sta_priv *pstapriv;
 	struct sta_info *psta;
 
@@ -242,7 +242,7 @@ static void rtl8723bs_recv_tasklet(struct tasklet_struct *t)
 	struct __queue *recv_buf_queue;
 	u8 *ptr;
 	u32 pkt_offset, skb_len, alloc_sz;
-	_pkt *pkt_copy = NULL;
+	struct sk_buff *pkt_copy = NULL;
 	u8 shift_sz = 0, rx_report_sz = 0;
 
 	p_hal_data = GET_HAL_DATA(padapter);
diff --git a/drivers/staging/rtl8723bs/include/drv_types.h b/drivers/staging/rtl8723bs/include/drv_types.h
index 59d7e22cddca..97e8e462d718 100644
--- a/drivers/staging/rtl8723bs/include/drv_types.h
+++ b/drivers/staging/rtl8723bs/include/drv_types.h
@@ -277,7 +277,7 @@ struct rtw_traffic_statistics {
 };
 
 struct cam_ctl_t {
-	_lock lock;
+	spinlock_t lock;
 	u64 bitmap;
 };
 
@@ -303,13 +303,13 @@ struct dvobj_priv {
 
 	/* for local/global synchronization */
 	/*  */
-	_lock	lock;
+	spinlock_t	lock;
 	int macid[NUM_STA];
 
-	_mutex hw_init_mutex;
-	_mutex h2c_fwcmd_mutex;
-	_mutex setch_mutex;
-	_mutex setbw_mutex;
+	struct mutex hw_init_mutex;
+	struct mutex h2c_fwcmd_mutex;
+	struct mutex setch_mutex;
+	struct mutex setbw_mutex;
 
 	unsigned char oper_channel; /* saved channel info when call set_channel_bw */
 	unsigned char oper_bwmode;
@@ -393,7 +393,7 @@ struct adapter {
 	struct	recv_priv recvpriv;
 	struct	sta_priv stapriv;
 	struct	security_priv securitypriv;
-	_lock   security_key_mutex; /*  add for CONFIG_IEEE80211W, none 11w also can use */
+	spinlock_t   security_key_mutex; /*  add for CONFIG_IEEE80211W, none 11w also can use */
 	struct	registry_priv registrypriv;
 	struct	eeprom_priv eeprompriv;
 
@@ -432,12 +432,12 @@ struct adapter {
 	void (*intf_start)(struct adapter * adapter);
 	void (*intf_stop)(struct adapter * adapter);
 
-	_nic_hdl pnetdev;
+	struct net_device * pnetdev;
 	char old_ifname[IFNAMSIZ];
 
 	/*  used by rtw_rereg_nd_name related function */
 	struct rereg_nd_name_data {
-		_nic_hdl old_pnetdev;
+		struct net_device * old_pnetdev;
 		char old_ifname[IFNAMSIZ];
 		u8 old_ips_mode;
 		u8 old_bRegUseLed;
diff --git a/drivers/staging/rtl8723bs/include/hal_data.h b/drivers/staging/rtl8723bs/include/hal_data.h
index c933dc6cada2..9c21208765ef 100644
--- a/drivers/staging/rtl8723bs/include/hal_data.h
+++ b/drivers/staging/rtl8723bs/include/hal_data.h
@@ -419,7 +419,7 @@ struct hal_com_data {
 	/*  SDIO Tx FIFO related. */
 	/*  HIQ, MID, LOW, PUB free pages; padapter->xmitpriv.free_txpg */
 	u8 	SdioTxFIFOFreePage[SDIO_TX_FREE_PG_QUEUE];
-	_lock		SdioTxFIFOFreePageLock;
+	spinlock_t		SdioTxFIFOFreePageLock;
 	u8 	SdioTxOQTMaxFreeSpace;
 	u8 	SdioTxOQTFreeSpace;
 
diff --git a/drivers/staging/rtl8723bs/include/ioctl_cfg80211.h b/drivers/staging/rtl8723bs/include/ioctl_cfg80211.h
index 44d0a0982659..2907a6fce7a9 100644
--- a/drivers/staging/rtl8723bs/include/ioctl_cfg80211.h
+++ b/drivers/staging/rtl8723bs/include/ioctl_cfg80211.h
@@ -67,7 +67,7 @@ struct rtw_wdev_priv {
 	struct adapter *padapter;
 
 	struct cfg80211_scan_request *scan_request;
-	_lock scan_req_lock;
+	spinlock_t scan_req_lock;
 
 	struct net_device *pmon_ndev;/* for monitor interface */
 	char ifname_mon[IFNAMSIZ + 1]; /* interface name for monitor interface */
diff --git a/drivers/staging/rtl8723bs/include/osdep_intf.h b/drivers/staging/rtl8723bs/include/osdep_intf.h
index c59c1384944b..e9fee6bf8d43 100644
--- a/drivers/staging/rtl8723bs/include/osdep_intf.h
+++ b/drivers/staging/rtl8723bs/include/osdep_intf.h
@@ -32,7 +32,7 @@ Under Async. IRP (SDIO/USB)
 The protection mechanism is through the pending queue.
 */
 
-	_mutex ioctl_mutex;
+	struct mutex ioctl_mutex;
 };
 
 
@@ -70,7 +70,7 @@ int rtw_ips_pwr_up(struct adapter *padapter);
 void rtw_ips_pwr_down(struct adapter *padapter);
 
 int rtw_drv_register_netdev(struct adapter *padapter);
-void rtw_ndev_destructor(_nic_hdl ndev);
+void rtw_ndev_destructor(struct net_device * ndev);
 
 int rtw_suspend_common(struct adapter *padapter);
 int rtw_resume_common(struct adapter *padapter);
diff --git a/drivers/staging/rtl8723bs/include/osdep_service.h b/drivers/staging/rtl8723bs/include/osdep_service.h
index c241bb66a23e..63971fd691ed 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service.h
@@ -94,7 +94,7 @@ void _kfree(u8 *pbuf, u32 sz);
 
 struct sk_buff *_rtw_skb_alloc(u32 sz);
 struct sk_buff *_rtw_skb_copy(const struct sk_buff *skb);
-int _rtw_netif_rx(_nic_hdl ndev, struct sk_buff *skb);
+int _rtw_netif_rx(struct net_device * ndev, struct sk_buff *skb);
 
 #define rtw_malloc(sz)			_rtw_malloc((sz))
 #define rtw_zmalloc(sz)			_rtw_zmalloc((sz))
diff --git a/drivers/staging/rtl8723bs/include/osdep_service_linux.h b/drivers/staging/rtl8723bs/include/osdep_service_linux.h
index 9194dea217fb..6454625d6bcf 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service_linux.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service_linux.h
@@ -40,30 +40,13 @@
         #include <net/ieee80211_radiotap.h>
 	#include <net/cfg80211.h>
 
-	typedef	spinlock_t	_lock;
-	typedef struct mutex		_mutex;
-	typedef struct timer_list _timer;
-
 	struct	__queue	{
 		struct	list_head	queue;
-		_lock	lock;
+		spinlock_t	lock;
 	};
 
-	typedef	struct sk_buff	_pkt;
-	typedef unsigned char _buffer;
-
-	typedef	int	_OS_STATUS;
-	/* typedef u32 _irqL; */
-	typedef unsigned long _irqL;
-	typedef	struct	net_device * _nic_hdl;
-
 	#define thread_exit() complete_and_exit(NULL, 0)
 
-	typedef void timer_hdl_return;
-	typedef void* timer_hdl_context;
-
-	typedef struct work_struct _workitem;
-
 static inline struct list_head *get_next(struct list_head	*list)
 {
 	return list->next;
@@ -74,22 +57,22 @@ static inline struct list_head	*get_list_head(struct __queue	*queue)
 	return (&(queue->queue));
 }
 
-static inline void _set_timer(_timer *ptimer, u32 delay_time)
+static inline void _set_timer(struct timer_list *ptimer, u32 delay_time)
 {
 	mod_timer(ptimer, (jiffies + (delay_time * HZ / 1000)));
 }
 
-static inline void _init_workitem(_workitem *pwork, void *pfunc, void *cntx)
+static inline void _init_workitem(struct work_struct *pwork, void *pfunc, void *cntx)
 {
 	INIT_WORK(pwork, pfunc);
 }
 
-static inline void _set_workitem(_workitem *pwork)
+static inline void _set_workitem(struct work_struct *pwork)
 {
 	schedule_work(pwork);
 }
 
-static inline void _cancel_workitem_sync(_workitem *pwork)
+static inline void _cancel_workitem_sync(struct work_struct *pwork)
 {
 	cancel_work_sync(pwork);
 }
diff --git a/drivers/staging/rtl8723bs/include/recv_osdep.h b/drivers/staging/rtl8723bs/include/recv_osdep.h
index 5f686cb339ba..82830ffc530a 100644
--- a/drivers/staging/rtl8723bs/include/recv_osdep.h
+++ b/drivers/staging/rtl8723bs/include/recv_osdep.h
@@ -14,7 +14,7 @@ extern void _rtw_free_recv_priv(struct recv_priv *precvpriv);
 
 extern s32  rtw_recv_entry(union recv_frame *precv_frame);
 extern int rtw_recv_indicatepkt(struct adapter *adapter, union recv_frame *precv_frame);
-extern void rtw_recv_returnpacket(_nic_hdl cnxt, _pkt *preturnedpkt);
+extern void rtw_recv_returnpacket(struct net_device * cnxt, struct sk_buff *preturnedpkt);
 
 extern void rtw_handle_tkip_mic_err(struct adapter *padapter, u8 bgroup);
 
@@ -31,8 +31,8 @@ void rtw_os_free_recvframe(union recv_frame *precvframe);
 
 void rtw_os_recvbuf_resource_free(struct adapter *padapter, struct recv_buf *precvbuf);
 
-_pkt *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8 *pdata);
-void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt_attrib *pattrib);
+struct sk_buff *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8 *pdata);
+void rtw_os_recv_indicate_pkt(struct adapter *padapter, struct sk_buff *pkt, struct rx_pkt_attrib *pattrib);
 
 void rtw_init_recv_timer(struct recv_reorder_ctrl *preorder_ctrl);
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_cmd.h b/drivers/staging/rtl8723bs/include/rtw_cmd.h
index f2459ad8c1e8..9e42731f8fa3 100644
--- a/drivers/staging/rtl8723bs/include/rtw_cmd.h
+++ b/drivers/staging/rtl8723bs/include/rtw_cmd.h
@@ -53,11 +53,11 @@
 		/* u8 cmdthd_running; */
 		u8 stop_req;
 		struct adapter *padapter;
-		_mutex sctx_mutex;
+		struct mutex sctx_mutex;
 	};
 
 	struct	evt_priv {
-		_workitem c2h_wk;
+		struct work_struct c2h_wk;
 		bool c2h_wk_alive;
 		struct rtw_cbuf *c2h_queue;
 		#define C2H_QUEUE_MAX_LEN 10
diff --git a/drivers/staging/rtl8723bs/include/rtw_io.h b/drivers/staging/rtl8723bs/include/rtw_io.h
index b7076b590d84..c83d8c66bd86 100644
--- a/drivers/staging/rtl8723bs/include/rtw_io.h
+++ b/drivers/staging/rtl8723bs/include/rtw_io.h
@@ -250,7 +250,7 @@ Below is the data structure used by _io_handler
 */
 
 struct io_queue {
-	_lock	lock;
+	spinlock_t	lock;
 	struct list_head	free_ioreqs;
 	struct list_head		pending;		/* The io_req list that will be served in the single protocol read/write. */
 	struct list_head		processing;
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme.h b/drivers/staging/rtl8723bs/include/rtw_mlme.h
index 18f1653fc975..1ebc1e183381 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme.h
@@ -131,7 +131,7 @@ struct sitesurvey_ctrl {
 	u64	last_tx_pkts;
 	uint	last_rx_pkts;
 	signed int	traffic_busy;
-	_timer	sitesurvey_ctrl_timer;
+	struct timer_list	sitesurvey_ctrl_timer;
 };
 
 struct RT_LINK_DETECT_T {
@@ -203,7 +203,7 @@ struct scan_limit_info {
 };
 
 struct cfg80211_wifidirect_info {
-	_timer					remain_on_ch_timer;
+	struct timer_list					remain_on_ch_timer;
 	u8 				restore_channel;
 	struct ieee80211_channel	remain_on_ch_channel;
 	enum nl80211_channel_type	remain_on_ch_type;
@@ -214,13 +214,13 @@ struct cfg80211_wifidirect_info {
 
 struct wifidirect_info {
 	struct adapter				*padapter;
-	_timer					find_phase_timer;
-	_timer					restore_p2p_state_timer;
+	struct timer_list					find_phase_timer;
+	struct timer_list					restore_p2p_state_timer;
 
 	/* 	Used to do the scanning. After confirming the peer is availalble, the driver transmits the P2P frame to peer. */
-	_timer					pre_tx_scan_timer;
-	_timer					reset_ch_sitesurvey;
-	_timer					reset_ch_sitesurvey2;	/* 	Just for resetting the scan limit function by using p2p nego */
+	struct timer_list					pre_tx_scan_timer;
+	struct timer_list					reset_ch_sitesurvey;
+	struct timer_list					reset_ch_sitesurvey2;	/* 	Just for resetting the scan limit function by using p2p nego */
 	struct tx_provdisc_req_info tx_prov_disc_info;
 	struct rx_provdisc_req_info rx_prov_disc_info;
 	struct tx_invite_req_info invitereq_info;
@@ -302,8 +302,8 @@ struct tdls_info {
 	u8 			cur_channel;
 	u8 			candidate_ch;
 	u8 			collect_pkt_num[MAX_CHANNEL_NUM];
-	_lock				cmd_lock;
-	_lock				hdl_lock;
+	spinlock_t				cmd_lock;
+	spinlock_t				hdl_lock;
 	u8 			watchdog_count;
 	u8 			dev_discovered;		/* WFD_TDLS: for sigma test */
 	u8 			tdls_enable;
@@ -329,7 +329,7 @@ enum {
 
 struct mlme_priv {
 
-	_lock	lock;
+	spinlock_t	lock;
 	signed int	fw_state;	/* shall we protect this variable? maybe not necessarily... */
 	u8 bScanInProcess;
 	u8 to_join; /* flag */
@@ -361,15 +361,15 @@ struct mlme_priv {
 
 	u32 auto_scan_int_ms;
 
-	_timer assoc_timer;
+	struct timer_list assoc_timer;
 
 	uint assoc_by_bssid;
 	uint assoc_by_rssi;
 
-	_timer scan_to_timer; /*  driver itself handles scan_timeout status. */
+	struct timer_list scan_to_timer; /*  driver itself handles scan_timeout status. */
 	unsigned long scan_start_time; /*  used to evaluate the time spent in scanning */
 
-	_timer set_scan_deny_timer;
+	struct timer_list set_scan_deny_timer;
 	atomic_t set_scan_deny; /* 0: allowed, 1: deny */
 
 	struct qos_priv qospriv;
@@ -386,7 +386,7 @@ struct mlme_priv {
 	struct ht_priv htpriv;
 
 	struct RT_LINK_DETECT_T	LinkDetectInfo;
-	_timer	dynamic_chk_timer; /* dynamic/periodic check timer */
+	struct timer_list	dynamic_chk_timer; /* dynamic/periodic check timer */
 
 	u8 acm_mask; /*  for wmm acm mask */
 	u8 ChannelPlan;
@@ -448,7 +448,7 @@ struct mlme_priv {
 	u32 p2p_go_probe_resp_ie_len; /* for GO */
 	u32 p2p_assoc_req_ie_len;
 
-	_lock	bcn_update_lock;
+	spinlock_t	bcn_update_lock;
 	u8 update_bcn;
 
 	u8 NumOfBcnInfoChkFail;
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
index 6aa3805b7abd..b7bf92d1328f 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
@@ -483,10 +483,10 @@ struct mlme_ext_priv {
 	struct ss_res		sitesurvey_res;
 	struct mlme_ext_info mlmext_info;/* for sta/adhoc mode, including current scanning/connecting/connected related info. */
                                                      /* for ap mode, network includes ap's cap_info */
-	_timer		survey_timer;
-	_timer		link_timer;
-	_timer		sa_query_timer;
-	/* _timer		ADDBA_timer; */
+	struct timer_list		survey_timer;
+	struct timer_list		link_timer;
+	struct timer_list		sa_query_timer;
+	/* struct timer_list		ADDBA_timer; */
 	u16 		chan_scan_time;
 	unsigned long last_scan_time;
 	u8 scan_abort;
diff --git a/drivers/staging/rtl8723bs/include/rtw_mp.h b/drivers/staging/rtl8723bs/include/rtw_mp.h
index 6cf598439e5c..a7fa82586967 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mp.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mp.h
@@ -15,7 +15,7 @@ struct mp_xmit_frame {
 
 	struct pkt_attrib attrib;
 
-	_pkt *pkt;
+	struct sk_buff *pkt;
 
 	int frame_tag;
 
@@ -56,7 +56,7 @@ struct MPT_CONTEXT {
 	/*  Indicate if the driver is unloading or unloaded. */
 	bool			bMptDrvUnload;
 
-	_timer			MPh2c_timeout_timer;
+	struct timer_list			MPh2c_timeout_timer;
 /*  Event used to sync H2c for BT control */
 
 	bool		MptH2cRspEvent;
diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
index 0987891e85ae..b1ef4e0ba9fe 100644
--- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
@@ -212,10 +212,10 @@ struct pwrctrl_priv {
 	u8 dtim;
 
 	u32 alives;
-	_workitem cpwm_event;
+	struct work_struct cpwm_event;
 	u8 brpwmtimeout;
-	_workitem rpwmtimeoutwi;
-	_timer pwr_rpwm_timer;
+	struct work_struct rpwmtimeoutwi;
+	struct timer_list pwr_rpwm_timer;
 	u8 bpower_saving; /* for LPS/IPS */
 
 	u8 b_hw_radio_off;
@@ -282,7 +282,7 @@ struct pwrctrl_priv {
 	u32 	wowlan_pattern_context[8][5];
 	u64		wowlan_fw_iv;
 #endif /*  CONFIG_WOWLAN */
-	_timer	pwr_state_check_timer;
+	struct timer_list	pwr_state_check_timer;
 	struct adapter *adapter;
 	int		pwr_state_check_interval;
 	u8 pwr_state_check_cnts;
diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
index 7737e3a0e105..2cc5e0beb90b 100644
--- a/drivers/staging/rtl8723bs/include/rtw_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
@@ -47,7 +47,7 @@ struct recv_reorder_ctrl {
 	u16 wend_b;
 	u8 wsize_b;
 	struct __queue pending_recvframe_queue;
-	_timer reordering_ctrl_timer;
+	struct timer_list reordering_ctrl_timer;
 };
 
 struct	stainfo_rxcache	{
@@ -214,7 +214,7 @@ accesser of recv_priv: rtw_recv_entry(dispatch / passive level); recv_thread(pas
 using enter_critical section to protect
 */
 struct recv_priv {
-	_lock	lock;
+	spinlock_t	lock;
 	struct __queue	free_recv_queue;
 	struct __queue	recv_pending_queue;
 	struct __queue	uc_swdec_pending_queue;
@@ -264,7 +264,7 @@ struct recv_priv {
 	/* int FalseAlmCnt_all; */
 
 
-	_timer signal_stat_timer;
+	struct timer_list signal_stat_timer;
 	u32 signal_stat_sampling_interval;
 	/* u32 signal_stat_converging_constant; */
 	struct signal_stat signal_qual_data;
@@ -275,7 +275,7 @@ struct recv_priv {
 
 struct sta_recv_priv {
 
-	_lock	lock;
+	spinlock_t	lock;
 	signed int	option;
 
 	/* struct __queue	blk_strms[MAX_RX_NUMBLKS]; */
@@ -293,7 +293,7 @@ struct sta_recv_priv {
 struct recv_buf {
 	struct list_head list;
 
-	_lock recvbuf_lock;
+	spinlock_t recvbuf_lock;
 
 	u32 ref_cnt;
 
@@ -308,7 +308,7 @@ struct recv_buf {
 	u8 *ptail;
 	u8 *pend;
 
-	_pkt	*pskb;
+	struct sk_buff	*pskb;
 	u8 reuse;
 };
 
@@ -334,8 +334,8 @@ struct recv_frame_hdr {
 	struct sk_buff	 *pkt;
 	struct sk_buff	 *pkt_newalloc;
 #else /*  CONFIG_BSD_RX_USE_MBUF */
-	_pkt	*pkt;
-	_pkt *pkt_newalloc;
+	struct sk_buff	*pkt;
+	struct sk_buff *pkt_newalloc;
 #endif /*  CONFIG_BSD_RX_USE_MBUF */
 
 	struct adapter  *adapter;
diff --git a/drivers/staging/rtl8723bs/include/rtw_xmit.h b/drivers/staging/rtl8723bs/include/rtw_xmit.h
index db5884a8a707..a6fb8be8c63a 100644
--- a/drivers/staging/rtl8723bs/include/rtw_xmit.h
+++ b/drivers/staging/rtl8723bs/include/rtw_xmit.h
@@ -128,7 +128,7 @@ union txdesc {
 };
 
 struct	hw_xmit	{
-	/* _lock xmit_lock; */
+	/* spinlock_t xmit_lock; */
 	/* struct list_head	pending; */
 	struct __queue *sta_queue;
 	/* struct hw_txqueue *phwtxqueue; */
@@ -284,7 +284,7 @@ struct xmit_frame {
 
 	struct pkt_attrib attrib;
 
-	_pkt *pkt;
+	struct sk_buff *pkt;
 
 	int	frame_tag;
 
@@ -312,7 +312,7 @@ struct tx_servq {
 
 
 struct sta_xmit_priv {
-	_lock	lock;
+	spinlock_t	lock;
 	signed int	option;
 	signed int	apsd_setting;	/* When bit mask is on, the associated edca queue supports APSD. */
 
@@ -359,7 +359,7 @@ enum cmdbuf_type {
 
 struct	xmit_priv {
 
-	_lock	lock;
+	spinlock_t	lock;
 
 	struct completion xmit_comp;
 	struct completion terminate_xmitthread_comp;
@@ -436,10 +436,10 @@ struct	xmit_priv {
 	u16 nqos_ssn;
 
 	int	ack_tx;
-	_mutex ack_tx_mutex;
+	struct mutex ack_tx_mutex;
 	struct submit_ctx ack_tx_ops;
 	u8 seq_no;
-	_lock lock_sctx;
+	spinlock_t lock_sctx;
 };
 
 extern struct xmit_frame *__rtw_alloc_cmdxmitframe(struct xmit_priv *pxmitpriv,
@@ -469,8 +469,8 @@ extern s32 rtw_xmitframe_enqueue(struct adapter *padapter, struct xmit_frame *px
 extern s32 rtw_xmit_classifier(struct adapter *padapter, struct xmit_frame *pxmitframe);
 extern u32 rtw_calculate_wlan_pkt_size_by_attribue(struct pkt_attrib *pattrib);
 #define rtw_wlan_pkt_size(f) rtw_calculate_wlan_pkt_size_by_attribue(&f->attrib)
-extern s32 rtw_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit_frame *pxmitframe);
-extern s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit_frame *pxmitframe);
+extern s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct xmit_frame *pxmitframe);
+extern s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct xmit_frame *pxmitframe);
 s32 _rtw_init_hw_txqueue(struct hw_txqueue *phw_txqueue, u8 ac_tag);
 void _rtw_init_sta_xmit_priv(struct sta_xmit_priv *psta_xmitpriv);
 
@@ -487,7 +487,7 @@ s32 rtw_alloc_hwxmits(struct adapter *padapter);
 void rtw_free_hwxmits(struct adapter *padapter);
 
 
-s32 rtw_xmit(struct adapter *padapter, _pkt **pkt);
+s32 rtw_xmit(struct adapter *padapter, struct sk_buff **pkt);
 bool xmitframe_hiq_filter(struct xmit_frame *xmitframe);
 
 signed int xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_frame *pxmitframe);
diff --git a/drivers/staging/rtl8723bs/include/sta_info.h b/drivers/staging/rtl8723bs/include/sta_info.h
index 1dbbe6cbf174..28fb9f26466b 100644
--- a/drivers/staging/rtl8723bs/include/sta_info.h
+++ b/drivers/staging/rtl8723bs/include/sta_info.h
@@ -69,7 +69,7 @@ struct	stainfo_stats	{
 
 struct sta_info {
 
-	_lock	lock;
+	spinlock_t	lock;
 	struct list_head	list; /* free_sta_queue */
 	struct list_head	hash_list; /* sta_hash */
 	struct adapter *padapter;
@@ -121,7 +121,7 @@ struct sta_info {
 	struct stainfo_stats sta_stats;
 
 	/* for A-MPDU TX, ADDBA timeout check */
-	_timer addba_retry_timer;
+	struct timer_list addba_retry_timer;
 
 	/* for A-MPDU Rx reordering buffer control */
 	struct recv_reorder_ctrl recvreorder_ctrl[16];
@@ -314,7 +314,7 @@ struct	sta_priv {
 	u8 *pstainfo_buf;
 	struct __queue	free_sta_queue;
 
-	_lock sta_hash_lock;
+	spinlock_t sta_hash_lock;
 	struct list_head   sta_hash[NUM_STA];
 	int asoc_sta_count;
 	struct __queue sleep_q;
@@ -324,8 +324,8 @@ struct	sta_priv {
 
 	struct list_head asoc_list;
 	struct list_head auth_list;
-	_lock asoc_list_lock;
-	_lock auth_list_lock;
+	spinlock_t asoc_list_lock;
+	spinlock_t auth_list_lock;
 	u8 asoc_list_cnt;
 	u8 auth_list_cnt;
 
diff --git a/drivers/staging/rtl8723bs/include/xmit_osdep.h b/drivers/staging/rtl8723bs/include/xmit_osdep.h
index 78109c633c10..0e0d8d150f78 100644
--- a/drivers/staging/rtl8723bs/include/xmit_osdep.h
+++ b/drivers/staging/rtl8723bs/include/xmit_osdep.h
@@ -9,9 +9,9 @@
 
 
 struct pkt_file {
-	_pkt *pkt;
+	struct sk_buff *pkt;
 	__kernel_size_t pkt_len;	 /* the remainder length of the open_file */
-	_buffer *cur_buffer;
+	unsigned char *cur_buffer;
 	u8 *buf_start;
 	u8 *cur_addr;
 	__kernel_size_t buf_len;
@@ -25,8 +25,8 @@ struct sta_xmit_priv;
 struct xmit_frame;
 struct xmit_buf;
 
-extern int _rtw_xmit_entry(_pkt *pkt, _nic_hdl pnetdev);
-extern int rtw_xmit_entry(_pkt *pkt, _nic_hdl pnetdev);
+extern int _rtw_xmit_entry(struct sk_buff *pkt, struct net_device * pnetdev);
+extern int rtw_xmit_entry(struct sk_buff *pkt, struct net_device * pnetdev);
 
 void rtw_os_xmit_schedule(struct adapter *padapter);
 
@@ -34,11 +34,11 @@ int rtw_os_xmit_resource_alloc(struct adapter *padapter, struct xmit_buf *pxmitb
 void rtw_os_xmit_resource_free(struct adapter *padapter, struct xmit_buf *pxmitbuf, u32 free_sz, u8 flag);
 
 extern uint rtw_remainder_len(struct pkt_file *pfile);
-extern void _rtw_open_pktfile(_pkt *pkt, struct pkt_file *pfile);
+extern void _rtw_open_pktfile(struct sk_buff *pkt, struct pkt_file *pfile);
 extern uint _rtw_pktfile_read(struct pkt_file *pfile, u8 *rmem, uint rlen);
 extern signed int rtw_endofpktfile(struct pkt_file *pfile);
 
-extern void rtw_os_pkt_complete(struct adapter *padapter, _pkt *pkt);
+extern void rtw_os_pkt_complete(struct adapter *padapter, struct sk_buff *pkt);
 extern void rtw_os_xmit_complete(struct adapter *padapter, struct xmit_frame *pxframe);
 
 #endif /* __XMIT_OSDEP_H_ */
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index b62fe9238e6d..4ece23737712 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -205,7 +205,7 @@ int _netdev_open(struct net_device *pnetdev);
 int netdev_open(struct net_device *pnetdev);
 static int netdev_close(struct net_device *pnetdev);
 
-static void loadparam(struct adapter *padapter, _nic_hdl pnetdev)
+static void loadparam(struct adapter *padapter, struct net_device * pnetdev)
 {
 	struct registry_priv  *registry_par = &padapter->registrypriv;
 
diff --git a/drivers/staging/rtl8723bs/os_dep/osdep_service.c b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
index 3c71d2fafabf..e2b8923df129 100644
--- a/drivers/staging/rtl8723bs/os_dep/osdep_service.c
+++ b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
@@ -47,7 +47,7 @@ inline struct sk_buff *_rtw_skb_copy(const struct sk_buff *skb)
 	return skb_copy(skb, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
 }
 
-inline int _rtw_netif_rx(_nic_hdl ndev, struct sk_buff *skb)
+inline int _rtw_netif_rx(struct net_device * ndev, struct sk_buff *skb)
 {
 	skb->dev = ndev;
 	return netif_rx(skb);
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index e77cd2cc29b1..160653c0cc91 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -53,10 +53,10 @@ void rtw_os_recvbuf_resource_free(struct adapter *padapter, struct recv_buf *pre
 	}
 }
 
-_pkt *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8 *pdata)
+struct sk_buff *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8 *pdata)
 {
 	u16 eth_type;
-	_pkt *sub_skb;
+	struct sk_buff *sub_skb;
 	struct rx_pkt_attrib *pattrib;
 
 	pattrib = &prframe->u.hdr.attrib;
@@ -95,7 +95,7 @@ _pkt *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8
 	return sub_skb;
 }
 
-void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt_attrib *pattrib)
+void rtw_os_recv_indicate_pkt(struct adapter *padapter, struct sk_buff *pkt, struct rx_pkt_attrib *pattrib)
 {
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	int ret;
@@ -103,7 +103,7 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
 	/* Indicate the packets to upper layer */
 	if (pkt) {
 		if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true) {
-			_pkt *pskb2 = NULL;
+			struct sk_buff *pskb2 = NULL;
 			struct sta_info *psta = NULL;
 			struct sta_priv *pstapriv = &padapter->stapriv;
 			int bmcast = IS_MCAST(pattrib->dst);
@@ -201,7 +201,7 @@ void rtw_handle_tkip_mic_err(struct adapter *padapter, u8 bgroup)
 #ifdef CONFIG_AUTO_AP_MODE
 static void rtw_os_ksocket_send(struct adapter *padapter, union recv_frame *precv_frame)
 {
-	_pkt *skb = precv_frame->u.hdr.pkt;
+	struct sk_buff *skb = precv_frame->u.hdr.pkt;
 	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
 	struct sta_info *psta = precv_frame->u.hdr.psta;
 
@@ -235,7 +235,7 @@ int rtw_recv_indicatepkt(struct adapter *padapter, union recv_frame *precv_frame
 {
 	struct recv_priv *precvpriv;
 	struct __queue	*pfree_recv_queue;
-	_pkt *skb;
+	struct sk_buff *skb;
 	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
 
 	precvpriv = &(padapter->recvpriv);
diff --git a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
index 79c477f559de..83d7cbbcdf93 100644
--- a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
@@ -15,7 +15,7 @@ uint rtw_remainder_len(struct pkt_file *pfile)
 	return (pfile->buf_len - ((SIZE_PTR)(pfile->cur_addr) - (SIZE_PTR)(pfile->buf_start)));
 }
 
-void _rtw_open_pktfile(_pkt *pktptr, struct pkt_file *pfile)
+void _rtw_open_pktfile(struct sk_buff *pktptr, struct pkt_file *pfile)
 {
 	pfile->pkt = pktptr;
 	pfile->cur_addr = pfile->buf_start = pktptr->data;
@@ -67,7 +67,7 @@ void rtw_os_xmit_resource_free(struct adapter *padapter, struct xmit_buf *pxmitb
 
 #define WMM_XMIT_THRESHOLD	(NR_XMITFRAME * 2 / 5)
 
-void rtw_os_pkt_complete(struct adapter *padapter, _pkt *pkt)
+void rtw_os_pkt_complete(struct adapter *padapter, struct sk_buff *pkt)
 {
 	u16 queue;
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
@@ -104,7 +104,7 @@ void rtw_os_xmit_schedule(struct adapter *padapter)
 		complete(&pri_adapter->xmitpriv.xmit_comp);
 }
 
-static void rtw_check_xmit_resource(struct adapter *padapter, _pkt *pkt)
+static void rtw_check_xmit_resource(struct adapter *padapter, struct sk_buff *pkt)
 {
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	u16 queue;
@@ -189,7 +189,7 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
 	return true;
 }
 
-int _rtw_xmit_entry(_pkt *pkt, _nic_hdl pnetdev)
+int _rtw_xmit_entry(struct sk_buff *pkt, struct net_device * pnetdev)
 {
 	struct adapter *padapter = rtw_netdev_priv(pnetdev);
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
@@ -244,7 +244,7 @@ int _rtw_xmit_entry(_pkt *pkt, _nic_hdl pnetdev)
 	return 0;
 }
 
-int rtw_xmit_entry(_pkt *pkt, _nic_hdl pnetdev)
+int rtw_xmit_entry(struct sk_buff *pkt, struct net_device * pnetdev)
 {
 	int ret = 0;
 
-- 
2.30.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

