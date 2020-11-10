Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7AD52ACE64
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 05:10:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7BAFF87460;
	Tue, 10 Nov 2020 04:10:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hWP0xsijqqqa; Tue, 10 Nov 2020 04:10:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D799687193;
	Tue, 10 Nov 2020 04:10:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 910951BF34E
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 04:10:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8B27D2035D
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 04:10:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZdX0sP1JCFeD for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 04:10:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
 [209.85.166.52])
 by silver.osuosl.org (Postfix) with ESMTPS id C7C9220366
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 04:10:29 +0000 (UTC)
Received: by mail-io1-f52.google.com with SMTP id p7so12333754ioo.6
 for <devel@driverdev.osuosl.org>; Mon, 09 Nov 2020 20:10:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zfwsVv/kL6m8cgEQ4vp0vObcB6PmiUsZa9b4HooMYDU=;
 b=f/HMCUAjv9iLwWOSy8Bnfc+n6ly4AHVL9M1ibWSaiJLgEerNT5keYz2h0cmpcMXUfV
 pQnCqblkktZZctTI1KN5lnGrLPhu6d67M9FGxTg1wbHXSMmzHwEpwNEzGE7HAIAxdn2o
 LH33YKbPr0yGHNzMQxaGLllREEb5jhRqUzxALmKMu+dOyKrB3nTl2RCdlZ5HW/Ngk0hs
 QkeCSSLS7ezHZaXmiVJqT/FBcQozL3i4GLaIc+NQ/KP1F+4IHX5kY77KCvFgsy7aE7F5
 UyjJqKs5p/sUgRwZEtG2XyPYpe6XzkOMPz95paAIo9QAkB80pE23H5NNFT1cnctYo9hK
 y7AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zfwsVv/kL6m8cgEQ4vp0vObcB6PmiUsZa9b4HooMYDU=;
 b=mk+0FkC1pA5N0ICL+tFbxgDVRyz42/bFzhpk1vG3BRPBUTNgfkADBMnMitTFihRmzZ
 QcTv2FftaAecu0bUCzWj3dRQfwlqkD5WUaMaJzhBE3ZvqIfzsrRnXC6RVvm/2IEQhrnp
 GJHFA2MGtI8+2Neh6SIZGnBCvmugaCSzBdwMjlhxhrLYhNkGYS7Pk0XFka4Oe8Ci0fPE
 C4qafq2OyDNlIcfwYmEtvUIGmmzLBPn+5EKEqGdgIGz/OlKL5BRsrIWpdyjQYzL8B1uA
 AOIz+WvHSNz9cVkgQ11zPZzXER3oTOy31gf2dM5RFntJCawW0zMvKGsMFwrKYXN5jBX9
 Zf/w==
X-Gm-Message-State: AOAM530/YOyfoweSgseXnVBQJIlAMOYqXxluA+VApJbQJudpA13pn9Im
 ReEDWTFLVkl73Wf1+IX4rJU=
X-Google-Smtp-Source: ABdhPJzRt8VRQqToSdF54TUSVC1eodppxYn/lcQMlawjcw6CL86F9JraBGP1ah1+rzPilNUULcGinA==
X-Received: by 2002:a5d:8a02:: with SMTP id w2mr12349498iod.178.1604981429092; 
 Mon, 09 Nov 2020 20:10:29 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id e21sm6658842ioc.0.2020.11.09.20.10.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 20:10:28 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 09/10] staging: rtl8723bs: clean up pointer locations
Date: Mon,  9 Nov 2020 22:10:07 -0600
Message-Id: <20201110041008.15847-9-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201110041008.15847-1-ross.schm.dev@gmail.com>
References: <20201110041008.15847-1-ross.schm.dev@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Move pointer locations to fix coding style issues and clear checkpatch
errors.

ERROR: "foo * bar" should be "foo *bar"

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_io.h        |  2 +-
 drivers/staging/rtl8723bs/include/rtw_mlme.h      | 14 +++++++-------
 drivers/staging/rtl8723bs/include/rtw_mp.h        | 10 +++++-----
 drivers/staging/rtl8723bs/include/rtw_pwrctrl.h   |  6 +++---
 drivers/staging/rtl8723bs/include/rtw_recv.h      |  4 ++--
 drivers/staging/rtl8723bs/include/rtw_security.h  | 12 ++++++------
 drivers/staging/rtl8723bs/include/rtw_xmit.h      |  8 ++++----
 drivers/staging/rtl8723bs/include/sta_info.h      |  2 +-
 drivers/staging/rtl8723bs/include/wifi.h          | 10 +++++-----
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 14 +++++++-------
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c    |  8 ++++----
 drivers/staging/rtl8723bs/os_dep/recv_linux.c     | 10 +++++-----
 12 files changed, 50 insertions(+), 50 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_io.h b/drivers/staging/rtl8723bs/include/rtw_io.h
