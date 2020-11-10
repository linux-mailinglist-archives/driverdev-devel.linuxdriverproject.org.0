Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF412ACE57
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 05:10:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A7E5886762;
	Tue, 10 Nov 2020 04:10:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RRzV2T+Gjzg3; Tue, 10 Nov 2020 04:10:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC32884FB1;
	Tue, 10 Nov 2020 04:10:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E5D8E1BF34E
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 04:10:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DE24C20385
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 04:10:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d0NjD8CBYsGL for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 04:10:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com
 [209.85.166.172])
 by silver.osuosl.org (Postfix) with ESMTPS id C7DCC20366
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 04:10:20 +0000 (UTC)
Received: by mail-il1-f172.google.com with SMTP id p10so10528801ile.3
 for <devel@driverdev.osuosl.org>; Mon, 09 Nov 2020 20:10:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YUgBpryE8mXr1avSfc+OhxEDaGIENzQ0m9sBnl6u+u4=;
 b=dIxIm6St1QaJQ2hU/8Px83T4gi5c8nHXnbpdehHBUqEnJrsJxWdC2XdH4ItJ4Y5V9J
 kL9klV/94dEfyw5DFHuVvT81GSgIh4dvrGP+lR8vieiRCBWWcktC7zeowPJghpQoHcC6
 Q8k0ZIoCDsF9YHCFukIilVhKEwc5PUs8rG6MjLnD2wXRhBa+cF8tVphLpqq6CXJXq2yq
 zt+LyFZ2qImdlBSAMCs3ObYDsvbGNVsiR+bOmjg4vSnIykkoG+VZnHkxgdItqb8QpbnV
 gIRTHTt68skdfdMvOznmQ/HMyxvekl7Qifi4/T4uCpIUP8eEcYfFyGZdu4ePncM1s/Ju
 xmgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YUgBpryE8mXr1avSfc+OhxEDaGIENzQ0m9sBnl6u+u4=;
 b=i6W6+WSMrWiziVNkUe/yYsgxQrW2p6Ep0XCBZ0BVFE+twwqR4A9dP9KPvsNRSme62G
 iQnZ9EoqgQUKeMrX6jj4Z3b228+PoCcK9T2vtE2jhmQYt48qohDz44/Y1aDFDkOaW9WV
 FL/OWlzqkVXlDY2kR51maicoIFnu02luPy6q2fSa0zkeXOrLIU+sT9DK5Y6MGWKlMRS5
 UGR9NIyFodKvVmNHvAPEeBmsi+lkEGCH3uSiqGVCEkFhvfv/ZzWgejD6V0vSwIriutiB
 TPrnSnwqEceRRq3fW5ThQxcVosXm1fmQfbyFse6W4TFBzNBVZmoMRDp7fQertUdjh4HT
 p6Mg==
X-Gm-Message-State: AOAM5319pWO5JEtnriXEJFD8eidL0EFpLqDq+23SRjJsdQV8cm55zI2r
 JEm8PkJ0imIob+IsLITd0xQ=
X-Google-Smtp-Source: ABdhPJyOwqNJtT4nQYvJe58ZJ/OBeU34Ic4eJYdOjSEYL8zkb60lVqZ1veUtMH1U9HRB5U6cW2LCxQ==
X-Received: by 2002:a92:35c7:: with SMTP id c68mr13078270ilf.251.1604981420053; 
 Mon, 09 Nov 2020 20:10:20 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id e21sm6658842ioc.0.2020.11.09.20.10.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 20:10:19 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 01/10] staging: rtl8723bs: clean up line spacing
Date: Mon,  9 Nov 2020 22:09:59 -0600
Message-Id: <20201110041008.15847-1-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
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

Add or remove lines to fix coding style issues and clear checkpatch.

WARNING: Missing a blank line after declarations
CHECK: Please use a blank line after function/struct/union/enum declarations
CHECK: Please don't use multiple blank lines

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 29 ++++---------------
 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c  |  7 +----
 .../staging/rtl8723bs/core/rtw_wlan_util.c    | 12 +++++++-
 drivers/staging/rtl8723bs/core/rtw_xmit.c     |  3 ++
 4 files changed, 20 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 81c15895f646..894e7beae96f 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -1008,7 +1008,6 @@ static void shift_row(u8 *in, u8 *out)
 		out[15] = in[11];
 }
 
