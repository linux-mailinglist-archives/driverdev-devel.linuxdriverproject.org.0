Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 043093EFD4B
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Aug 2021 09:04:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D67D4012A;
	Wed, 18 Aug 2021 07:04:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lcUh9HkoUkg5; Wed, 18 Aug 2021 07:04:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F616401B3;
	Wed, 18 Aug 2021 07:04:37 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DD7A31BF842
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Aug 2021 07:04:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D1DE380B7E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Aug 2021 07:04:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yHykD2g0aJcj
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Aug 2021 07:04:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CBE8B80B3C
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Aug 2021 07:04:22 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id o10so1274435plg.0
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Aug 2021 00:04:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=203WWCGnYgUe65kOUoikuHitHrtbmTZikPc1N5KDUMA=;
 b=husnpfk+K6IDhcYp4DkVUhzs8EHdTEjvOS04QJYIdEOwkS5DAnRJZuhsN5pOF6Ri0m
 Ig0HadzJ+xaxVVEcNHoQTYyWvzNNPvYFvT8kT4l0DomaLwecjXtBnpJdWbZh/S0Y5hYV
 io02ZlRJ/ZgFEVgf5nz2rBJNe1YmIkZNMSd/m5F60AJ3kgERYe40Gm9ktx0pOVEA8vsE
 cVGj+iJa2b/+151wNZaYo/lK8ELM1jDLkNlY/NwUgobfYDLKQL/U7aQ6eP/iuJzqgofI
 VeKeKRVvLiHC2L7rrB6fTcRzYYZYe8pKlPBTLIu9H/7fHdlvLU+qKnICle0kSu1ummFs
 7aRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=203WWCGnYgUe65kOUoikuHitHrtbmTZikPc1N5KDUMA=;
 b=pjzAIl4LJ6UU8/yFmNRG+P7f6vvxOUawJ4SmYRhuGR2iHovhPOFPLwPiwT5ZjadBqG
 gjEvfKFwSVHQ9bRylJxEe0qTvNAZN1ing8AMHyUK49pt73pgyKjcvISMNJTfp+aVgnWU
 7eBiuRU4goAqroKJ58GYoZumtkzsT2Qbm7WjsMCuipAkLUcUOkvRZBKImKw89cGKbVkO
 d65Zp6je3ORbApWq7JRV653HAtDXYp+tJGv/sQ+m0K9vjZVsWtHCXpM+ggZAvKYDtioi
 EEq2OD3NCs9wQicvBwMhlqWGAQ7ApovQ3jtvc2Ifj0+ieqHLS0TJRw5xPThx8kEBAyA3
 TOSg==
X-Gm-Message-State: AOAM532Q7dGMjaJzyYktk1A+XLzZSC9HVo65bVsW7cGbWkAtG5/ieo0C
 O8gf+nX6InPeM95gNAr7mVcCAXxb44Ggi1suPTSb9Na/2s4=
X-Google-Smtp-Source: ABdhPJxe2WbVmcY3AgT4NQNVxxYj479x+xp0ydxS745N4wIR1KnfyLo6JFVUHa4zLyN8AtEkMYS3vqP5S0Pk4cRDyuY=
X-Received: by 2002:a17:90b:150a:: with SMTP id
 le10mr7739309pjb.135.1629270262168; 
 Wed, 18 Aug 2021 00:04:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210816175503.GA17772@mad-cln-mothership-1.local>