index 2581b5165d1b..b7076b590d84 100644
--- a/drivers/staging/rtl8723bs/include/rtw_io.h
+++ b/drivers/staging/rtl8723bs/include/rtw_io.h
@@ -345,7 +345,7 @@ extern void free_io_queue(struct adapter *adapter);
 extern void async_bus_io(struct io_queue *pio_q);
 extern void bus_sync_io(struct io_queue *pio_q);
 extern u32 _ioreq2rwmem(struct io_queue *pio_q);
-extern void dev_power_down(struct adapter * Adapter, u8 bpwrup);
+extern void dev_power_down(struct adapter *Adapter, u8 bpwrup);
 
 #define PlatformEFIOWrite1Byte(_a, _b, _c)		\
 	rtw_write8(_a, _b, _c)
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme.h b/drivers/staging/rtl8723bs/include/rtw_mlme.h
index 07efb74831eb..ea0dd156051e 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme.h
@@ -559,15 +559,15 @@ static inline void set_scanned_network_val(struct mlme_priv *pmlmepriv, sint val
 
 extern u16 rtw_get_capability(struct wlan_bssid_ex *bss);
 extern void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *target);
-extern void rtw_disconnect_hdl_under_linked(struct adapter * adapter, struct sta_info *psta, u8 free_assoc);
+extern void rtw_disconnect_hdl_under_linked(struct adapter *adapter, struct sta_info *psta, u8 free_assoc);
 extern void rtw_generate_random_ibss(u8 *pibss);
-extern struct wlan_network* rtw_find_network(struct __queue *scanned_queue, u8 *addr);
-extern struct wlan_network* rtw_get_oldest_wlan_network(struct __queue *scanned_queue);
+extern struct wlan_network *rtw_find_network(struct __queue *scanned_queue, u8 *addr);
+extern struct wlan_network *rtw_get_oldest_wlan_network(struct __queue *scanned_queue);
 struct wlan_network *_rtw_find_same_network(struct __queue *scanned_queue, struct wlan_network *network);
 
-extern void rtw_free_assoc_resources(struct adapter * adapter, int lock_scanned_queue);
-extern void rtw_indicate_disconnect(struct adapter * adapter);
-extern void rtw_indicate_connect(struct adapter * adapter);
+extern void rtw_free_assoc_resources(struct adapter *adapter, int lock_scanned_queue);
+extern void rtw_indicate_disconnect(struct adapter *adapter);
+extern void rtw_indicate_connect(struct adapter *adapter);
 void rtw_indicate_scan_done(struct adapter *padapter, bool aborted);
 void rtw_scan_abort(struct adapter *adapter);
 
