Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D612980F2
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Oct 2020 10:14:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1942786CE0;
	Sun, 25 Oct 2020 09:14:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sj_dJ7GeiEa1; Sun, 25 Oct 2020 09:14:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 06670861F4;
	Sun, 25 Oct 2020 09:14:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 78F8D1BF322
 for <devel@linuxdriverproject.org>; Sun, 25 Oct 2020 09:14:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 75A1586A72
 for <devel@linuxdriverproject.org>; Sun, 25 Oct 2020 09:14:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kjDCvXuY-MLP for <devel@linuxdriverproject.org>;
 Sun, 25 Oct 2020 09:14:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 17DCA861F4
 for <devel@driverdev.osuosl.org>; Sun, 25 Oct 2020 09:14:53 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A2B5208E4;
 Sun, 25 Oct 2020 09:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603617292;
 bh=QE6+p4TW2AVU9IOf7id53bJspY9d+JnItHSzdC7u79k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QHkJ/pXxhWDD0g+xkpR4lUEU5ogBwwmwf93hXvag7vaVQ1HFgnSeScs7yDdAUefbj
 RNRZUsLDLqUxXD7m0KC3Lu8t4BFowHEDMisBF6982xXulcTdpnkFrkkdeFDQe3ZoYi
 wytwbRZPJIKdxfzfj5d3GTvs1qXdRL+Rdes8iDGY=
Date: Sun, 25 Oct 2020 10:14:48 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Elena Afanasova <eafanasova@gmail.com>
Subject: Re: [PATCH v2] staging: rtl8192e: replace kmalloc/memset with kzalloc
Message-ID: <20201025091448.GC99582@kroah.com>
References: <70502773399d4cf064d3363c41cce19191710112.camel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <70502773399d4cf064d3363c41cce19191710112.camel@gmail.com>
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

On Fri, Oct 23, 2020 at 12:01:47PM -0700, Elena Afanasova wrote:
> Replace kmalloc + memset 0 by a call to kzalloc which zeroes memory too.
> Found with Coccinelle.
> 
> Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
> ---
> Changes in v2:
> 	- correct the subject line
> 	- correct the commit message
> 
>  drivers/staging/rtl8192e/rtllib_tx.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtllib_tx.c b/drivers/staging/rtl8192e/rtllib_tx.c
> index e0d79daca24a..c9959bb4ab63 100644
> --- a/drivers/staging/rtl8192e/rtllib_tx.c
> +++ b/drivers/staging/rtl8192e/rtllib_tx.c
> @@ -205,12 +205,10 @@ static struct rtllib_txb *rtllib_alloc_txb(int nr_frags, int txb_size,
>  	struct rtllib_txb *txb;
>  	int i;
>  
> -	txb = kmalloc(sizeof(struct rtllib_txb) + (sizeof(u8 *) * nr_frags),
> -		      gfp_mask);
> +	txb = kzalloc(sizeof(*txb) + (sizeof(u8 *) * nr_frags), gfp_mask);

Same here, please always use array_size()
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
