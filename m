Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F27B224B91
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jul 2020 15:34:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3B04220458;
	Sat, 18 Jul 2020 13:34:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e0C9OADAHMEl; Sat, 18 Jul 2020 13:34:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 15C9120363;
	Sat, 18 Jul 2020 13:34:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2BE911BF283
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 13:34:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2817E86207
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 13:34:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sv8Kdzxmcq4q for <devel@linuxdriverproject.org>;
 Sat, 18 Jul 2020 13:34:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0988385F2B
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 13:34:28 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id q4so15767472lji.2
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 06:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PV7hHvU5WTJVLxmjDtytdt4i+Ojp5k4NkU4sJzhexD0=;
 b=rTV+fN6SCUZ/GEu9Vs6WW3JrFjNFu1XC/ZBSCEiNkL/2M5nt8jhGAJjafm4fYUq5kJ
 yWTP4jBeYEnOEdR1GDNp4bn/zGngGh3Ln+nHKgI7miC7SbLtf2Ua4vxQA6WZ3nVAhdn5
 BkCFvPNIO8zHhYDpw2mDUwZUFUEq1B/uhmZ3kuRRFmBeXP79l1ku7hTfsxg+Ru2u75Ur
 +n76KOf+GwEMIQp11ZHZy4sz0Pi36YrfodmH8JpQJsqy7GaqggIDp5MKaiNpnsyN9ZAV
 SFAOO4rVQCDhOyuAfJ7+qZr9YjYnoN5rtfr6G6utH1KKHLQQ8WGQBsx5Yyvp/ucQlRXP
 EyIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PV7hHvU5WTJVLxmjDtytdt4i+Ojp5k4NkU4sJzhexD0=;
 b=hujodX294XHxpScGRBpSLrwaMXGOpcFZEi+/4B1SSHI8rJb0Sjecu9gwHrDAxnQ3uD
 OEjpXnFRAqkZDs5QVZSIRi2ZMiVc8O0EtuLPEp1i+P7t3rDQV07CUyUZPpIN/wo/z8YL
 9xollwRCKQY54wAYkbW8mQagrgencDUYDokrRT4jhgsvQ9iHMk3/Tj/HH5w7fN+6ju81
 dj5D28238/vfqJCfcX+iDygu/N6G/PcNma9Vs6+Nfz2nwEJGWAiYRJDHF18TvALEFr0S
 RQTsOoGv5sXrgedFdfga57gCnua6D2qx6r7Ja9HFKixzAnnab2vjthUHpQwfCngtYU/S
 Hujw==
X-Gm-Message-State: AOAM533TkV6SdKfXg0RbYL8xYXaXD7D4c3oVd28XFqmJhHYQwL3MJoWt
 mno6duCf6P6juFtowcA2Se9lnV3rpCN59Phka+GOcg==
X-Google-Smtp-Source: ABdhPJwJQoFDnmj8u12dbySuIPtpBhE37a9Y8QEazqGOg3WX/XNzDLTdbwZQqca/Uv3IRrV9tsnvXH+L2dU3ba0fKEs=
X-Received: by 2002:a2e:9b92:: with SMTP id z18mr7058455lji.364.1595079266712; 
 Sat, 18 Jul 2020 06:34:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200718091857.quzs5sqvkjzngd6k@pesu-pes-edu>
 <560eeb7388164e58ac0e47277fe2aec798c45a5c.camel@perches.com>
In-Reply-To: <560eeb7388164e58ac0e47277fe2aec798c45a5c.camel@perches.com>
From: B K Karthik <bkkarthik@pesu.pes.edu>
Date: Sat, 18 Jul 2020 09:34:15 -0400
Message-ID: <CAAhDqq17xt5Q9JHPw9NDnFhbp=0gYS4PJWyRwvPYKXMrN_btPQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] staging: rtl8188eu: include: placed constant on the
 right side of the test in comparisons
To: Joe Perches <joe@perches.com>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 18, 2020 at 9:17 AM Joe Perches <joe@perches.com> wrote:
>
> On Sat, 2020-07-18 at 05:18 -0400, B K Karthik wrote:
> > placed constant on the right side of the test
> > to fix warnings issued by checkpatch
> []
> > diff --git a/drivers/staging/rtl8188eu/include/wifi.h b/drivers/staging/rtl8188eu/include/wifi.h
> []
> > @@ -326,7 +326,7 @@ static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
> >
> >  static inline int IsFrameTypeCtrl(unsigned char *pframe)
> >  {
> > -     if (WIFI_CTRL_TYPE == GetFrameType(pframe))
> > +     if (GetFrameType(pframe) == WIFI_CTRL_TYPE)
> >               return true;
> >       else
> >               return false;
>
> Always try to improve code instead of merely shutting
> up checkpatch warnings.
>
> This function should likely be written:
>
> static inline bool IsFrameTypeCtrl(unsigned char *pframe)
> {
>         return GetFrameType(pframe) == WIFI_CTRL_TYPE;
> }
>
> and given it's used only once, it might be expanded
> in that place and removed altogether.
>
> Something like:
>
> (and the memcmp below could be ether_addr_equal instead
>  but I'm too lazy to find out if the addresses are both
>  guaranteed to be __aligned(2) which is likely)

Alright, I will try to do that and send a v2 asap :)
>
> ---
>  drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c | 8 +++++---
>  drivers/staging/rtl8188eu/include/wifi.h        | 7 -------
>  2 files changed, 5 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c b/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
> index 7d0135fde795..a2994f9ecbde 100644
> --- a/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
> +++ b/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
> @@ -144,10 +144,12 @@ void update_recvframe_phyinfo_88e(struct recv_frame *precvframe,
>
>         wlanhdr = precvframe->pkt->data;
>
> -       pkt_info.bPacketMatchBSSID = ((!IsFrameTypeCtrl(wlanhdr)) &&
> -               !pattrib->icv_err && !pattrib->crc_err &&
> +       pkt_info.bPacketMatchBSSID =
> +               GetFrameType(wlanhdr) != WIFI_CTRL_TYPE &&
> +               !pattrib->icv_err &&
> +               !pattrib->crc_err &&
>                 !memcmp(get_hdr_bssid(wlanhdr),
> -                get_bssid(&padapter->mlmepriv), ETH_ALEN));
> +                       get_bssid(&padapter->mlmepriv), ETH_ALEN);
>
>         pkt_info.bPacketToSelf = pkt_info.bPacketMatchBSSID &&
>                                  (!memcmp(get_da(wlanhdr),
> diff --git a/drivers/staging/rtl8188eu/include/wifi.h b/drivers/staging/rtl8188eu/include/wifi.h
> index 791f287a546d..3998d5633860 100644
> --- a/drivers/staging/rtl8188eu/include/wifi.h
> +++ b/drivers/staging/rtl8188eu/include/wifi.h
> @@ -324,13 +324,6 @@ static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
>         return sa;
>  }
>
> -static inline int IsFrameTypeCtrl(unsigned char *pframe)
> -{
> -       if (WIFI_CTRL_TYPE == GetFrameType(pframe))
> -               return true;
> -       else
> -               return false;
> -}
>  /*-----------------------------------------------------------------------------
>                         Below is for the security related definition
>  ------------------------------------------------------------------------------*/

thank you for pointing me.

karthik
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