@@ -600,7 +600,7 @@ extern void _rtw_free_network(struct mlme_priv *pmlmepriv, struct wlan_network *
 extern void _rtw_free_network_nolock(struct mlme_priv *pmlmepriv, struct wlan_network *pnetwork);
 
 
-extern struct wlan_network* _rtw_find_network(struct __queue *scanned_queue, u8 *addr);
+extern struct wlan_network *_rtw_find_network(struct __queue *scanned_queue, u8 *addr);
 
 extern sint rtw_if_up(struct adapter *padapter);
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_mp.h b/drivers/staging/rtl8723bs/include/rtw_mp.h
index 4d156eab029c..ab7cd51ce681 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mp.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mp.h
@@ -31,7 +31,7 @@ struct mp_wiparam {
 	u32 io_value;
 };
 
-typedef void(*wi_act_func)(void* padapter);
+typedef void(*wi_act_func)(void *padapter);
 
 struct mp_tx {
 	u8 stop;
@@ -478,13 +478,13 @@ void Hal_SetChannel(struct adapter *padapter);
 void Hal_SetAntennaPathPower(struct adapter *padapter);
 s32 Hal_SetThermalMeter(struct adapter *padapter, u8 target_ther);
 s32 Hal_SetPowerTracking(struct adapter *padapter, u8 enable);
-void Hal_GetPowerTracking(struct adapter *padapter, u8 * enable);
+void Hal_GetPowerTracking(struct adapter *padapter, u8 *enable);
 void Hal_GetThermalMeter(struct adapter *padapter, u8 *value);
 void Hal_mpt_SwitchRfSetting(struct adapter *padapter);
-void Hal_MPT_CCKTxPowerAdjust(struct adapter * Adapter, bool bInCH14);
+void Hal_MPT_CCKTxPowerAdjust(struct adapter *Adapter, bool bInCH14);
 void Hal_MPT_CCKTxPowerAdjustbyIndex(struct adapter *padapter, bool beven);
-void Hal_SetCCKTxPower(struct adapter *padapter, u8 * TxPower);
-void Hal_SetOFDMTxPower(struct adapter *padapter, u8 * TxPower);
+void Hal_SetCCKTxPower(struct adapter *padapter, u8 *TxPower);
+void Hal_SetOFDMTxPower(struct adapter *padapter, u8 *TxPower);
 void Hal_TriggerRFThermalMeter(struct adapter *padapter);
 u8 Hal_ReadRFThermalMeter(struct adapter *padapter);
 void Hal_SetCCKContinuousTx(struct adapter *padapter, u8 bStart);
diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
index 3d999540e239..0987891e85ae 100644
--- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
@@ -318,7 +318,7 @@ struct pwrctrl_priv {
 	_rtw_set_pwr_state_check_timer((pwrctl), (pwrctl)->pwr_state_check_interval)
 
 extern void rtw_init_pwrctrl_priv(struct adapter *adapter);
-extern void rtw_free_pwrctrl_priv(struct adapter * adapter);
+extern void rtw_free_pwrctrl_priv(struct adapter *adapter);
 
 s32 rtw_register_task_alive(struct adapter *, u32 task);
 void rtw_unregister_task_alive(struct adapter *, u32 task);
@@ -329,8 +329,8 @@ extern void rtw_unregister_cmd_alive(struct adapter *padapter);
 extern void cpwm_int_hdl(struct adapter *padapter, struct reportpwrstate_parm *preportpwrstate);
 extern void LPS_Leave_check(struct adapter *padapter);
 
-extern void LeaveAllPowerSaveMode(struct adapter * Adapter);
-extern void LeaveAllPowerSaveModeDirect(struct adapter * Adapter);
+extern void LeaveAllPowerSaveMode(struct adapter *Adapter);
+extern void LeaveAllPowerSaveModeDirect(struct adapter *Adapter);
 void _ips_enter(struct adapter *padapter);
 void ips_enter(struct adapter *padapter);
 int _ips_leave(struct adapter *padapter);
diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
index 60bf00f35cae..b4aeb44d5d6e 100644
--- a/drivers/staging/rtl8723bs/include/rtw_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
@@ -450,7 +450,7 @@ static inline u8 *recvframe_put(union recv_frame *precvframe, sint sz)
 
 	/* used for append sz bytes from ptr to rx_tail, update rx_tail and return the updated rx_tail to the caller */
 	/* after putting, rx_tail must be still larger than rx_end. */
-	unsigned char * prev_rx_tail;
+	unsigned char *prev_rx_tail;
 
 	if (precvframe == NULL)
 		return NULL;
@@ -503,7 +503,7 @@ static inline union recv_frame *rxmem_to_recvframe(u8 *rxmem)
 	/* from any given member of recv_frame. */
 	/*  rxmem indicates the any member/address in recv_frame */
 
-	return (union recv_frame*)(((SIZE_PTR)rxmem >> RXFRAME_ALIGN) << RXFRAME_ALIGN);
+	return (union recv_frame *)(((SIZE_PTR)rxmem >> RXFRAME_ALIGN) << RXFRAME_ALIGN);
 
 }
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_security.h b/drivers/staging/rtl8723bs/include/rtw_security.h
index 514c0799c34b..f4a3739651da 100644
--- a/drivers/staging/rtl8723bs/include/rtw_security.h
+++ b/drivers/staging/rtl8723bs/include/rtw_security.h
@@ -92,7 +92,7 @@ typedef struct _RT_PMKID_LIST {
 	u8 				Bssid[6];
 	u8 				PMKID[16];
 	u8 				SsidBuf[33];
-	u8*					ssid_octet;
+	u8 *ssid_octet;
 	u16 					ssid_length;
 } RT_PMKID_LIST, *PRT_PMKID_LIST;
 
@@ -401,13 +401,13 @@ static const unsigned long K[64] = {
 #define MIN(x, y) (((x) < (y)) ? (x) : (y))
 #endif
 int omac1_aes_128(u8 *key, u8 *data, size_t data_len, u8 *mac);
-void rtw_secmicsetkey(struct mic_data *pmicdata, u8 * key);
+void rtw_secmicsetkey(struct mic_data *pmicdata, u8 *key);
 void rtw_secmicappendbyte(struct mic_data *pmicdata, u8 b);
-void rtw_secmicappend(struct mic_data *pmicdata, u8 * src, u32 nBytes);
-void rtw_secgetmic(struct mic_data *pmicdata, u8 * dst);
+void rtw_secmicappend(struct mic_data *pmicdata, u8 *src, u32 nBytes);
+void rtw_secgetmic(struct mic_data *pmicdata, u8 *dst);
 
 void rtw_seccalctkipmic(
-	u8 * key,
+	u8 *key,
 	u8 *header,
 	u8 *data,
 	u32 data_len,
@@ -424,6 +424,6 @@ void rtw_wep_decrypt(struct adapter *padapter, u8  *precvframe);
 u32 rtw_BIP_verify(struct adapter *padapter, u8 *precvframe);
 
 void rtw_sec_restore_wep_key(struct adapter *adapter);
-u8 rtw_handle_tkip_countermeasure(struct adapter * adapter, const char *caller);
+u8 rtw_handle_tkip_countermeasure(struct adapter *adapter, const char *caller);
 
 #endif	/* __RTL871X_SECURITY_H_ */
diff --git a/drivers/staging/rtl8723bs/include/rtw_xmit.h b/drivers/staging/rtl8723bs/include/rtw_xmit.h
index 196e70865c00..c04318573f8f 100644
--- a/drivers/staging/rtl8723bs/include/rtw_xmit.h
+++ b/drivers/staging/rtl8723bs/include/rtw_xmit.h
@@ -183,7 +183,7 @@ struct pkt_attrib {
 	u8   mbssid;
 	u8 ldpc;
 	u8 stbc;
-	struct sta_info * psta;
+	struct sta_info *psta;
 
 	u8 rtsen;
 	u8 cts2self;
@@ -471,7 +471,7 @@ extern u32 rtw_calculate_wlan_pkt_size_by_attribue(struct pkt_attrib *pattrib);
 #define rtw_wlan_pkt_size(f) rtw_calculate_wlan_pkt_size_by_attribue(&f->attrib)
 extern s32 rtw_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit_frame *pxmitframe);
 extern s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit_frame *pxmitframe);
-s32 _rtw_init_hw_txqueue(struct hw_txqueue* phw_txqueue, u8 ac_tag);
+s32 _rtw_init_hw_txqueue(struct hw_txqueue *phw_txqueue, u8 ac_tag);
 void _rtw_init_sta_xmit_priv(struct sta_xmit_priv *psta_xmitpriv);
 
 
@@ -501,8 +501,8 @@ u8 qos_acm(u8 acm_mask, u8 priority);
 
 void enqueue_pending_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf);
 void enqueue_pending_xmitbuf_to_head(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf);
-struct xmit_buf*dequeue_pending_xmitbuf(struct xmit_priv *pxmitpriv);
-struct xmit_buf*dequeue_pending_xmitbuf_under_survey(struct xmit_priv *pxmitpriv);
+struct xmit_buf *dequeue_pending_xmitbuf(struct xmit_priv *pxmitpriv);
+struct xmit_buf *dequeue_pending_xmitbuf_under_survey(struct xmit_priv *pxmitpriv);
 sint	check_pending_xmitbuf(struct xmit_priv *pxmitpriv);
 int	rtw_xmit_thread(void *context);
 
diff --git a/drivers/staging/rtl8723bs/include/sta_info.h b/drivers/staging/rtl8723bs/include/sta_info.h
index c9aa3b5097a7..734f4e2ecd66 100644
--- a/drivers/staging/rtl8723bs/include/sta_info.h
+++ b/drivers/staging/rtl8723bs/include/sta_info.h
@@ -378,7 +378,7 @@ extern u32 rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta);
 extern void rtw_free_all_stainfo(struct adapter *padapter);
 extern struct sta_info *rtw_get_stainfo(struct sta_priv *pstapriv, u8 *hwaddr);
 extern u32 rtw_init_bcmc_stainfo(struct adapter *padapter);
-extern struct sta_info* rtw_get_bcmc_stainfo(struct adapter *padapter);
+extern struct sta_info *rtw_get_bcmc_stainfo(struct adapter *padapter);
 extern u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr);
 
 #endif /* _STA_INFO_H_ */
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index 6f2d4ea51f15..b95f7f1c70de 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -355,20 +355,20 @@ static inline int IS_MCAST(unsigned char *da)
 		return false;
 }
 
