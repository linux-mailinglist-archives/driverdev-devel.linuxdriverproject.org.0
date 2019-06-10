Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5042A3B88A
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 17:52:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2BEE3867D0;
	Mon, 10 Jun 2019 15:52:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j8UFmAFRKyUh; Mon, 10 Jun 2019 15:52:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A01C866F0;
	Mon, 10 Jun 2019 15:52:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F18F1BF399
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 15:52:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2C93986651
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 15:52:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TxgEakjM4Jfr for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 15:52:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ABD01865FC
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 15:52:27 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 070FC20645;
 Mon, 10 Jun 2019 15:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560181947;
 bh=S3Obzl9/JbERIVLJS+8FiZLzxXxktH57EXPHyk4KrWU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tn8ocLbtJ1owt61rmDtkXtCsozbgkupVgQ6ub8pBef5Q8gjH9+KqOm95BozK5NuuR
 UdBYr5jYXTP2B9WsplBeCCUnNHFwlyiNF74AHRdPVu+rkcdzHFTxTrZf1oGENnwJT8
 WuLuwi3mE6XbGdx/ejXGqPDTsLidfekmxXnMeOt4=
Date: Mon, 10 Jun 2019 17:52:25 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Hao Xu <haoxu.linuxkernel@gmail.com>
Subject: Re: [PATCH v2] staging: kpc2000: kpc_i2c: remove the macros inb_p
 and outb_p
Message-ID: <20190610155225.GB29035@kroah.com>
References: <1560152904-31894-1-git-send-email-haoxu.linuxkernel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560152904-31894-1-git-send-email-haoxu.linuxkernel@gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 10, 2019 at 03:48:24PM +0800, Hao Xu wrote:
> remove inb_p and outb_p to call readq/writeq directly.
> 
> Signed-off-by: Hao Xu <haoxu.linuxkernel@gmail.com>
> ---
> Changes in v2:
> - remove the macros inb_p/outb_p and use readq/writeq directly, per https://lkml.kernel.org/lkml/20190608134505.GA963@arch-01.home/
> ---
>  drivers/staging/kpc2000/kpc2000_i2c.c | 112 ++++++++++++++++------------------
>  1 file changed, 53 insertions(+), 59 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
> index 69e8773..246d5b3 100644
> --- a/drivers/staging/kpc2000/kpc2000_i2c.c
> +++ b/drivers/staging/kpc2000/kpc2000_i2c.c
> @@ -122,12 +122,6 @@ struct i2c_device {
>  /* Not really a feature, but it's convenient to handle it as such */
>  #define FEATURE_IDF             BIT(15)
>  
> -// FIXME!
> -#undef inb_p
> -#define inb_p(a) readq((void *)a)
> -#undef outb_p
> -#define outb_p(d, a) writeq(d, (void *)a)
> -
>  /* Make sure the SMBus host is ready to start transmitting.
>   * Return 0 if it is, -EBUSY if it is not.
>   */
> @@ -135,7 +129,7 @@ static int i801_check_pre(struct i2c_device *priv)
>  {
>  	int status;
>  
> -	status = inb_p(SMBHSTSTS(priv));
> +	status = readq((void *)SMBHSTSTS(priv));

Ugh, all of the void * casting, is is really needed everywhere?  That
just makes everything a mess...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
