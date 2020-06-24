Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6582206F92
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jun 2020 11:01:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 30C2E87617;
	Wed, 24 Jun 2020 09:01:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J41X5t5OiVRc; Wed, 24 Jun 2020 09:01:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 69DC5875B6;
	Wed, 24 Jun 2020 09:01:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 905AD1BF307
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 09:01:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8838D86BF2
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 09:01:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P6zdiY8b31b1 for <devel@linuxdriverproject.org>;
 Wed, 24 Jun 2020 09:01:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sipsolutions.net (s3.sipsolutions.net [144.76.43.62])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9BC778742C
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 09:01:06 +0000 (UTC)
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jo1HE-00BFXD-1e; Wed, 24 Jun 2020 11:01:04 +0200
Message-ID: <11b8d5a5631cc472fce17638ff9e1dfef8750628.camel@sipsolutions.net>
Subject: Re: [PATCH v7 06/17] wilc1000: add cfg80211.c
From: Johannes Berg <johannes@sipsolutions.net>
To: Ajay.Kathat@microchip.com, linux-wireless@vger.kernel.org
Date: Wed, 24 Jun 2020 11:00:52 +0200
In-Reply-To: <20200623110000.31559-7-ajay.kathat@microchip.com>
References: <20200623110000.31559-1-ajay.kathat@microchip.com>
 <20200623110000.31559-7-ajay.kathat@microchip.com>
User-Agent: Evolution 3.36.3 (3.36.3-1.fc32) 
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
Cc: devel@driverdev.osuosl.org, Venkateswara.Kaja@microchip.com,
 gregkh@linuxfoundation.org, Nicolas.Ferre@microchip.com,
 Sripad.Balwadgi@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2020-06-23 at 11:00 +0000, Ajay.Kathat@microchip.com wrote:
> 
> +struct wilc_p2p_pub_act_frame {
> +	u8 category;
> +	u8 action;
> +	u8 oui[3];
> +	u8 oui_type;
> +	u8 oui_subtype;
> +	u8 dialog_token;
> +	u8 elem[];
> +} __packed;
> +
> +struct wilc_vendor_specific_ie {
> +	u8 tag_number;
> +	u8 tag_len;
> +	u8 oui[3];
> +	u8 oui_type;
> +	u8 attr[];
> +} __packed;
> +
> +struct wilc_attr_entry {
> +	u8  attr_type;
> +	__le16 attr_len;
> +	u8 val[];
> +} __packed;
> +
> +struct wilc_attr_oper_ch {
> +	u8 attr_type;
> +	__le16 attr_len;
> +	u8 country_code[IEEE80211_COUNTRY_STRING_LEN];
> +	u8 op_class;
> +	u8 op_channel;
> +} __packed;
> +
> +struct wilc_attr_ch_list {
> +	u8 attr_type;
> +	__le16 attr_len;
> +	u8 country_code[IEEE80211_COUNTRY_STRING_LEN];
> +	u8 elem[];
> +} __packed;
> +
> +struct wilc_ch_list_elem {
> +	u8 op_class;
> +	u8 no_of_channels;
> +	u8 ch_list[];
> +} __packed;

It seems like these should be used from ieee80211.h, and/or added there
if they don't already exist?

> +static int wilc_wfi_cfg_copy_wpa_info(struct wilc_wfi_key *key_info,
> +				      struct key_params *params)
> +{
> +	kfree(key_info->key);
> +
> +	key_info->key = kmemdup(params->key, params->key_len, GFP_KERNEL);
> +	if (!key_info->key)
> +		return -ENOMEM;
> +
> +	kfree(key_info->seq);
> +
> +	if (params->seq_len > 0) {
> +		key_info->seq = kmemdup(params->seq, params->seq_len,
> +					GFP_KERNEL);
> +		if (!key_info->seq)
> +			return -ENOMEM;

you may leak key_info->key here?

> +static inline void wilc_wfi_cfg_parse_ch_attr(u8 *buf, u32 len, u8 sta_ch)

That's a bit big to be forced inline, imho. if it's used only once the
compiler will inline it anyway.

> +	d = (struct wilc_p2p_pub_act_frame *)(&mgmt->u.action);
> +	if (d->oui_subtype != GO_NEG_REQ && d->oui_subtype != GO_NEG_RSP &&
> +	    d->oui_subtype != P2P_INV_REQ && d->oui_subtype != P2P_INV_RSP)
> +		goto out_rx_mgmt;
> +
> +	vendor_ie = cfg80211_find_vendor_ie(WLAN_OUI_WFA, WLAN_OUI_TYPE_WFA_P2P,
> +					    buff + ie_offset, size - ie_offset);
> +	if (!vendor_ie)
> +		goto out_rx_mgmt;
> +
> +	p = (struct wilc_vendor_specific_ie *)vendor_ie;
> +	wilc_wfi_cfg_parse_ch_attr(p->attr, p->tag_len - 4, vif->wilc->sta_ch);

but overall, why do you even need this? I don't think this is normally
handled in the driver, but wpa_s?


Anyway, I'm not convinced that we should really keep kicking this back
over minor issues like this ... better to merge it and fix later, imho.

johannes


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
