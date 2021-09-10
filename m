Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5278406FA0
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 18:27:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3497B40275;
	Fri, 10 Sep 2021 16:27:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MUAe8ovewazB; Fri, 10 Sep 2021 16:27:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8BAE14026C;
	Fri, 10 Sep 2021 16:27:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E1F2E1BF2C7
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 16:27:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D143840693
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 16:27:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Knayb9BrKgxg for <devel@linuxdriverproject.org>;
 Fri, 10 Sep 2021 16:27:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D9DC440683
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 16:27:23 +0000 (UTC)
Received: by mail-lj1-x236.google.com with SMTP id s3so4063936ljp.11
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 09:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=G+xktSFAQ1dxOc7V/JtqKYyvJz/KlBsA2cIgn6rLykI=;
 b=Agn/JD3Ot2TRz/RjQF11nIZA94FgPL4W9t9jnu4fYLekvU1tIy+t4MbzdS10aAFa6h
 pevuJh/ivk3MdQSFxe9BFIKLMl8XBSPzqUHNkju/oxAhzHd7HtFJ+eXw4TAYdQLImKAR
 J7fFTtftkAWo70TJh4zedVzUDfEM/5I1G+oJYfx6rUJFF14F+FCq1C62sq798AYG5Iss
 KKg58U0pqcqH+0mbxbbh87Dxbyi/g6Gz8HwETtzYIQn1pR6r0L8feRfKZVkqKxDGneTV
 3PmMR7fnhQV1IriYwPVWlE3OUUhHAaJE/dIqLKx9oE+Wwns6KVjFcMhr8QB+IcyNTZ2P
 7C8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=G+xktSFAQ1dxOc7V/JtqKYyvJz/KlBsA2cIgn6rLykI=;
 b=re8nE4UUjPFn7fwXxflQ+JzYU9FiF1XGoHSEl23q6KDqRwVv8A/Du6FN60SDgpIFGU
 +v2FviiUyWvW0MWRSvV2sQIhfisfZylzGRWjMYXMnE7JfcVHSTKAWFsQNPRIyMIGkA29
 jDz2qkTqJ/3emM1PL2BlrOlKUDFKlj5oBdcH/czGMfwoQoc3BmrWu9IQI6SN067V5PK7
 XuqqfGx0Pdj61FZLPFzbipN8aiQ9iTXWlI/0FW7ucWT9Ub+B1BEJHqNuSZpt/Ag/jOdN
 5CPRHbAZdTnIY4eatUlvu1yGC5GPKy/nZJb/o3fIqBXjxPVg0qGCClpYeI3RnFFPl+OP
 zQrg==
X-Gm-Message-State: AOAM533JT4XMbKWwLCz8t10Zvi48hN7S8LzcJVEyd8b/lKUpPsSd+eWM
 gCR3QTGIQugC2C3xpdliM3E=
X-Google-Smtp-Source: ABdhPJxzeqFCXFBMkhVksOW3ZfVt/hIvQ54oFj4QqJ95uMcOiOhtgcxDjP4OQT5RauSBV7Zr+Cg8JQ==
X-Received: by 2002:a2e:7d13:: with SMTP id y19mr4805711ljc.344.1631291241537; 
 Fri, 10 Sep 2021 09:27:21 -0700 (PDT)
Received: from kari-VirtualBox ([31.132.12.44])
 by smtp.gmail.com with ESMTPSA id 10sm620378ljp.12.2021.09.10.09.27.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 09:27:20 -0700 (PDT)
Date: Fri, 10 Sep 2021 19:27:18 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 29/31] staging: wfx: remove useless comments after #endif
Message-ID: <20210910162718.tjcwwxtxbr3ugdgf@kari-VirtualBox>
References: <20210910160504.1794332-1-Jerome.Pouiller@silabs.com>
 <20210910160504.1794332-30-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210910160504.1794332-30-Jerome.Pouiller@silabs.com>
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

