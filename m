Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C04181603
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 11:43:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8476122264;
	Wed, 11 Mar 2020 10:43:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DJxCEZ9S4U0V; Wed, 11 Mar 2020 10:43:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 230C9221B5;
	Wed, 11 Mar 2020 10:43:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1F2821BF313
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 10:43:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 17B26860CE
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 10:43:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ucLAJJXzhHDM for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 10:43:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 20026860A2
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 10:43:45 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.70,540,1574118000"; d="scan'208";a="341993626"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
 by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 11:43:26 +0100
Date: Wed, 11 Mar 2020 11:43:26 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: julia@hadrien
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: rtl8188eu: rtw_mlme: Add
 space around operators
In-Reply-To: <20200311094332.29714-1-shreeya.patel23498@gmail.com>
Message-ID: <alpine.DEB.2.21.2003111141560.2999@hadrien>
References: <20200311094332.29714-1-shreeya.patel23498@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
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
Cc: devel@driverdev.osuosl.org, nramas@linux.microsoft.com,
 daniel.baluta@gmail.com, outreachy-kernel@googlegroups.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 sbrivio@redhat.com, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Wed, 11 Mar 2020, Shreeya Patel wrote:

> Add space around operators for improving the code
> readability.
>
> Reported by checkpatch.pl
>
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> ---
>
> shreeya@Shreeya-Patel:~git/kernels/staging$ git diff -w drivers/staging/rtl8188eu/core/
> shreeya@Shreeya-Patel:~git/kernels/staging$
>
> git diff -w shows no difference.
>
> shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/core$ diff rtw_mlme_old.o rtw_mlme.o
> shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/core$
>
> diff of the .o files before and after the changes shows no difference

Put the two sentences "git diff -w..." and "diff of the .o ..." above the
--- (but not the rest).  That shows what testing you did.  If someone has
a problem with this code in the future, they will know that this patch
can't be the source of that problem.

julia