In-Reply-To: <20210816175503.GA17772@mad-cln-mothership-1.local>
From: Frans Klaver <fransklaver@gmail.com>
Date: Wed, 18 Aug 2021 09:04:11 +0200
Message-ID: <CAH6sp9Ov1JZCBm_9hB1+SqctNSvnieN-eqCrh_0Ui6yNTzeyig@mail.gmail.com>
Subject: Re: [PATCH] staging/ks7010: Fix coding style problems
To: Leon Krieg <info@madcow.dev>
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
Cc: Greg KH <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 16, 2021 at 8:06 PM Leon Krieg <info@madcow.dev> wrote:
>
> Sorry to bother you with this low-effort patch but I'd really like to get
> my feet in the water and this whole process is making me nervous. I'd
> really appreciate you taking the time to look over this diff and
> hopefully I did not screw up to badly.
>
> Signed-off-by: Leon Krieg <info@madcow.dev>
> ---
>  drivers/staging/ks7010/Kconfig       |  7 ++++---
>  drivers/staging/ks7010/ks_hostif.c   |  2 +-
>  drivers/staging/ks7010/ks_wlan_net.c | 20 ++++++++++----------
>  3 files changed, 15 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/staging/ks7010/Kconfig b/drivers/staging/ks7010/Kconfig
> index 0987fdc2f70d..4bc17e50ac89 100644
> --- a/drivers/staging/ks7010/Kconfig
> +++ b/drivers/staging/ks7010/Kconfig
> @@ -6,6 +6,7 @@ config KS7010
>         select WEXT_PRIV
>         select FW_LOADER
>         help
> -         This is a driver for KeyStream KS7010 based SDIO WIFI cards. It is
> -         found on at least later Spectec SDW-821 (FCC-ID "S2Y-WLAN-11G-K" only,
> -         sadly not FCC-ID "S2Y-WLAN-11B-G") and Spectec SDW-823 microSD cards.
> +         Selecting this option enables the driver for KeyStream KS7010 SDIO
> +         hardware found in at least Spectec SDW-821 and SDW-823 microSD cards
> +         (FCC-ID "S2Y-WLAN-11G-K" but not FCC-ID "S2Y-WLAN-11B-G" and Spectec
> +         SDW-823).
>
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> index eaa70893224a..d2f9d0ed62c1 100644
>  drivers/staging/ks7010/Kconfig       |  7 ++++---
>  drivers/staging/ks7010/ks_hostif.c   |  2 +-
>  drivers/staging/ks7010/ks_wlan_net.c | 20 ++++++++++----------
>  3 files changed, 15 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/staging/ks7010/Kconfig b/drivers/staging/ks7010/Kconfig
> index 0987fdc2f70d..4bc17e50ac89 100644
> --- a/drivers/staging/ks7010/Kconfig
> +++ b/drivers/staging/ks7010/Kconfig
> @@ -6,6 +6,7 @@ config KS7010
>         select WEXT_PRIV
>         select FW_LOADER
>         help
> -         This is a driver for KeyStream KS7010 based SDIO WIFI cards. It is
> -         found on at least later Spectec SDW-821 (FCC-ID "S2Y-WLAN-11G-K" only,
> -         sadly not FCC-ID "S2Y-WLAN-11B-G") and Spectec SDW-823 microSD cards.
> +         Selecting this option enables the driver for KeyStream KS7010 SDIO
> +         hardware found in at least Spectec SDW-821 and SDW-823 microSD cards
> +         (FCC-ID "S2Y-WLAN-11G-K" but not FCC-ID "S2Y-WLAN-11B-G" and Spectec
> +         SDW-823).
>
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> index eaa70893224a..d2f9d0ed62c1 100644
> --- a/drivers/staging/ks7010/ks_hostif.c
> +++ b/drivers/staging/ks7010/ks_hostif.c
> @@ -134,7 +134,7 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info *ap_info)
>         size = (ap_info->rsn.size <= RSN_IE_BODY_MAX) ?
>                 ap_info->rsn.size : RSN_IE_BODY_MAX;
>         if ((ap_info->rsn_mode & RSN_MODE_WPA2) &&
> -           (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2)) {
> +           priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) {
>                 ap->rsn_ie.id = RSN_INFO_ELEM_ID;
>                 ap->rsn_ie.size = size;
>                 memcpy(ap->rsn_ie.body, ap_info->rsn.body, size);
> diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
> index 09e7b4cd0138..33abb6a7dbe0 100644
> --- a/drivers/staging/ks7010/ks_wlan_net.c
> +++ b/drivers/staging/ks7010/ks_wlan_net.c
> @@ -181,26 +181,26 @@ static int ks_wlan_set_freq(struct net_device *dev,
>
>         /* for SLEEP MODE */
>         /* If setting by frequency, convert to a channel */
> -       if ((fwrq->freq.e == 1) &&
> -           (fwrq->freq.m >= 241200000) && (fwrq->freq.m <= 248700000)) {
> +       if (fwrq->freq.e == 1 &&
> +           fwrq->freq.m >= 241200000 && fwrq->freq.m <= 248700000) {
>                 int f = fwrq->freq.m / 100000;
>                 int c = 0;
>
>                 while ((c < 14) && (f != frequency_list[c]))
>                         c++;
> -               /* Hack to fall through... */
> +               fallthrough;
>                 fwrq->freq.e = 0;
>                 fwrq->freq.m = c + 1;
>         }
>         /* Setting by channel number */
> -       if ((fwrq->freq.m > 1000) || (fwrq->freq.e > 0))
> +       if (fwrq->freq.m > 1000 || fwrq->freq.e > 0)
>                 return -EOPNOTSUPP;
>
>         channel = fwrq->freq.m;
>         /* We should do a better check than that,
>          * based on the card capability !!!
>          */
> -       if ((channel < 1) || (channel > 14)) {
> +       if (channel < 1 || channel > 14) {
>                 netdev_dbg(dev, "%s: New channel value of %d is invalid!\n",
>                            dev->name, fwrq->freq.m);
>                 return -EINVAL;
> @@ -664,7 +664,7 @@ static int ks_wlan_set_rts(struct net_device *dev, struct iw_request_info *info,
>         /* for SLEEP MODE */
>         if (vwrq->rts.disabled)
>                 rthr = 2347;
> -       if ((rthr < 0) || (rthr > 2347))
> +       if (rthr < 0 || rthr > 2347)
>                 return -EINVAL;
>
>         priv->reg.rts = rthr;
> @@ -702,7 +702,7 @@ static int ks_wlan_set_frag(struct net_device *dev,
>         /* for SLEEP MODE */
>         if (vwrq->frag.disabled)
>                 fthr = 2346;
> -       if ((fthr < 256) || (fthr > 2346))
> +       if (fthr < 256 || fthr > 2346)
>                 return -EINVAL;
>
>         fthr &= ~0x1;   /* Get an even value - is it really needed ??? */
> @@ -781,7 +781,7 @@ static int ks_wlan_set_encode(struct net_device *dev,
>                 return -EINVAL;
>
>         /* for SLEEP MODE */
> -       if ((index < 0) || (index > 4))
> +       if (index < 0 || index > 4)
>                 return -EINVAL;
>
>         index = (index == 0) ? priv->reg.wep_index : (index - 1);
> @@ -882,7 +882,7 @@ static int ks_wlan_get_encode(struct net_device *dev,
>         }
>
>         /* Which key do we want ? -1 -> tx index */
> -       if ((index < 0) || (index >= 4))
> +       if (index < 0 || index >= 4)
>                 index = priv->reg.wep_index;
>         if (priv->reg.privacy_invoked) {
>                 enc->flags &= ~IW_ENCODE_DISABLED;
> @@ -1860,7 +1860,7 @@ static int ks_wlan_set_power_mgmt(struct net_device *dev,
>                 return -EINVAL;
>
>         if ((*uwrq == POWER_MGMT_SAVE1 || *uwrq == POWER_MGMT_SAVE2) &&
> -           (priv->reg.operation_mode != MODE_INFRASTRUCTURE))
> +           priv->reg.operation_mode != MODE_INFRASTRUCTURE)
>                 return -EINVAL;
>
>         priv->reg.power_mgmt = *uwrq;
> --
> 2.27.0
>
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel> --- a/drivers/staging/ks7010/ks_hostif.c
> +++ b/drivers/staging/ks7010/ks_hostif.c
> @@ -134,7 +134,7 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info *ap_info)
>         size = (ap_info->rsn.size <= RSN_IE_BODY_MAX) ?
>                 ap_info->rsn.size : RSN_IE_BODY_MAX;
>         if ((ap_info->rsn_mode & RSN_MODE_WPA2) &&
> -           (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2)) {
> +           priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) {
>                 ap->rsn_ie.id = RSN_INFO_ELEM_ID;
>                 ap->rsn_ie.size = size;
>                 memcpy(ap->rsn_ie.body, ap_info->rsn.body, size);
> diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
> index 09e7b4cd0138..33abb6a7dbe0 100644
> --- a/drivers/staging/ks7010/ks_wlan_net.c
> +++ b/drivers/staging/ks7010/ks_wlan_net.c
> @@ -181,26 +181,26 @@ static int ks_wlan_set_freq(struct net_device *dev,
>
>         /* for SLEEP MODE */
>         /* If setting by frequency, convert to a channel */
> -       if ((fwrq->freq.e == 1) &&
> -           (fwrq->freq.m >= 241200000) && (fwrq->freq.m <= 248700000)) {
> +       if (fwrq->freq.e == 1 &&
> +           fwrq->freq.m >= 241200000 && fwrq->freq.m <= 248700000) {
>                 int f = fwrq->freq.m / 100000;
>                 int c = 0;
>
>                 while ((c < 14) && (f != frequency_list[c]))
>                         c++;
> -               /* Hack to fall through... */
> +               fallthrough;
>                 fwrq->freq.e = 0;
>                 fwrq->freq.m = c + 1;
>         }
>         /* Setting by channel number */
> -       if ((fwrq->freq.m > 1000) || (fwrq->freq.e > 0))
> +       if (fwrq->freq.m > 1000 || fwrq->freq.e > 0)
>                 return -EOPNOTSUPP;
>
>         channel = fwrq->freq.m;
>         /* We should do a better check than that,
>          * based on the card capability !!!
>          */
> -       if ((channel < 1) || (channel > 14)) {
> +       if (channel < 1 || channel > 14) {
>                 netdev_dbg(dev, "%s: New channel value of %d is invalid!\n",
>                            dev->name, fwrq->freq.m);
>                 return -EINVAL;
> @@ -664,7 +664,7 @@ static int ks_wlan_set_rts(struct net_device *dev, struct iw_request_info *info,
>         /* for SLEEP MODE */
>         if (vwrq->rts.disabled)
>                 rthr = 2347;
> -       if ((rthr < 0) || (rthr > 2347))
> +       if (rthr < 0 || rthr > 2347)
>                 return -EINVAL;
>
>         priv->reg.rts = rthr;
> @@ -702,7 +702,7 @@ static int ks_wlan_set_frag(struct net_device *dev,
>         /* for SLEEP MODE */
>         if (vwrq->frag.disabled)
>                 fthr = 2346;
> -       if ((fthr < 256) || (fthr > 2346))
> +       if (fthr < 256 || fthr > 2346)
>                 return -EINVAL;
>
>         fthr &= ~0x1;   /* Get an even value - is it really needed ??? */
> @@ -781,7 +781,7 @@ static int ks_wlan_set_encode(struct net_device *dev,
>                 return -EINVAL;
>
>         /* for SLEEP MODE */
> -       if ((index < 0) || (index > 4))
> +       if (index < 0 || index > 4)
>                 return -EINVAL;
>
>         index = (index == 0) ? priv->reg.wep_index : (index - 1);
> @@ -882,7 +882,7 @@ static int ks_wlan_get_encode(struct net_device *dev,
>         }
>
>         /* Which key do we want ? -1 -> tx index */
> -       if ((index < 0) || (index >= 4))
> +       if (index < 0 || index >= 4)
>                 index = priv->reg.wep_index;
>         if (priv->reg.privacy_invoked) {
>                 enc->flags &= ~IW_ENCODE_DISABLED;
> @@ -1860,7 +1860,7 @@ static int ks_wlan_set_power_mgmt(struct net_device *dev,
>                 return -EINVAL;
>
>         if ((*uwrq == POWER_MGMT_SAVE1 || *uwrq == POWER_MGMT_SAVE2) &&
> -           (priv->reg.operation_mode != MODE_INFRASTRUCTURE))
> +           priv->reg.operation_mode != MODE_INFRASTRUCTURE)
>                 return -EINVAL;
>
>         priv->reg.power_mgmt = *uwrq;
> --
> 2.27.0

Hi,

It seems you ran into some common issues and triggered some bots.
Don't worry about that. Just rework the patch into multiple patches
with sensible descriptions of what you did. Do follow the suggestions
made by gregkh's patchbot.

Frans
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
