Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4A42980F1
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Oct 2020 10:14:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BC66787583;
	Sun, 25 Oct 2020 09:14:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yKFeSIK5Watj; Sun, 25 Oct 2020 09:14:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3146387382;
	Sun, 25 Oct 2020 09:14:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 71DCF1BF322
 for <devel@linuxdriverproject.org>; Sun, 25 Oct 2020 09:14:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6C6F286961
 for <devel@linuxdriverproject.org>; Sun, 25 Oct 2020 09:14:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KO+oWukiuZzj for <devel@linuxdriverproject.org>;
 Sun, 25 Oct 2020 09:14:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B03BF86969
 for <devel@driverdev.osuosl.org>; Sun, 25 Oct 2020 09:14:38 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78B13208E4;
 Sun, 25 Oct 2020 09:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603617278;
 bh=k38UpENOjh1EMe1gvmyk1XHbWPRBC+PTE+IcqTd7/mw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0LFMCOIVcuDvEb7mUchXhldCf0LNjTRRv/VvIA80n8Oq7qt+5Vin9xrsgER0cZKxT
 Vz+W1H6NPkYCNzE4w+UJyh3ArL58U2GKWPNTaKASogq8slNA9AhMLBpXd/aG1B9cLM
 wmQh05mP31Fn26Vp5OUzCFQCjPoLPDbwIcboiNlo=
Date: Sun, 25 Oct 2020 10:14:34 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Elena Afanasova <eafanasova@gmail.com>
Subject: Re: [PATCH v2] staging: rtl8192u: ieee80211: replace kmalloc/memset
 with kzalloc
Message-ID: <20201025091434.GB99582@kroah.com>
References: <b0d792de290fd492ac77cfa574150d67d3b6276c.camel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b0d792de290fd492ac77cfa574150d67d3b6276c.camel@gmail.com>
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 23, 2020 at 11:47:05AM -0700, Elena Afanasova wrote:
> Replace kmalloc + memset 0 by a call to kzalloc which zeroes memory too.
> Found with Coccinelle.
> 
> Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
> ---
> Changes in v2:
> 	- correct the subject line
> 	- correct the commit message
> 
>  drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> index 63a561ab4a76..fb8483c499b3 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> @@ -227,13 +227,10 @@ static struct ieee80211_txb *ieee80211_alloc_txb(int nr_frags, int txb_size,
>  {
>  	struct ieee80211_txb *txb;
>  	int i;
> -	txb = kmalloc(
> -		sizeof(struct ieee80211_txb) + (sizeof(u8 *) * nr_frags),
> -		gfp_mask);
> +	txb = kzalloc(sizeof(*txb) + (sizeof(u8 *) * nr_frags), gfp_mask);

Can you please use array_size() for this type of math to ensure that the
multiplication is safe?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
