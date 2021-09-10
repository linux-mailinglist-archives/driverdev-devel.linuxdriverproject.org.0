Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CAECD407014
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 18:58:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB4CF4076D;
	Fri, 10 Sep 2021 16:57:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B7zWyKbr0TdR; Fri, 10 Sep 2021 16:57:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02157406A1;
	Fri, 10 Sep 2021 16:57:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 97F191BF2C7
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 16:57:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 80909401D5
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 16:57:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aAUVeqzZeVzs for <devel@linuxdriverproject.org>;
 Fri, 10 Sep 2021 16:57:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1803F401B6
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 16:57:47 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id l11so5371998lfe.1
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 09:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=KigKFT5R1DxFkjz0kfipXNyWumwkd21XrYlMRDlSUkg=;
 b=azN7jo+EzudnR0M0ozgDgkVky6ElgMzVIoItARXCC+hkSpuP3/wHqtH/18Xm9k3qJC
 Vxl9WOHu6A0S275zRvI3NPU3vRykx8D3rNnHZFHzabQ/LrCkmW27NRmeNN3t/gx+aaZd
 fsSQsCB0Opk0bGjAhL+bhYeGkVTkkEPs/WDuGNU/T2fvClpBNSf55IwXWyTQcSLxx+XV
 8ff56bJv4qMcUU1zOg+v+HKqSYV76/M5ETkKgNwaRt0zpsBzPcQFES3KGNGb8P+eCKz3
 MyEELO0Vqb6rcUCGs2hezUI2KKnfTjXkpSAj/eMasEmkitCrWft0ymEcOGqnsymnXrJb
 Ec1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=KigKFT5R1DxFkjz0kfipXNyWumwkd21XrYlMRDlSUkg=;
 b=kHMiUE24Yp4jPMs77wpQ8QJCqJExj9DfM9y59CzOXWs16Abw0PzadnQheAv+kVDfCq
 pSHH4HWlLzrxa0rW8hiQH3d22Aq1q1g3G7MubGZo+sNbOC6LgjqThkTX/lirgzv1mUU3
 rSImWHxRJYQ6eVnQJL1NrF3z2EKdynemXlt0QhiM9JHGtqGKx3IFjllaFhQWz6sFfOny
 3cyU4MLkd106e5unD2UP42wpyxYEW9o3ZNXtp8q9lXzGJbOKAYofW7j4fTu6syiI3K75
 j2qaC89vb7BsJOSiBRgwJJZ2muFgjlk/WEFCLud8ybC3SRWYykHghSJfwSjx25ybgHFF
 WeiA==
X-Gm-Message-State: AOAM5302A1PRXotCbJF8svLhJs5EHLz9+A0zMNnqSxp/MKwJMu5GhKW9
 +24iAwDyT9BHmydKtKfT/Hs=
X-Google-Smtp-Source: ABdhPJzmhGvGwPHJL2r+6t2hno1TGXqNQgDOvbpHHgK5p/Z0sx/BWkHI7cZBxLOv4xoGaFhcwvsQZA==
X-Received: by 2002:a05:6512:238b:: with SMTP id
 c11mr4597902lfv.413.1631293065053; 
 Fri, 10 Sep 2021 09:57:45 -0700 (PDT)
Received: from kari-VirtualBox ([31.132.12.44])
 by smtp.gmail.com with ESMTPSA id h4sm607074lft.184.2021.09.10.09.57.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 09:57:44 -0700 (PDT)
Date: Fri, 10 Sep 2021 19:57:43 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 31/31] staging: wfx: indent functions arguments
Message-ID: <20210910165743.jm7ssqak7gouyl5j@kari-VirtualBox>
References: <20210910160504.1794332-1-Jerome.Pouiller@silabs.com>
 <20210910160504.1794332-32-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210910160504.1794332-32-Jerome.Pouiller@silabs.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 10, 2021 at 06:05:04PM +0200, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> Function arguments must be aligned with left parenthesis. Apply that
> rule.

To my eyes something still go wrong with this patch. Might be my email
fault, but every other patch looks ok. Now these are too left. Also it
should alight with first argument not left parenthesis?

> =

> Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> ---
>  drivers/staging/wfx/hif_tx_mib.c |  2 +-
>  drivers/staging/wfx/key.c        | 26 +++++++++++++-------------
>  2 files changed, 14 insertions(+), 14 deletions(-)
> =

> diff --git a/drivers/staging/wfx/hif_tx_mib.c b/drivers/staging/wfx/hif_t=
x_mib.c
> index 45e531d996bd..97e961e6bcf6 100644
> --- a/drivers/staging/wfx/hif_tx_mib.c
> +++ b/drivers/staging/wfx/hif_tx_mib.c
> @@ -75,7 +75,7 @@ int hif_get_counters_table(struct wfx_dev *wdev, int vi=
f_id,
>  	} else {
>  		return hif_read_mib(wdev, vif_id,
>  				    HIF_MIB_ID_EXTENDED_COUNTERS_TABLE, arg,
> -				sizeof(struct hif_mib_extended_count_table));
> +				    sizeof(struct hif_mib_extended_count_table));
>  	}
>  }
>  =