>
> Changes in v3
>   - Make the diff output explanation more readable.
>
> Changes in v2
>   - Include the file name in Subject to make it more specific.
>   - Add the output of diff of the .o files before and after the changes
> to show no difference.
>   - Add the output of git diff -w to show no difference.
>
>  drivers/staging/rtl8188eu/core/rtw_mlme.c | 40 +++++++++++------------
>  1 file changed, 20 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> index 8da955e8343b..9de2d421f6b1 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> @@ -149,7 +149,7 @@ static void _rtw_free_network(struct mlme_priv *pmlmepriv, struct wlan_network *
>  	    (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE)))
>  		lifetime = 1;
>  	if (!isfreeall) {
> -		delta_time = (curr_time - pnetwork->last_scanned)/HZ;
> +		delta_time = (curr_time - pnetwork->last_scanned) / HZ;
>  		if (delta_time < lifetime)/*  unit:sec */
>  			return;
>  	}
> @@ -249,8 +249,8 @@ void rtw_generate_random_ibss(u8 *pibss)
>  	pibss[1] = 0x11;
>  	pibss[2] = 0x87;
>  	pibss[3] = (u8)(curtime & 0xff);/* p[0]; */
> -	pibss[4] = (u8)((curtime>>8) & 0xff);/* p[1]; */
> -	pibss[5] = (u8)((curtime>>16) & 0xff);/* p[2]; */
> +	pibss[4] = (u8)((curtime >> 8) & 0xff);/* p[1]; */
> +	pibss[5] = (u8)((curtime >> 16) & 0xff);/* p[2]; */
>  }
>
>  u8 *rtw_get_capability_from_ie(u8 *ie)
> @@ -357,9 +357,9 @@ void update_network(struct wlan_bssid_ex *dst, struct wlan_bssid_ex *src,
>  			rssi_final = rssi_ori;
>  	} else {
>  		if (sq_smp != 101) { /* from the right channel */
> -			ss_final = ((u32)(src->PhyInfo.SignalStrength)+(u32)(dst->PhyInfo.SignalStrength)*4)/5;
> -			sq_final = ((u32)(src->PhyInfo.SignalQuality)+(u32)(dst->PhyInfo.SignalQuality)*4)/5;
> -			rssi_final = (src->Rssi+dst->Rssi*4)/5;
> +			ss_final = ((u32)(src->PhyInfo.SignalStrength) + (u32)(dst->PhyInfo.SignalStrength) * 4) / 5;
> +			sq_final = ((u32)(src->PhyInfo.SignalQuality) + (u32)(dst->PhyInfo.SignalQuality) * 4) / 5;
> +			rssi_final = (src->Rssi + dst->Rssi * 4) / 5;
>  		} else {
>  			/* bss info not receiving from the right channel, use the original RX signal infos */
>  			ss_final = dst->PhyInfo.SignalStrength;
> @@ -510,7 +510,7 @@ static int rtw_is_desired_network(struct adapter *adapter, struct wlan_network *
>  	privacy = pnetwork->network.Privacy;
>
>  	if (check_fwstate(pmlmepriv, WIFI_UNDER_WPS)) {
> -		if (rtw_get_wps_ie(pnetwork->network.ies+_FIXED_IE_LENGTH_, pnetwork->network.ie_length-_FIXED_IE_LENGTH_, NULL, &wps_ielen))
> +		if (rtw_get_wps_ie(pnetwork->network.ies + _FIXED_IE_LENGTH_, pnetwork->network.ie_length - _FIXED_IE_LENGTH_, NULL, &wps_ielen))
>  			return true;
>  		else
>  			return false;
> @@ -925,7 +925,7 @@ static void rtw_joinbss_update_network(struct adapter *padapter, struct wlan_net
>  	switch (pnetwork->network.InfrastructureMode) {
>  	case Ndis802_11Infrastructure:
>  		if (pmlmepriv->fw_state & WIFI_UNDER_WPS)
> -			pmlmepriv->fw_state = WIFI_STATION_STATE|WIFI_UNDER_WPS;
> +			pmlmepriv->fw_state = WIFI_STATION_STATE | WIFI_UNDER_WPS;
>  		else
>  			pmlmepriv->fw_state = WIFI_STATION_STATE;
>  		break;
> @@ -1097,14 +1097,14 @@ static u8 search_max_mac_id(struct adapter *padapter)
>  #if defined(CONFIG_88EU_AP_MODE)
>  	if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
>  		for (aid = pstapriv->max_num_sta; aid > 0; aid--) {
> -			if (pstapriv->sta_aid[aid-1])
> +			if (pstapriv->sta_aid[aid - 1])
>  				break;
>  		}
>  		mac_id = aid + 1;
>  	} else
>  #endif
>  	{/* adhoc  id =  31~2 */
> -		for (mac_id = NUM_STA-1; mac_id >= IBSS_START_MAC_ID; mac_id--) {
> +		for (mac_id = NUM_STA - 1; mac_id >= IBSS_START_MAC_ID; mac_id--) {
>  			if (pmlmeinfo->FW_sta_info[mac_id].status == 1)
>  				break;
>  		}
> @@ -1123,7 +1123,7 @@ void rtw_stassoc_hw_rpt(struct adapter *adapter, struct sta_info *psta)
>
>  	macid = search_max_mac_id(adapter);
>  	rtw_hal_set_hwreg(adapter, HW_VAR_TX_RPT_MAX_MACID, (u8 *)&macid);
> -	media_status = (psta->mac_id<<8)|1; /*   MACID|OPMODE:1 connect */
> +	media_status = (psta->mac_id << 8) | 1; /*   MACID|OPMODE:1 connect */
>  	rtw_hal_set_hwreg(adapter, HW_VAR_H2C_MEDIA_STATUS_RPT, (u8 *)&media_status);
>  }
>
> @@ -1213,7 +1213,7 @@ void rtw_stadel_event_callback(struct adapter *adapter, u8 *pbuf)
>  	if (mac_id >= 0) {
>  		u16 media_status;
>
> -		media_status = (mac_id<<8)|0; /*   MACID|OPMODE:0 means disconnect */
> +		media_status = (mac_id << 8) | 0; /*   MACID|OPMODE:0 means disconnect */
>  		/* for STA, AP, ADHOC mode, report disconnect stauts to FW */
>  		rtw_hal_set_hwreg(adapter, HW_VAR_H2C_MEDIA_STATUS_RPT, (u8 *)&media_status);
>  	}
> @@ -1640,7 +1640,7 @@ int rtw_restruct_wmm_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in_
>  	for (i = 12; i < in_len; i += (in_ie[i + 1] + 2) /* to the next IE element */) {
>  		ielength = initial_out_len;
>
> -		if (in_ie[i] == 0xDD && in_ie[i+2] == 0x00 && in_ie[i+3] == 0x50  && in_ie[i+4] == 0xF2 && in_ie[i+5] == 0x02 && i+5 < in_len) {
> +		if (in_ie[i] == 0xDD && in_ie[i + 2] == 0x00 && in_ie[i + 3] == 0x50  && in_ie[i + 4] == 0xF2 && in_ie[i + 5] == 0x02 && i + 5 < in_len) {
>  			/* WMM element ID and OUI */
>  			/* Append WMM IE to the last index of out_ie */
>
> @@ -1734,13 +1734,13 @@ int rtw_restruct_sec_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in_
>  		authmode = _WPA2_IE_ID_;
>
>  	if (check_fwstate(pmlmepriv, WIFI_UNDER_WPS)) {
> -		memcpy(out_ie+ielength, psecuritypriv->wps_ie, psecuritypriv->wps_ie_len);
> +		memcpy(out_ie + ielength, psecuritypriv->wps_ie, psecuritypriv->wps_ie_len);
>
>  		ielength += psecuritypriv->wps_ie_len;
>  	} else if ((authmode == _WPA_IE_ID_) || (authmode == _WPA2_IE_ID_)) {
>  		/* copy RSN or SSN */
> -		memcpy(&out_ie[ielength], &psecuritypriv->supplicant_ie[0], psecuritypriv->supplicant_ie[1]+2);
> -		ielength += psecuritypriv->supplicant_ie[1]+2;
> +		memcpy(&out_ie[ielength], &psecuritypriv->supplicant_ie[0], psecuritypriv->supplicant_ie[1] + 2);
> +		ielength += psecuritypriv->supplicant_ie[1] + 2;
>  		rtw_report_sec_ie(adapter, authmode, psecuritypriv->supplicant_ie);
>  	}
>
> @@ -1865,7 +1865,7 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
>
>  	phtpriv->ht_option = false;
>
> -	p = rtw_get_ie(in_ie+12, _HT_CAPABILITY_IE_, &ielen, in_len-12);
> +	p = rtw_get_ie(in_ie + 12, _HT_CAPABILITY_IE_, &ielen, in_len - 12);
>
>  	if (p && ielen > 0) {
>  		struct ieee80211_ht_cap ht_cap;
> @@ -1904,16 +1904,16 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
>  		else
>  			ht_cap.ampdu_params_info |= IEEE80211_HT_CAP_AMPDU_DENSITY & 0x00;
>
> -		rtw_set_ie(out_ie+out_len, _HT_CAPABILITY_IE_,
> +		rtw_set_ie(out_ie + out_len, _HT_CAPABILITY_IE_,
>  			   sizeof(struct ieee80211_ht_cap),
>  			   (unsigned char *)&ht_cap, pout_len);
>
>  		phtpriv->ht_option = true;
>
> -		p = rtw_get_ie(in_ie+12, _HT_ADD_INFO_IE_, &ielen, in_len-12);
> +		p = rtw_get_ie(in_ie + 12, _HT_ADD_INFO_IE_, &ielen, in_len - 12);
>  		if (p && (ielen == sizeof(struct ieee80211_ht_addt_info))) {
>  			out_len = *pout_len;
> -			rtw_set_ie(out_ie+out_len, _HT_ADD_INFO_IE_, ielen, p+2, pout_len);
> +			rtw_set_ie(out_ie + out_len, _HT_ADD_INFO_IE_, ielen, p + 2, pout_len);
>  		}
>  	}
>  	return phtpriv->ht_option;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200311094332.29714-1-shreeya.patel23498%40gmail.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