-static inline unsigned char * get_ra(unsigned char *pframe)
+static inline unsigned char *get_ra(unsigned char *pframe)
 {
 	unsigned char *ra;
 	ra = GetAddr1Ptr(pframe);
 	return ra;
 }
-static inline unsigned char * get_ta(unsigned char *pframe)
+static inline unsigned char *get_ta(unsigned char *pframe)
 {
 	unsigned char *ta;
 	ta = GetAddr2Ptr(pframe);
 	return ta;
 }
 
-static inline unsigned char * get_da(unsigned char *pframe)
+static inline unsigned char *get_da(unsigned char *pframe)
 {
 	unsigned char *da;
 	unsigned int	to_fr_ds	= (GetToDs(pframe) << 1) | GetFrDs(pframe);
@@ -392,7 +392,7 @@ static inline unsigned char * get_da(unsigned char *pframe)
 }
 
 
-static inline unsigned char * get_sa(unsigned char *pframe)
+static inline unsigned char *get_sa(unsigned char *pframe)
 {
 	unsigned char *sa;
 	unsigned int	to_fr_ds	= (GetToDs(pframe) << 1) | GetFrDs(pframe);
@@ -415,7 +415,7 @@ static inline unsigned char * get_sa(unsigned char *pframe)
 	return sa;
 }
 
