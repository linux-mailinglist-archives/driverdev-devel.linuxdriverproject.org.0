Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1327D2915F
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 08:56:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F3E4488B3D;
	Fri, 24 May 2019 06:56:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dAhBpSyJbc8e; Fri, 24 May 2019 06:56:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5DE6788B38;
	Fri, 24 May 2019 06:56:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E244F1BF3C6
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 06:56:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C39DE22D55
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 06:56:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J7qh628fSR58 for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 06:56:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 2CA2822CC6
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 06:56:43 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 73F942175B;
 Fri, 24 May 2019 06:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558681002;
 bh=FA4M8vJJFV2aQxmdFWUvZdPWcG4pmFsPpZkZ3k4P+c8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WdAY8qSUf9wR5mTiV6JI7bDoMIXPV/2VLlmW7AvuaBsR6OmgbLBROXyhhIJKEw/wh
 B7fOp8gZmigTXnq8l0bOgtBnameH2PU+4FhXjm5kPB4ixqh1xya7Nrelq6rxa8z94Y
 o3mb7Fhuwic1o3BEYkj2cmf2HrD+u8hekXT5y8Co=
Date: Fri, 24 May 2019 08:56:40 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] staging: fieldbus: anybuss: Remove variables
Message-ID: <20190524065640.GD3600@kroah.com>
References: <20190524060328.3827-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524060328.3827-1-nishkadg.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, thesven73@gmail.com,
 linux-kernel@vger.kernel.org, hofrat@osadl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 24, 2019 at 11:33:28AM +0530, Nishka Dasgupta wrote:
> The local variable cd, used in multiple functions, is immediately passed
> to another function call, whose result is returned. As that is the only
> use of cd, it can be replaced with its variable.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/staging/fieldbus/anybuss/host.c | 18 ++++++------------
>  1 file changed, 6 insertions(+), 12 deletions(-)

Your subject line might say:
	"remove unneeded temporary variables"
or something like that?

> 
> diff --git a/drivers/staging/fieldbus/anybuss/host.c b/drivers/staging/fieldbus/anybuss/host.c
> index f69dc4930457..9679cd0b737b 100644
> --- a/drivers/staging/fieldbus/anybuss/host.c
> +++ b/drivers/staging/fieldbus/anybuss/host.c
> @@ -1046,10 +1046,8 @@ EXPORT_SYMBOL_GPL(anybuss_start_init);
>  
>  int anybuss_finish_init(struct anybuss_client *client)
>  {
> -	struct anybuss_host *cd = client->host;
> -
> -	return _anybus_mbox_cmd(cd, CMD_END_INIT, false, NULL, 0,
> -					NULL, 0, NULL, 0);
> +	return _anybus_mbox_cmd(client->host, CMD_END_INIT, false, NULL, 0,
> +				NULL, 0, NULL, 0);
>  }

While a potential change, this really doesn't help anything be it object
code size, or make anything easier to understand.

Again, don't change things just because a tool said it could be changed,
think about what you are doing and why it would, or would not, be
something that is worth doing.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
