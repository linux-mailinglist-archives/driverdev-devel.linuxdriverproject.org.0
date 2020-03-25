Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 478F8192E8C
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Mar 2020 17:45:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 428A287BAD;
	Wed, 25 Mar 2020 16:45:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6plN91WfacAF; Wed, 25 Mar 2020 16:45:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B2CAF87A22;
	Wed, 25 Mar 2020 16:45:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B0641BF3A6
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 16:45:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 86A8886B6D
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 16:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Hb13ZOoAicY for <devel@linuxdriverproject.org>;
 Wed, 25 Mar 2020 16:45:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E944E86B4E
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 16:45:23 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id c21so657660pfo.5
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 09:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=8TyWZF/hKjoYHK9kozfXNfOetaQstcsdqGIUqpxVSWo=;
 b=dz9M17elo03t5YW8wGA9UpAawb+jWBG2PQMy0JsQVilQVNYxCRRmMmW6vE1gCdSSDS
 Jza2UJ9N6RYhJjNNHE8oy9FOE1QT8ZznAsPw4Bh6oAQNyww3L3nP0RrFfvJRJ4Ad+QNL
 cSz90mc4v23Ji7ewYC5gBiL9ZcDGPn7o2AaSXI139hrp9bqtjAuZqumDqh9Qe2TwOHTc
 hw5+PZRHvgWPogxNtkMLafRsqp+fChVnwRYWHNDS+xKqPfKXniWdD2U7d5Y+Sd8z3RH/
 Ykeo1OwGxEaK1ZGEsIqBuc+eOUefbjRuxgO6EvbvMmo2jtgrYa6drp76OUpo9l7yPjKd
 yJYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=8TyWZF/hKjoYHK9kozfXNfOetaQstcsdqGIUqpxVSWo=;
 b=lrPLk7l2RkbHC5P+0q03kz6dY0npIe7+3K3qy5VaNZayl49E1YAzMfYLVH3ecoSRp9
 /B2iNvzw6zxQDN4X3Y7C+RI+Q6oRvODApB9M1Xq2a8zomsRffIegIbeQUFKI7zOinwxz
 ne10DNdjVqu1WLqlC06S913h+tHOMmjAYNEumkUh9XlIK+bNcU4A+YbHJu3WitOa2+KA
 TPABBwudkP268D8zRW1KJr7KZ5mLq9cE016VPPjhVZBqcGfW/rbOWhumdnd/w6BfDeJh
 W6kK/XzQsp+ysxc3/mE6CfwkZmQ1dfglkRAcJ5nWf/ONLfr9ScR7jSi38GU/UJW7lDfh
 9XwQ==
X-Gm-Message-State: ANhLgQ3IBFkG2+9hvBqnb9JJlAbcKVAkrwM8Yl3gNlK44qIG9L2KmzAh
 Gf600HnNW98/UKky/GXwEDI=
X-Google-Smtp-Source: ADFU+vvoIyFeLN9VxSn6nckvi+mw7xVb808VZp/lp4AR2Nh4O8t9mTx8HnA3kMu5FPKSlE3l70KHTQ==
X-Received: by 2002:a63:4502:: with SMTP id s2mr3946982pga.391.1585154723293; 
 Wed, 25 Mar 2020 09:45:23 -0700 (PDT)
Received: from simran-Inspiron-5558 ([2409:4052:78f:bb47:8124:5e4b:ea06:7595])
 by smtp.gmail.com with ESMTPSA id
 o15sm4815290pjp.41.2020.03.25.09.45.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 09:45:22 -0700 (PDT)
Date: Wed, 25 Mar 2020 22:14:52 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: Add line after variable declarations
Message-ID: <20200325164451.GA17569@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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

