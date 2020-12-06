Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3E02D0048
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Dec 2020 03:59:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0309A87ADF;
	Sun,  6 Dec 2020 02:59:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mwLjEetEr_Op; Sun,  6 Dec 2020 02:59:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A7B2D87646;
	Sun,  6 Dec 2020 02:59:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7823A1BF25B
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 02:59:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 71DF587C3D
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 02:59:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KrHOCp2u8B7o for <devel@linuxdriverproject.org>;
 Sun,  6 Dec 2020 02:59:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AC60887C33
 for <devel@driverdev.osuosl.org>; Sun,  6 Dec 2020 02:59:48 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id d9so1365641iob.6
 for <devel@driverdev.osuosl.org>; Sat, 05 Dec 2020 18:59:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=prrteyyyMDl1T8Aodsqq8dWpeqcQNuqHWTffjMNwCPE=;
 b=CIsOwb7jNpvLmwwxl7sQ6I7fH33uTKPxhGKVBizNpWeLPgXF+Zw5vBNozLpElTFzhi
 g1jsT6FAtUX64rcTNEFo9tZCOUIDEXqrJMk7zmHtcstKhfCV0jM79dbjndFC3neiE8aA
 TryS3eGXheguYb16NowxtABhCcdCStCa8AlkN6M8MXV5mE+Q6kHtxsOd8hDbum0ui5yc
 paK+vG2IZ2tDQ9WEN13EOI4UZfdBo4eZoYbpqrVhtBBdskwSNrNjrykJNNeLf9T6azUE
 B8UxH3hWMwzVk1322J1ATu6k3qLT/rx3g2uD7UNBas0FE1kvhuq9xRNpIcHiPt2+ZFcb
 13Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=prrteyyyMDl1T8Aodsqq8dWpeqcQNuqHWTffjMNwCPE=;
 b=DlxPM+yrRU7XDvg8Yuy+yZ32w5EO+qT5ZKnKEJMZ33StmyJPOBJFUy+dK0WCRGUhW9
 LDHlwAWTre1TU09dLy2omgmKXyjBWckWoNacsVe6Z7L3PQhDpAfoEaWC21SMRbItCcoq
 Qu03tDZ2r0dpHll4J4Tjst34MZx5zsXSAukO6BrW8OQRdqd4EAE6DIuXhVclEyHjFIV2
 fHa1gYqiz79LYxpmXHXr2wKhbajlyxKUBU+BSvgKL0P+I1BOh9twx+BCJ01mFtxdCpVj
 6hCXR6xaVtJjj6ps3BMKoA9IyT95tsbUzCtIzTg9Vjfyg/i2YaGRjg30yo3YUyRtpE7V
 I1GQ==
X-Gm-Message-State: AOAM530HTlPcGJoZdkDXZmyD3cUaiKFirNFK87p/VXkLIq94F02oWc3x
 cJJBgpjWJVdDLeEpLOtsx1k=
X-Google-Smtp-Source: ABdhPJysgE9SbdS4hmJCdT6bVO/brRiLilK2d2tydqKwwANtjuaiLRc495iXv38hyE66mQdnQmDo+w==
X-Received: by 2002:a6b:3788:: with SMTP id e130mr12603306ioa.23.1607223587812; 
 Sat, 05 Dec 2020 18:59:47 -0800 (PST)
Received: from a ([24.13.98.51])
 by smtp.gmail.com with ESMTPSA id y12sm4804875ilk.32.2020.12.05.18.59.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Dec 2020 18:59:47 -0800 (PST)
Date: Sat, 5 Dec 2020 20:59:45 -0600
From: Brother Matthew De Angelis <matthew.v.deangelis@gmail.com>
To: gregkh@linuxfoundation.org, hdegoede@redhat.com,
 Larry.Finger@lwfinger.net, ross.schm.dev@gmail.com,
 yanaijie@huawei.com, shreeya.patel23498@gmail.com,
 izabela.bakollari@gmail.com
Subject: [PATCH] Staging: rtl8723bs/core: add blank line after declarations
Message-ID: <20201206025945.GA464875@a>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix coding style issue.
Add blank line after variable declarations at all the locations found by
checkpatch.pl.

Signed-off-by: Brother Matthew De Angelis <matthew.v.deangelis@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 351178ab78c5..07300bd2d56e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -865,6 +865,7 @@ void rtw_surveydone_event_callback(struct adapter	*adapter, u8 *pbuf)
 			}
 		} else {
 			int s_ret;
+
 			set_fwstate(pmlmepriv, _FW_UNDER_LINKING);
 			pmlmepriv->to_join = false;
 			s_ret = rtw_select_and_join_from_scanned_queue(pmlmepriv);
@@ -1582,6 +1583,7 @@ void rtw_stadel_event_callback(struct adapter *adapter, u8 *pbuf)
 
 	if (mac_id >= 0) {
 		u16 media_status;
+
 		media_status = (mac_id<<8)|0; /*   MACID|OPMODE:0 means disconnect */
 		/* for STA, AP, ADHOC mode, report disconnect stauts to FW */
 		rtw_hal_set_hwreg(adapter, HW_VAR_H2C_MEDIA_STATUS_RPT, (u8 *)&media_status);
@@ -1714,6 +1716,7 @@ void _rtw_join_timeout_handler(struct timer_list *t)
 			rtw_dec_to_roam(adapter);
 			if (rtw_to_roam(adapter) != 0) { /* try another */
 				int do_join_r;
+
 				DBG_871X("%s try another roaming\n", __func__);
 				do_join_r = rtw_do_join(adapter);
 				if (_SUCCESS != do_join_r) {
@@ -1852,12 +1855,14 @@ void rtw_dynamic_check_timer_handler(struct adapter *adapter)
 inline bool rtw_is_scan_deny(struct adapter *adapter)
 {
 	struct mlme_priv *mlmepriv = &adapter->mlmepriv;
+
 	return (atomic_read(&mlmepriv->set_scan_deny) != 0) ? true : false;
 }
 
 inline void rtw_clear_scan_deny(struct adapter *adapter)
 {
 	struct mlme_priv *mlmepriv = &adapter->mlmepriv;
+
 	atomic_set(&mlmepriv->set_scan_deny, 0);
 
 	DBG_871X(FUNC_ADPT_FMT"\n", FUNC_ADPT_ARG(adapter));
@@ -2614,6 +2619,7 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 		p = rtw_get_ie(in_ie, _HT_ADD_INFO_IE_, &ielen, in_len);
 		if (p && (ielen == sizeof(struct ieee80211_ht_addt_info))) {
 			struct HT_info_element *pht_info = (struct HT_info_element *)(p+2);
+
 			if (pht_info->infos[0] & BIT(2)) {
 				switch (pht_info->infos[0] & 0x3) {
 				case 1:
@@ -2692,6 +2698,7 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 
 	{
 		u32 rx_packet_offset, max_recvbuf_sz;
+
 		rtw_hal_get_def_var(padapter, HAL_DEF_RX_PACKET_OFFSET, &rx_packet_offset);
 		rtw_hal_get_def_var(padapter, HAL_DEF_MAX_RECVBUF_SZ, &max_recvbuf_sz);
 	}
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