> diff --git a/drivers/staging/wfx/key.c b/drivers/staging/wfx/key.c
> index 51a528102016..65134a174683 100644
> --- a/drivers/staging/wfx/key.c
> +++ b/drivers/staging/wfx/key.c
> @@ -31,7 +31,7 @@ static void wfx_free_key(struct wfx_dev *wdev, int idx)
>  }
>  =

>  static u8 fill_wep_pair(struct hif_wep_pairwise_key *msg,
> -			     struct ieee80211_key_conf *key, u8 *peer_addr)
> +			struct ieee80211_key_conf *key, u8 *peer_addr)
>  {
>  	WARN(key->keylen > sizeof(msg->key_data), "inconsistent data");
>  	msg->key_length =3D key->keylen;
> @@ -41,7 +41,7 @@ static u8 fill_wep_pair(struct hif_wep_pairwise_key *ms=
g,
>  }
>  =

>  static u8 fill_wep_group(struct hif_wep_group_key *msg,
> -			      struct ieee80211_key_conf *key)
> +			 struct ieee80211_key_conf *key)
>  {
>  	WARN(key->keylen > sizeof(msg->key_data), "inconsistent data");
>  	msg->key_id =3D key->keyidx;
> @@ -51,7 +51,7 @@ static u8 fill_wep_group(struct hif_wep_group_key *msg,
>  }
>  =

>  static u8 fill_tkip_pair(struct hif_tkip_pairwise_key *msg,
> -			      struct ieee80211_key_conf *key, u8 *peer_addr)
> +			 struct ieee80211_key_conf *key, u8 *peer_addr)
>  {
>  	u8 *keybuf =3D key->key;
>  =

> @@ -68,9 +68,9 @@ static u8 fill_tkip_pair(struct hif_tkip_pairwise_key *=
msg,
>  }
>  =

>  static u8 fill_tkip_group(struct hif_tkip_group_key *msg,
> -			       struct ieee80211_key_conf *key,
> -			       struct ieee80211_key_seq *seq,
> -			       enum nl80211_iftype iftype)
> +			  struct ieee80211_key_conf *key,
> +			  struct ieee80211_key_seq *seq,
> +			  enum nl80211_iftype iftype)
>  {
>  	u8 *keybuf =3D key->key;
>  =

> @@ -93,7 +93,7 @@ static u8 fill_tkip_group(struct hif_tkip_group_key *ms=
g,
>  }
>  =

>  static u8 fill_ccmp_pair(struct hif_aes_pairwise_key *msg,
> -			      struct ieee80211_key_conf *key, u8 *peer_addr)
> +			 struct ieee80211_key_conf *key, u8 *peer_addr)
>  {
>  	WARN(key->keylen !=3D sizeof(msg->aes_key_data), "inconsistent data");
>  	ether_addr_copy(msg->peer_address, peer_addr);
> @@ -102,8 +102,8 @@ static u8 fill_ccmp_pair(struct hif_aes_pairwise_key =
*msg,
>  }
>  =

>  static u8 fill_ccmp_group(struct hif_aes_group_key *msg,
> -			       struct ieee80211_key_conf *key,
> -			       struct ieee80211_key_seq *seq)
> +			  struct ieee80211_key_conf *key,
> +			  struct ieee80211_key_seq *seq)
>  {
>  	WARN(key->keylen !=3D sizeof(msg->aes_key_data), "inconsistent data");
>  	memcpy(msg->aes_key_data, key->key, key->keylen);
> @@ -114,7 +114,7 @@ static u8 fill_ccmp_group(struct hif_aes_group_key *m=
sg,
>  }
>  =

>  static u8 fill_sms4_pair(struct hif_wapi_pairwise_key *msg,
> -			      struct ieee80211_key_conf *key, u8 *peer_addr)
> +			 struct ieee80211_key_conf *key, u8 *peer_addr)
>  {
>  	u8 *keybuf =3D key->key;
>  =

> @@ -129,7 +129,7 @@ static u8 fill_sms4_pair(struct hif_wapi_pairwise_key=
 *msg,
>  }
>  =

>  static u8 fill_sms4_group(struct hif_wapi_group_key *msg,
> -			       struct ieee80211_key_conf *key)
> +			  struct ieee80211_key_conf *key)
>  {
>  	u8 *keybuf =3D key->key;
>  =

> @@ -143,8 +143,8 @@ static u8 fill_sms4_group(struct hif_wapi_group_key *=
msg,
>  }
>  =

>  static u8 fill_aes_cmac_group(struct hif_igtk_group_key *msg,
> -				   struct ieee80211_key_conf *key,
> -				   struct ieee80211_key_seq *seq)
> +			      struct ieee80211_key_conf *key,
> +			      struct ieee80211_key_seq *seq)
>  {
>  	WARN(key->keylen !=3D sizeof(msg->igtk_key_data), "inconsistent data");
>  	memcpy(msg->igtk_key_data, key->key, key->keylen);
> -- =

> 2.33.0
> =

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