-
 static void mix_column(u8 *in, u8 *out)
 {
 		sint i;
@@ -1098,7 +1097,6 @@ static void aes128k128d(u8 *key, u8 *data, u8 *ciphertext)
 		}
 }
 
-
 /************************************************/
 /* construct_mic_iv()                           */
 /* Builds the MIC IV from header fields and PN  */
@@ -1145,7 +1143,6 @@ static void construct_mic_iv(
 		mic_iv[15] = (unsigned char) (payload_length % 256);
 }
 
-
 /************************************************/
 /* construct_mic_header1()                      */
 /* Builds the first MIC header block from       */
@@ -1183,7 +1180,6 @@ static void construct_mic_header1(
 		mic_header1[15] = mpdu[15];
 }
 
-
 /************************************************/
 /* construct_mic_header2()                      */
 /* Builds the last MIC header block from        */
@@ -1211,7 +1207,6 @@ static void construct_mic_header2(
 		mic_header2[6] = 0x00;
 		mic_header2[7] = 0x00; /* mpdu[23]; */
 
-
 		if (!qc_exists && a4_exists) {
 			for (i = 0; i < 6; i++)
 				mic_header2[8+i] = mpdu[24+i];   /* A4 */
@@ -1277,7 +1272,6 @@ static void construct_ctr_preload(
 	ctr_preload[15] =  (unsigned char) (c % 256);
 }
 
-
 /************************************/
 /* bitwise_xor()                    */
 /* A 128 bit, bitwise exclusive or  */
@@ -1291,7 +1285,6 @@ static void bitwise_xor(u8 *ina, u8 *inb, u8 *out)
 		}
 }
 
-
 static sint aes_cipher(u8 *key, uint	hdrlen,
 			u8 *pframe, uint plen)
 {
@@ -1314,7 +1307,6 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 
 	frsubtype = frsubtype>>4;
 
-
 	memset((void *)mic_iv, 0, 16);
 	memset((void *)mic_header1, 0, 16);
 	memset((void *)mic_header2, 0, 16);
@@ -1377,7 +1369,6 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 		qc_exists
 	);
 
-
 	payload_remainder = plen % 16;
 	num_blocks = plen / 16;
 
@@ -1484,7 +1475,6 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 u32 rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
 {	/*  exclude ICV */
 
-
 	/*static*/
 /* 	unsigned char message[MAX_MSG_SIZE]; */
 
@@ -1551,13 +1541,11 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	u8 padded_buffer[16];
 	u8 mic[8];
 
-
 	uint frtype  = GetFrameType(pframe);
 	uint frsubtype  = GetFrameSubType(pframe);
 
 	frsubtype = frsubtype>>4;
 
-
 	memset((void *)mic_iv, 0, 16);
 	memset((void *)mic_header1, 0, 16);
 	memset((void *)mic_header2, 0, 16);
@@ -1603,7 +1591,6 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	} else
 		qc_exists = 0;
 
-
 	/*  now, decrypt pframe with hdrlen offset and plen long */
 
 	payload_index = hdrlen + 8; /*  8 is for extiv */
@@ -1649,7 +1636,6 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	if ((hdrlen + plen+8) <= MAX_MSG_SIZE)
 		memcpy((void *)message, pframe, (hdrlen + plen+8)); /* 8 is for ext iv len */
 
-
 	pn_vector[0] = pframe[hdrlen];
 	pn_vector[1] = pframe[hdrlen+1];
 	pn_vector[2] = pframe[hdrlen+4];
@@ -1657,8 +1643,6 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	pn_vector[4] = pframe[hdrlen+6];
 	pn_vector[5] = pframe[hdrlen+7];
 
-
-
 	construct_mic_iv(
 		mic_iv,
 		qc_exists,
@@ -1682,7 +1666,6 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 		qc_exists
 	);
 
-
 	payload_remainder = (plen-8) % 16;
 	num_blocks = (plen-8) / 16;
 
