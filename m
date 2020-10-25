Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AEA298317
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Oct 2020 19:30:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6AAF421519;
	Sun, 25 Oct 2020 18:30:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qowhDd4DHufq; Sun, 25 Oct 2020 18:30:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CA22C20488;
	Sun, 25 Oct 2020 18:30:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DCB1D1BF42D
 for <devel@linuxdriverproject.org>; Sun, 25 Oct 2020 18:30:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D95388719C
 for <devel@linuxdriverproject.org>; Sun, 25 Oct 2020 18:30:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dihfUj69PoZH for <devel@linuxdriverproject.org>;
 Sun, 25 Oct 2020 18:30:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 82BE58719A
 for <devel@driverdev.osuosl.org>; Sun, 25 Oct 2020 18:30:21 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.77,416,1596492000"; d="scan'208";a="362719124"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
 by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2020 19:30:18 +0100
Date: Sun, 25 Oct 2020 19:30:17 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Elena Afanasova <eafanasova@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8192u: ieee80211:
 replace kmalloc/memset with kzalloc
In-Reply-To: <43e637becf35f98a952c38ee1a5b690798c62c75.camel@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2010251929380.2714@hadrien>
References: <43e637becf35f98a952c38ee1a5b690798c62c75.camel@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Sun, 25 Oct 2020, Elena Afanasova wrote:

> Replace kmalloc + memset 0 by a call to kzalloc which zeroes memory too.
> Found with Coccinelle.
>
> Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
> ---
> Changes in v3:
>         - use array_size()
> Changes in v2:
>         - correct the subject line
>         - correct the commit message
>
>  drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> index 63a561ab4a76..53ce97aae206 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> @@ -227,13 +227,10 @@ static struct ieee80211_txb *ieee80211_alloc_txb(int nr_frags, int txb_size,
>  {
>  	struct ieee80211_txb *txb;
>  	int i;
> -	txb = kmalloc(
> -		sizeof(struct ieee80211_txb) + (sizeof(u8 *) * nr_frags),
> -		gfp_mask);
> +	txb = kzalloc(sizeof(*txb) + array_size(sizeof(u8 *), nr_frags), gfp_mask);

There is no need to exceed 80 characters here.

julia

>  	if (!txb)
>  		return NULL;
>
> -	memset(txb, 0, sizeof(struct ieee80211_txb));
>  	txb->nr_frags = nr_frags;
>  	txb->frag_size = __cpu_to_le16(txb_size);
>
> --
> 2.25.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/43e637becf35f98a952c38ee1a5b690798c62c75.camel%40gmail.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