Add whiteline after variable declarations to remove the checkpatch.pl
warning:
WARNING: Missing a blank line after declarations

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index c642825ca8ef..8f9da1d49343 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -219,6 +219,7 @@ static RT_CHANNEL_PLAN_MAP RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {0x03, 0x02};
 int rtw_ch_set_search_ch(RT_CHANNEL_INFO *ch_set, const u32 ch)
 {
 	int i;
+
 	for (i = 0; ch_set[i].ChannelNum != 0; i++) {
 		if (ch == ch_set[i].ChannelNum)
 			break;
@@ -2184,6 +2185,7 @@ unsigned int OnAction_sa_query(struct adapter *padapter, union recv_frame *precv
 	}
 	if (0) {
 		int pp;
+
 		printk("pattrib->pktlen = %d =>", pattrib->pkt_len);
 		for (pp = 0; pp < pattrib->pkt_len; pp++)
 			printk(" %02x ", pframe[pp]);
@@ -2486,6 +2488,7 @@ void issue_beacon(struct adapter *padapter, int timeout_ms)
 		/* DBG_871X("ie len =%d\n", cur_network->IELength); */
 		{
 			int len_diff;
+
 			memcpy(pframe, cur_network->IEs, cur_network->IELength);
 			len_diff = update_hidden_ssid(
 				pframe+_BEACON_IE_OFFSET_
@@ -2500,6 +2503,7 @@ void issue_beacon(struct adapter *padapter, int timeout_ms)
 			u8 *wps_ie;
 			uint wps_ielen;
 			u8 sr = 0;
+
 			wps_ie = rtw_get_wps_ie(pmgntframe->buf_addr+TXDESC_OFFSET+sizeof(struct ieee80211_hdr_3addr)+_BEACON_IE_OFFSET_,
 				pattrib->pktlen-sizeof(struct ieee80211_hdr_3addr)-_BEACON_IE_OFFSET_, NULL, &wps_ielen);
 			if (wps_ie && wps_ielen > 0) {
@@ -2700,6 +2704,7 @@ void issue_probersp(struct adapter *padapter, unsigned char *da, u8 is_valid_p2p
 			if (ssid_ie &&  cur_network->Ssid.SsidLength) {
 				uint remainder_ielen;
 				u8 *remainder_ie;
+
 				remainder_ie = ssid_ie+2;
 				remainder_ielen = (pframe-remainder_ie);
 
@@ -4280,6 +4285,7 @@ void site_survey(struct adapter *padapter)
 
 	{
 		struct rtw_ieee80211_channel *ch;
+
 		if (pmlmeext->sitesurvey_res.channel_idx < pmlmeext->sitesurvey_res.ch_num) {
 			ch = &pmlmeext->sitesurvey_res.ch[pmlmeext->sitesurvey_res.channel_idx];
 			survey_channel = ch->hw_value;
@@ -4323,6 +4329,7 @@ void site_survey(struct adapter *padapter)
 		if (ScanType == SCAN_ACTIVE) { /* obey the channel plan setting... */
 			{
 				int i;
+
 				for (i = 0; i < RTW_SSID_SCAN_AMOUNT; i++) {
 					if (pmlmeext->sitesurvey_res.ssid[i].SsidLength) {
 						/* IOT issue, When wifi_spec is not set, send one probe req without WPS IE. */
@@ -4351,6 +4358,7 @@ void site_survey(struct adapter *padapter)
 #if defined(CONFIG_SIGNAL_DISPLAY_DBM) && defined(CONFIG_BACKGROUND_NOISE_MONITOR)
 		{
 			struct noise_info info;
+
 			info.bPauseDIG = false;
 			info.IGIValue = 0;
 			info.max_time = channel_scan_time_ms/2;/* ms */
@@ -4518,6 +4526,7 @@ u8 collect_bss_info(struct adapter *padapter, union recv_frame *precv_frame, str
 		p = rtw_get_ie(bssid->IEs + ie_offset, _HT_ADD_INFO_IE_, &len, bssid->IELength - ie_offset);
 		if (p) {
 			struct HT_info_element *HT_info = (struct HT_info_element *)(p + 2);
+
 			bssid->Configuration.DSConfig = HT_info->primary_channel;
 		} else { /*  use current channel */
 			bssid->Configuration.DSConfig = rtw_get_oper_ch(padapter);
@@ -4551,6 +4560,7 @@ u8 collect_bss_info(struct adapter *padapter, union recv_frame *precv_frame, str
 		p = rtw_get_ie(bssid->IEs + ie_offset, _HT_CAPABILITY_IE_, &len, bssid->IELength - ie_offset);
 		if (p && len > 0) {
 			struct HT_caps_element	*pHT_caps;
+
 			pHT_caps = (struct HT_caps_element	*)(p + 2);
 
 			if (le16_to_cpu(pHT_caps->u.HT_cap_element.HT_caps_info) & BIT(14))
@@ -4584,6 +4594,7 @@ void start_create_ibss(struct adapter *padapter)
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 	struct wlan_bssid_ex		*pnetwork = (struct wlan_bssid_ex *)(&(pmlmeinfo->network));
+
 	pmlmeext->cur_channel = (u8)pnetwork->Configuration.DSConfig;
 	pmlmeinfo->bcn_interval = get_beacon_interval(pnetwork);
 
@@ -5388,6 +5399,7 @@ static void rtw_mlmeext_disconnect(struct adapter *padapter)
 	/* wakeup macid after disconnect. */
 	{
 		struct sta_info *psta;
+
 		psta = rtw_get_stainfo(&padapter->stapriv, get_my_bssid(pnetwork));
 		if (psta)
 			rtw_hal_macid_wakeup(padapter, psta->mac_id);
@@ -5425,6 +5437,7 @@ void mlmeext_joinbss_event_callback(struct adapter *padapter, int join_res)
 	struct sta_priv 	*pstapriv = &padapter->stapriv;
 	u8 join_type;
 	struct sta_info *psta;
+
 	if (join_res < 0) {
 		join_type = 1;
 		rtw_hal_set_hwreg(padapter, HW_VAR_MLME_JOIN, (u8 *)(&join_type));
@@ -6047,6 +6060,7 @@ u8 createbss_hdl(struct adapter *padapter, u8 *pbuf)
 
 	if (pmlmeinfo->state == WIFI_FW_AP_STATE) {
 		struct wlan_bssid_ex *network = &padapter->mlmepriv.cur_network.network;
+
 		start_bss_network(padapter, (u8 *)network);
 		return H2C_SUCCESS;
 	}
@@ -6810,6 +6824,7 @@ u8 set_chplan_hdl(struct adapter *padapter, unsigned char *pbuf)
 
 	if ((padapter->rtw_wdev != NULL) && (padapter->rtw_wdev->wiphy)) {
 		struct regulatory_request request;
+
 		request.initiator = NL80211_REGDOM_SET_BY_DRIVER;
 		rtw_reg_notifier(padapter->rtw_wdev->wiphy, &request);
 	}
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