@@ -1808,14 +1791,11 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 u32 rtw_aes_decrypt(struct adapter *padapter, u8 *precvframe)
 {	/*  exclude ICV */
 
-
 	/*static*/
 /* 	unsigned char message[MAX_MSG_SIZE]; */
 
-
 	/* Intermediate Buffers */
 
-
 	sint		length;
 	u8 *pframe, *prwskey;	/*  *payload,*iv */
 	struct	sta_info 	*stainfo;
@@ -1879,7 +1859,6 @@ u32 rtw_aes_decrypt(struct adapter *padapter, u8 *precvframe)
 			} else
 				prwskey = &stainfo->dot118021x_UncstKey.skey[0];
 
-
 			length = ((union recv_frame *)precvframe)->u.hdr.len-prxattrib->hdrlen-prxattrib->iv_len;
 
 			res = aes_decipher(prwskey, prxattrib->hdrlen, pframe, length);
@@ -2040,6 +2019,7 @@ const u32 Te0[256] = {
 	0x824141c3U, 0x299999b0U, 0x5a2d2d77U, 0x1e0f0f11U,
 	0x7bb0b0cbU, 0xa85454fcU, 0x6dbbbbd6U, 0x2c16163aU,
 };
+
 const u32 Td0[256] = {
 	0x51f4a750U, 0x7e416553U, 0x1a17a4c3U, 0x3a275e96U,
 	0x3bab6bcbU, 0x1f9d45f1U, 0xacfa58abU, 0x4be30393U,
@@ -2106,6 +2086,7 @@ const u32 Td0[256] = {
 	0x39a80171U, 0x080cb3deU, 0xd8b4e49cU, 0x6456c190U,
 	0x7bcb8461U, 0xd532b670U, 0x486c5c74U, 0xd0b85742U,
 };
+
 const u8 Td4s[256] = {
 	0x52U, 0x09U, 0x6aU, 0xd5U, 0x30U, 0x36U, 0xa5U, 0x38U,
 	0xbfU, 0x40U, 0xa3U, 0x9eU, 0x81U, 0xf3U, 0xd7U, 0xfbU,
@@ -2140,6 +2121,7 @@ const u8 Td4s[256] = {
 	0x17U, 0x2bU, 0x04U, 0x7eU, 0xbaU, 0x77U, 0xd6U, 0x26U,
 	0xe1U, 0x69U, 0x14U, 0x63U, 0x55U, 0x21U, 0x0cU, 0x7dU,
 };
+
 const u8 rcons[] = {
 	0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1B, 0x36
 	/* for 128-bit blocks, Rijndael never uses more than 10 rcon values */
@@ -2221,6 +2203,7 @@ d##3 = TE0(s##3) ^ TE1(s##0) ^ TE2(s##1) ^ TE3(s##2) ^ rk[4 * i + 3]
 static void *aes_encrypt_init(u8 *key, size_t len)
 {
 	u32 *rk;
+
 	if (len != 16)
 		return NULL;
 	rk = rtw_malloc(AES_PRIV_SIZE);
@@ -2235,7 +2218,6 @@ static void aes_128_encrypt(void *ctx, u8 *plain, u8 *crypt)
 	rijndaelEncrypt(ctx, plain, crypt);
 }
 
-
 static void gf_mulx(u8 *pad)
 {
 	int i, carry;
@@ -2254,7 +2236,6 @@ static void aes_encrypt_deinit(void *ctx)
 	kfree_sensitive(ctx);
 }
 
-
 /**
  * omac1_aes_128_vector - One-Key CBC MAC (OMAC1) hash with AES-128
  * @key: 128-bit key for the hash operation
@@ -2328,7 +2309,6 @@ static int omac1_aes_128_vector(u8 *key, size_t num_elem,
 	return 0;
 }
 
-
 /**
  * omac1_aes_128 - One-Key CBC MAC (OMAC1) hash with AES-128 (aka AES-CMAC)
  * @key: 128-bit key for the hash operation
@@ -2371,6 +2351,7 @@ u8 rtw_handle_tkip_countermeasure(struct adapter *adapter, const char *caller)
 
 	if (securitypriv->btkip_countermeasure) {
 		unsigned long passing_ms = jiffies_to_msecs(jiffies - securitypriv->btkip_countermeasure_time);
+
 		if (passing_ms > 60*1000) {
 			DBG_871X_LEVEL(_drv_always_, "%s(%s) countermeasure time:%lus > 60s\n",
 				caller, ADPT_ARG(adapter), passing_ms/1000);
diff --git a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
index dad982ed4ecf..f24ad8b1a400 100644
--- a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
@@ -163,6 +163,7 @@ u32 _rtw_free_sta_priv(struct	sta_priv *pstapriv)
 
 			while (phead != plist) {
 				int i;
+
 				psta = LIST_CONTAINOR(plist, struct sta_info, hash_list);
 				plist = get_next(plist);
 
@@ -282,7 +283,6 @@ struct	sta_info *rtw_alloc_stainfo(struct	sta_priv *pstapriv, u8 *hwaddr)
 			rtw_init_recv_timer(preorder_ctrl);
 		}
 
-
 		/* init for DM */
 		psta->rssi_stat.UndecoratedSmoothedPWDB = (-1);
 		psta->rssi_stat.UndecoratedSmoothedCCK = (-1);
@@ -297,7 +297,6 @@ struct	sta_info *rtw_alloc_stainfo(struct	sta_priv *pstapriv, u8 *hwaddr)
 
 exit:
 
-
 	return psta;
 }
 
@@ -315,14 +314,12 @@ u32 rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta)
 	if (!psta)
 		goto exit;
 
-
 	spin_lock_bh(&psta->lock);
 	psta->state &= ~_FW_LINKED;
 	spin_unlock_bh(&psta->lock);
 
 	pfree_sta_queue = &pstapriv->free_sta_queue;
 
-
 	pstaxmitpriv = &psta->sta_xmitpriv;
 
 	/* list_del_init(&psta->sleep_list); */
@@ -405,7 +402,6 @@ u32 rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta)
 
 		del_timer_sync(&preorder_ctrl->reordering_ctrl_timer);
 
