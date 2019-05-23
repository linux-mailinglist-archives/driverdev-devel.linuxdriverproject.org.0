Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 483DE276D3
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 09:22:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6CDA9873B0;
	Thu, 23 May 2019 07:22:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JOegeTsjFAxA; Thu, 23 May 2019 07:22:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B39438735E;
	Thu, 23 May 2019 07:22:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 675F31BF3FC
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 07:22:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 648DF88060
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 07:22:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AgV3+HD3g8Ii for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 07:22:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E3A1C8805D
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 07:22:22 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2ACC4204EC;
 Thu, 23 May 2019 07:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558596142;
 bh=MgxRvVPRCiTGlpJ7u3mhvNbCKBa13fkTjRD8hITHO6M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G0my/NfK77yM68KWwcJCV6hickLW+wqgNuvXwMNHKBRKG//R75yAzP8xwcQ/YO5mn
 h0vQOQoQ3+N9feBcYaEfCNckrZ7hCxY51D4OK2Rj+BNS2fWbdD/I1AP1g8cCVDQRyU
 z0eOM8AVOkhGNedqPmV+rZmxtO6OXBZwzrW3zIqM=
Date: Thu, 23 May 2019 09:22:20 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: Re: [PATCH] staging: fieldbus: anybuss: Remove unnecessary variables
Message-ID: <20190523072220.GC24998@kroah.com>
References: <20190523063504.10530-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523063504.10530-1-nishka.dasgupta@yahoo.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 23, 2019 at 12:05:01PM +0530, Nishka Dasgupta wrote:
> In the functions export_reset_0 and export_reset_1 in arcx-anybus.c,
> the only operation performed before return is passing the variable cd
> (which takes the value of a function call on one of the parameters) as
> argument to another function. Hence the variable cd can be removed.
> Issue found using Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/fieldbus/anybuss/arcx-anybus.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/fieldbus/anybuss/arcx-anybus.c b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
> index 2ecffa42e561..e245f940a5c4 100644
> --- a/drivers/staging/fieldbus/anybuss/arcx-anybus.c
> +++ b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
> @@ -87,16 +87,12 @@ static int anybuss_reset(struct controller_priv *cd,
>  
>  static void export_reset_0(struct device *dev, bool assert)
>  {
> -	struct controller_priv *cd = dev_get_drvdata(dev);
> -
> -	anybuss_reset(cd, 0, assert);
> +	anybuss_reset(dev_get_drvdata(dev), 0, assert);
>  }

While your patch is "correct", it's not the nicest thing.  The way the
code looks today is to make it obvious we are passing a pointer to a
struct controller_priv() into anybuss_reset().  But with your change, it
looks like we are passing any random void pointer to it.

So I'd prefer the original code please.

Also, you forgot to cc: Sven on this patch, please always use the output
of scripts/get_maintainer.pl.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
