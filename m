Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B17C28DF
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Sep 2019 23:35:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE78685F0B;
	Mon, 30 Sep 2019 21:35:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZxzP-8iAdtkq; Mon, 30 Sep 2019 21:35:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 156C585FB0;
	Mon, 30 Sep 2019 21:35:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 815701BF2EF
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 21:35:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 63DC981B76
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 21:35:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1qbl3tbu-O5M for <devel@linuxdriverproject.org>;
 Mon, 30 Sep 2019 21:35:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 00C2F8758F
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 21:35:25 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id b19so14238224iob.4
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 14:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5l+n2rw/iAlqfIRxbZZeFy6DYtAwztBk8k/LJBt7oE8=;
 b=bJTIq76UANeq3zxz1NT4vFNcGC1oVXaZtF7S8x6HgJyDLCgRYDzz5c88Qv/omqOG5f
 cOeKqWKbkd02ZUThbCe3A4aO/IZCJNqafo6/DoxsIQgdho+/6t05W6F7l23nB2qSEjv3
 Who5JsO3zs1gw9OyojdLC/aeK7NfZZq6jKbvsiEUVDYz7eatGoSl6vbO6Z7mL6TMDwYu
 F//sviWkyXOtVbnYJfg6WSpK48M4m3C9SjOh9TZp2vR7Cb42TUS3CQo5/CjidK1Rkoqn
 Nj2/IryA3j2VhqtGo+AUHQE5edmWEVBeiDFfe3dZMArTum2CobOQZ+yK9WQJzVne9UXf
 xBew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5l+n2rw/iAlqfIRxbZZeFy6DYtAwztBk8k/LJBt7oE8=;
 b=dIoK7kdClo5GSs9hxyMl753UKkGjJcbhaflAkyB5QygkgwqbYYFR4rC4DiuhSoRRGA
 cxWwY4/kyFfk7S2+pRlr36N3YlWAOjOLxLFD9GRS0JfsziZZQvXgILoV0gN0dV8aujwj
 YF7EFq+wFpRaBGkCd7OPthpzlTduhPTawrATmeDrC1jYzlVQkU85Fhx6QcMxIzR6Ogdr
 c0g+Pks+rq8YAL3Um4TLIapaTwUddh1DRhf33JXxeiCz9oZr+MFD6l1XtC6LUps+STW2
 QlM0rQR79O6Kr+JUrPOdbs6N9moUbcvHdJ7kEJILSH1ra7S4EbokSh7+M2tiFUMQMW4s
 SQyw==
X-Gm-Message-State: APjAAAXFQJ2FnYF+tcbzwi0zCwMmujyShKMkiTz5sjTRLbp6mTX7LL3Z
 NtZmHPB07nYsYSDG6S+Km250arBMwTiAvaAOCxM=
X-Google-Smtp-Source: APXvYqz1tiK1Mxs3XfkgoniEC/dVCuoTbK/zeberVMZesyTKbgE8Rvrf6VbiQHdPCYTWFzQmSDeN8oktc8Q6CO/4N+k=
X-Received: by 2002:a02:ac82:: with SMTP id x2mr21524721jan.34.1569879324942; 
 Mon, 30 Sep 2019 14:35:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190920025137.29407-1-navid.emamdoost@gmail.com>
In-Reply-To: <20190920025137.29407-1-navid.emamdoost@gmail.com>
From: Navid Emamdoost <navid.emamdoost@gmail.com>
Date: Mon, 30 Sep 2019 16:35:14 -0500
Message-ID: <CAEkB2EQJDdE=0HDzL14WDHHuwuaNNjSXEGVm1p7MBopyDvzTzQ@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8192u: fix multiple memory leaks on error path
To: Colin Ian King <colin.king@canonical.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kjlu@umn.edu, linux-kernel@vger.kernel.org, Navid Emamdoost <emamd001@umn.edu>,
 Stephen McCamant <smccaman@umn.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Could you take a look at this patch and confirm it, please?

On Thu, Sep 19, 2019 at 9:51 PM Navid Emamdoost
<navid.emamdoost@gmail.com> wrote:
>
> In rtl8192_tx on error handling path allocated urbs and also skb should
> be released.
>
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index fe1f279ca368..b62b03802b1b 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -1422,7 +1422,7 @@ short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
>                 (struct tx_fwinfo_819x_usb *)(skb->data + USB_HWDESC_HEADER_LEN);
>         struct usb_device *udev = priv->udev;
>         int pend;
> -       int status;
> +       int status, rt = -1;
>         struct urb *tx_urb = NULL, *tx_urb_zero = NULL;
>         unsigned int idx_pipe;
>
> @@ -1566,8 +1566,10 @@ short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
>                 }
>                 if (bSend0Byte) {
>                         tx_urb_zero = usb_alloc_urb(0, GFP_ATOMIC);
> -                       if (!tx_urb_zero)
> -                               return -ENOMEM;
> +                       if (!tx_urb_zero) {
> +                               rt = -ENOMEM;
> +                               goto error;
> +                       }
>                         usb_fill_bulk_urb(tx_urb_zero, udev,
>                                           usb_sndbulkpipe(udev, idx_pipe),
>                                           &zero, 0, tx_zero_isr, dev);
> @@ -1577,7 +1579,7 @@ short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
>                                          "Error TX URB for zero byte %d, error %d",
>                                          atomic_read(&priv->tx_pending[tcb_desc->queue_index]),
>                                          status);
> -                               return -1;
> +                               goto error;
>                         }
>                 }
>                 netif_trans_update(dev);
> @@ -1588,7 +1590,12 @@ short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
>         RT_TRACE(COMP_ERR, "Error TX URB %d, error %d",
>                  atomic_read(&priv->tx_pending[tcb_desc->queue_index]),
>                  status);
> -       return -1;
> +
> +error:
> +       dev_kfree_skb_any(skb);
> +       usb_free_urb(tx_urb);
> +       usb_free_urb(tx_urb_zero);
> +       return rt;
>  }
>
>  static short rtl8192_usb_initendpoints(struct net_device *dev)
> --
> 2.17.1
>


-- 
Navid.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