On Fri, Sep 10, 2021 at 06:05:02PM +0200, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> Comments after the last #endif of header files don't bring any
> information and are redundant with the name of the file. Drop them.

How so? You see right away that this indeed is header guard and not some
other random thing. Also kernel coding standard says:

	At the end of any non-trivial #if or #ifdef block (more than a
	few line), place a comment after the #endif on the same line,
	noting the conditional expression used.

There is no point dropping them imo. If you think about space saving
this patch will take more space. Because it will be in version history.
So nack from me unless some one can trun my head around.

> =

> Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> ---
>  drivers/staging/wfx/bh.h      | 2 +-
>  drivers/staging/wfx/data_rx.h | 2 +-
>  drivers/staging/wfx/data_tx.h | 2 +-
>  drivers/staging/wfx/debug.h   | 2 +-
>  drivers/staging/wfx/fwio.h    | 2 +-
>  drivers/staging/wfx/hwio.h    | 2 +-
>  drivers/staging/wfx/key.h     | 2 +-
>  drivers/staging/wfx/queue.h   | 2 +-
>  drivers/staging/wfx/scan.h    | 2 +-
>  drivers/staging/wfx/sta.h     | 2 +-
>  drivers/staging/wfx/wfx.h     | 2 +-
>  11 files changed, 11 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/staging/wfx/bh.h b/drivers/staging/wfx/bh.h
> index f08c62ed039c..6c121ce4dd3f 100644
> --- a/drivers/staging/wfx/bh.h
> +++ b/drivers/staging/wfx/bh.h
> @@ -30,4 +30,4 @@ void wfx_bh_request_rx(struct wfx_dev *wdev);
>  void wfx_bh_request_tx(struct wfx_dev *wdev);
>  void wfx_bh_poll_irq(struct wfx_dev *wdev);
>  =

> -#endif /* WFX_BH_H */
> +#endif
> diff --git a/drivers/staging/wfx/data_rx.h b/drivers/staging/wfx/data_rx.h
> index f79545c06130..84d0e3c0507b 100644
> --- a/drivers/staging/wfx/data_rx.h
> +++ b/drivers/staging/wfx/data_rx.h
> @@ -15,4 +15,4 @@ struct hif_ind_rx;
>  void wfx_rx_cb(struct wfx_vif *wvif,
>  	       const struct hif_ind_rx *arg, struct sk_buff *skb);
>  =

> -#endif /* WFX_DATA_RX_H */
> +#endif
> diff --git a/drivers/staging/wfx/data_tx.h b/drivers/staging/wfx/data_tx.h
> index dafd8fef44cf..15590a8faefe 100644
> --- a/drivers/staging/wfx/data_tx.h
> +++ b/drivers/staging/wfx/data_tx.h
> @@ -65,4 +65,4 @@ static inline struct hif_req_tx *wfx_skb_txreq(struct s=
k_buff *skb)
>  	return req;
>  }
>  =

> -#endif /* WFX_DATA_TX_H */
> +#endif
> diff --git a/drivers/staging/wfx/debug.h b/drivers/staging/wfx/debug.h
> index 6f2f84d64c9e..4b9c49a9fffb 100644
> --- a/drivers/staging/wfx/debug.h
> +++ b/drivers/staging/wfx/debug.h
> @@ -16,4 +16,4 @@ const char *get_hif_name(unsigned long id);
>  const char *get_mib_name(unsigned long id);
>  const char *get_reg_name(unsigned long id);
>  =

> -#endif /* WFX_DEBUG_H */
> +#endif
> diff --git a/drivers/staging/wfx/fwio.h b/drivers/staging/wfx/fwio.h
> index 6028f92503fe..eeea61210eca 100644
> --- a/drivers/staging/wfx/fwio.h
> +++ b/drivers/staging/wfx/fwio.h
> @@ -12,4 +12,4 @@ struct wfx_dev;
>  =