-
 		ppending_recvframe_queue = &preorder_ctrl->pending_recvframe_queue;
 
 		spin_lock_bh(&ppending_recvframe_queue->lock);
@@ -531,7 +527,6 @@ struct sta_info *rtw_get_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 	phead = &(pstapriv->sta_hash[index]);
 	plist = get_next(phead);
 
-
 	while (phead != plist) {
 
 		psta = LIST_CONTAINOR(plist, struct sta_info, hash_list);
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index c9ac5c685d74..f28536fbc4fb 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -259,12 +259,14 @@ void UpdateBrateTblForSoftAP(u8 *bssrateset, u32 bssratelen)
 void Save_DM_Func_Flag(struct adapter *padapter)
 {
 	u8 bSaveFlag = true;
+
 	rtw_hal_set_hwreg(padapter, HW_VAR_DM_FUNC_OP, (u8 *)(&bSaveFlag));
 }
 
 void Restore_DM_Func_Flag(struct adapter *padapter)
 {
 	u8 bSaveFlag = false;
+
 	rtw_hal_set_hwreg(padapter, HW_VAR_DM_FUNC_OP, (u8 *)(&bSaveFlag));
 }
 
@@ -304,6 +306,7 @@ inline void rtw_set_oper_ch(struct adapter *adapter, u8 ch)
 
 		for (i = 0; i < dvobj->iface_nums; i++) {
 			struct adapter *iface = dvobj->padapters[i];
+
 			cnt += scnprintf(msg+cnt, len-cnt, " [%s:", ADPT_ARG(iface));
 			if (iface->mlmeextpriv.cur_channel == ch)
 				cnt += scnprintf(msg+cnt, len-cnt, "C");
@@ -420,6 +423,7 @@ inline u8 *get_my_bssid(struct wlan_bssid_ex *pnetwork)
 u16 get_beacon_interval(struct wlan_bssid_ex *bss)
 {
 	__le16 val;
+
 	memcpy((unsigned char *)&val, rtw_get_beacon_interval_from_ie(bss->IEs), 2);
 
 	return le16_to_cpu(val);
@@ -493,6 +497,7 @@ void invalidate_cam_all(struct adapter *padapter)
 static u32 _ReadCAM(struct adapter *padapter, u32 addr)
 {
 	u32 count = 0, cmd;
+
 	cmd = CAM_POLLINIG | addr;
 	rtw_write32(padapter, RWCAM, cmd);
 
@@ -503,9 +508,11 @@ static u32 _ReadCAM(struct adapter *padapter, u32 addr)
 
 	return rtw_read32(padapter, REG_CAMREAD);
 }
+
 void read_cam(struct adapter *padapter, u8 entry, u8 *get_key)
 {
 	u32 j, addr, cmd;
+
 	addr = entry << 3;
 
 	/* DBG_8192C("********* DUMP CAM Entry_#%02d***************\n", entry); */
@@ -1876,7 +1883,6 @@ void adaptive_early_32k(struct mlme_ext_priv *pmlmeext, u8 *pframe, uint len)
 /*
 	DBG_871X("%s(): (a)bcn_cnt = %d\n", __func__, pmlmeext->bcn_cnt);
 
-
 	for (i = 0; i<9; i++)
 	{
 		DBG_871X("%s():bcn_delay_cnt[%d]=%d,  bcn_delay_ratio[%d]=%d\n", __func__, i,
@@ -1980,12 +1986,14 @@ void rtw_release_macid(struct adapter *padapter, struct sta_info *psta)
 	}
 	spin_unlock_bh(&pdvobj->lock);
 }
+
 /* For 8188E RA */
 u8 rtw_search_max_mac_id(struct adapter *padapter)
 {
 	u8 max_mac_id = 0;
 	struct dvobj_priv *pdvobj = adapter_to_dvobj(padapter);
 	int i;
+
 	spin_lock_bh(&pdvobj->lock);
 	for (i = (NUM_STA-1); i >= 0 ; i--) {
 		if (pdvobj->macid[i] == true)
@@ -2111,6 +2119,7 @@ void rtw_get_current_ip_address(struct adapter *padapter, u8 *pcurrentip)
 			pmlmeinfo->state & WIFI_FW_AP_STATE) {
 		if (my_ip_ptr) {
 			struct in_ifaddr *my_ifa_list = my_ip_ptr->ifa_list;
+
 			if (my_ifa_list) {
 				ipaddress[0] = my_ifa_list->ifa_address & 0xFF;
 				ipaddress[1] = (my_ifa_list->ifa_address >> 8) & 0xFF;
@@ -2149,6 +2158,7 @@ void rtw_get_sec_iv(struct adapter *padapter, u8 *pcur_dot11txpn, u8 *StaAddr)
 		pcur_dot11txpn[5], pcur_dot11txpn[6], pcur_dot11txpn[7]);
 	}
 }
+
 void rtw_set_sec_pn(struct adapter *padapter)
 {
 		struct sta_info         *psta;
diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index aaafa38c34c4..eba29abfa832 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -398,6 +398,7 @@ static void update_attrib_vcs_info(struct adapter *padapter, struct xmit_frame *
 			/* check HT op mode */
 			if (pattrib->ht_en) {
 				u8 HTOpMode = pmlmeinfo->HT_protection;
+
 				if ((pmlmeext->cur_bwmode && (HTOpMode == 2 || HTOpMode == 3)) ||
 					(!pmlmeext->cur_bwmode && HTOpMode == 3)) {
 					pattrib->vcs_mode = RTS_CTS;
@@ -1003,6 +1004,7 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
 		/* Update Seq Num will be handled by f/w */
 		{
 			struct sta_info *psta;
+
 			psta = rtw_get_stainfo(&padapter->stapriv, pattrib->ra);
 			if (pattrib->psta != psta) {
 				DBG_871X("%s, pattrib->psta(%p) != psta(%p)\n", __func__, pattrib->psta, psta);
@@ -1243,6 +1245,7 @@ s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit
 	struct ieee80211_hdr	*pwlanhdr;
 	u8 MME[_MME_IE_LENGTH_];
 	u32 ori_len;
+
 	mem_start = pframe = (u8 *)(pxmitframe->buf_addr) + TXDESC_OFFSET;
 	pwlanhdr = (struct ieee80211_hdr *)pframe;
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