-static inline unsigned char * get_hdr_bssid(unsigned char *pframe)
+static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
 {
 	unsigned char *sa = NULL;
 	unsigned int	to_fr_ds	= (GetToDs(pframe) << 1) | GetFrDs(pframe);
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 7676056913d8..7321f1c94311 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -563,7 +563,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, struct ieee_pa
 	struct sta_info *psta = NULL, *pbcmc_sta = NULL;
 	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-	struct security_priv* psecuritypriv =  &(padapter->securitypriv);
+	struct security_priv *psecuritypriv =  &(padapter->securitypriv);
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
 	DBG_8192C("%s\n", __func__);
@@ -924,8 +924,8 @@ static int rtw_cfg80211_set_encryption(struct net_device *dev, struct ieee_param
 
 	if (padapter->securitypriv.dot11AuthAlgrthm == dot11AuthAlgrthm_8021X) /*  802_1x */
 	{
-		struct sta_info * psta, *pbcmc_sta;
-		struct sta_priv * pstapriv = &padapter->stapriv;
+		struct sta_info *psta, *pbcmc_sta;
+		struct sta_priv *pstapriv = &padapter->stapriv;
 
 		/* DBG_8192C("%s, : dot11AuthAlgrthm == dot11AuthAlgrthm_8021X\n", __func__); */
 
@@ -2529,8 +2529,8 @@ static const struct net_device_ops rtw_cfg80211_monitor_if_ops = {
 static int rtw_cfg80211_add_monitor_if(struct adapter *padapter, char *name, struct net_device **ndev)
 {
 	int ret = 0;
-	struct net_device* mon_ndev = NULL;
-	struct wireless_dev* mon_wdev = NULL;
+	struct net_device *mon_ndev = NULL;
+	struct wireless_dev *mon_wdev = NULL;
 	struct rtw_netdev_priv_indicator *pnpi;
 	struct rtw_wdev_priv *pwdev_priv = adapter_wdev_data(padapter);
 
@@ -2609,7 +2609,7 @@ static struct wireless_dev *
 		enum nl80211_iftype type, struct vif_params *params)
 {
 	int ret = 0;
-	struct net_device* ndev = NULL;
+	struct net_device *ndev = NULL;
 	struct adapter *padapter = wiphy_to_adapter(wiphy);
 
 	DBG_871X(FUNC_ADPT_FMT " wiphy:%s, name:%s, type:%d\n",
@@ -2911,7 +2911,7 @@ static int	cfg80211_rtw_change_bss(struct wiphy *wiphy, struct net_device *ndev,
 	return 0;
 }
 
-void rtw_cfg80211_rx_action(struct adapter *adapter, u8 *frame, uint frame_len, const char*msg)
+void rtw_cfg80211_rx_action(struct adapter *adapter, u8 *frame, uint frame_len, const char *msg)
 {
 	s32 freq;
 	int channel;
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 9c00469deeab..294c4f406fcc 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -78,7 +78,7 @@ void rtw_indicate_wx_disassoc_event(struct adapter *padapter)
 }
 
 static char *translate_scan(struct adapter *padapter,
-				struct iw_request_info* info, struct wlan_network *pnetwork,
+				struct iw_request_info *info, struct wlan_network *pnetwork,
 				char *start, char *stop)
 {
 	struct iw_event iwe;
@@ -765,7 +765,7 @@ static int rtw_wx_get_name(struct net_device *dev,
 	u8 ht_cap = false, vht_cap = false;
 	struct	mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct wlan_bssid_ex  *pcur_bss = &pmlmepriv->cur_network.network;
-	NDIS_802_11_RATES_EX* prates = NULL;
+	NDIS_802_11_RATES_EX *prates = NULL;
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("cmd_code =%x\n", info->cmd));
 
@@ -937,7 +937,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 	u8          j, blInserted = false;
 	int         intReturn = false;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
-        struct iw_pmksa*  pPMK = (struct iw_pmksa *)extra;
+        struct iw_pmksa *pPMK = (struct iw_pmksa *)extra;
         u8     strZeroMacAddress[ETH_ALEN] = { 0x00 };
         u8     strIssueBssid[ETH_ALEN] = { 0x00 };
 
@@ -3430,7 +3430,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 	struct sta_info *psta = NULL, *pbcmc_sta = NULL;
 	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-	struct security_priv* psecuritypriv = &(padapter->securitypriv);
+	struct security_priv *psecuritypriv = &(padapter->securitypriv);
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
 	DBG_871X("%s\n", __func__);
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index 63c1998bec7f..ac35277fbacd 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -33,7 +33,7 @@ void rtw_os_recv_resource_free(struct recv_priv *precvpriv)
 	sint i;
 	union recv_frame *precvframe;
 
-	precvframe = (union recv_frame*) precvpriv->precv_frame_buf;
+	precvframe = (union recv_frame *) precvpriv->precv_frame_buf;
 
 	for (i = 0; i < NR_RECVFRAME; i++) {
 		if (precvframe->u.hdr.pkt) {
@@ -97,7 +97,7 @@ _pkt *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8
 
 void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt_attrib *pattrib)
 {
-	struct mlme_priv*pmlmepriv = &padapter->mlmepriv;
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	int ret;
 
 	/* Indicate the packets to upper layer */
@@ -117,7 +117,7 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
 				}
 
 				if (psta) {
-					struct net_device *pnetdev = (struct net_device*)padapter->pnetdev;
+					struct net_device *pnetdev = (struct net_device *)padapter->pnetdev;
 					/* skb->ip_summed = CHECKSUM_NONE; */
 					pkt->dev = pnetdev;
 					skb_set_queue_mapping(pkt, rtw_recv_select_queue(pkt));
@@ -165,7 +165,7 @@ void rtw_handle_tkip_mic_err(struct adapter *padapter, u8 bgroup)
 	enum nl80211_key_type key_type = 0;
 	union iwreq_data wrqu;
 	struct iw_michaelmicfailure    ev;
-	struct mlme_priv*              pmlmepriv  = &padapter->mlmepriv;
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 	unsigned long cur_time = 0;
 
@@ -218,7 +218,7 @@ static void rtw_os_ksocket_send(struct adapter *padapter, union recv_frame *prec
 	if (psta && psta->isrc && psta->pid > 0) {
 		u16 rx_pid;
 
-		rx_pid = *(u16*)(skb->data+ETH_HLEN);
+		rx_pid = *(u16 *)(skb->data+ETH_HLEN);
 
 		DBG_871X("eth rx(pid = 0x%x): sta(%pM) pid = 0x%x\n",
 			rx_pid, MAC_ARG(psta->hwaddr), psta->pid);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