>  int wfx_init_device(struct wfx_dev *wdev);
>  =

> -#endif /* WFX_FWIO_H */
> +#endif
> diff --git a/drivers/staging/wfx/hwio.h b/drivers/staging/wfx/hwio.h
> index 9a361ed95ecb..ff09575dd1af 100644
> --- a/drivers/staging/wfx/hwio.h
> +++ b/drivers/staging/wfx/hwio.h
> @@ -72,4 +72,4 @@ int control_reg_write_bits(struct wfx_dev *wdev, u32 ma=
sk, u32 val);
>  int igpr_reg_read(struct wfx_dev *wdev, int index, u32 *val);
>  int igpr_reg_write(struct wfx_dev *wdev, int index, u32 val);
>  =

> -#endif /* WFX_HWIO_H */
> +#endif
> diff --git a/drivers/staging/wfx/key.h b/drivers/staging/wfx/key.h
> index dd189788acf1..2d135eff7af2 100644
> --- a/drivers/staging/wfx/key.h
> +++ b/drivers/staging/wfx/key.h
> @@ -17,4 +17,4 @@ int wfx_set_key(struct ieee80211_hw *hw, enum set_key_c=
md cmd,
>  		struct ieee80211_vif *vif, struct ieee80211_sta *sta,
>  		struct ieee80211_key_conf *key);
>  =

> -#endif /* WFX_STA_H */
> +#endif
> diff --git a/drivers/staging/wfx/queue.h b/drivers/staging/wfx/queue.h
> index 54b5def2e24c..edd0d018b198 100644
> --- a/drivers/staging/wfx/queue.h
> +++ b/drivers/staging/wfx/queue.h
> @@ -42,4 +42,4 @@ unsigned int wfx_pending_get_pkt_us_delay(struct wfx_de=
v *wdev,
>  					  struct sk_buff *skb);
>  void wfx_pending_dump_old_frames(struct wfx_dev *wdev, unsigned int limi=
t_ms);
>  =

> -#endif /* WFX_QUEUE_H */
> +#endif
> diff --git a/drivers/staging/wfx/scan.h b/drivers/staging/wfx/scan.h
> index 562ca1321daf..78e3b984f375 100644
> --- a/drivers/staging/wfx/scan.h
> +++ b/drivers/staging/wfx/scan.h
> @@ -19,4 +19,4 @@ int wfx_hw_scan(struct ieee80211_hw *hw, struct ieee802=
11_vif *vif,
>  void wfx_cancel_hw_scan(struct ieee80211_hw *hw, struct ieee80211_vif *v=
if);
>  void wfx_scan_complete(struct wfx_vif *wvif, int nb_chan_done);
>  =

> -#endif /* WFX_SCAN_H */
> +#endif
> diff --git a/drivers/staging/wfx/sta.h b/drivers/staging/wfx/sta.h
> index f359f375cc56..4d7e38be4235 100644
> --- a/drivers/staging/wfx/sta.h
> +++ b/drivers/staging/wfx/sta.h
> @@ -70,4 +70,4 @@ int wfx_update_pm(struct wfx_vif *wvif);
>  void wfx_reset(struct wfx_vif *wvif);
>  u32 wfx_rate_mask_to_hw(struct wfx_dev *wdev, u32 rates);
>  =

> -#endif /* WFX_STA_H */
> +#endif
> diff --git a/drivers/staging/wfx/wfx.h b/drivers/staging/wfx/wfx.h
> index a4770f59f7d2..f8df59ad1639 100644
> --- a/drivers/staging/wfx/wfx.h
> +++ b/drivers/staging/wfx/wfx.h
> @@ -161,4 +161,4 @@ static inline int memzcmp(void *src, unsigned int siz=
e)
>  	return memcmp(buf, buf + 1, size - 1);
>  }
>  =

> -#endif /* WFX_H */
> +#endif
> -- =

> 2.33.0
> =

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
