Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2617C90D99
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Aug 2019 09:00:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0A3112000E;
	Sat, 17 Aug 2019 07:00:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5MmL2r33ZI55; Sat, 17 Aug 2019 07:00:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 37C9F20355;
	Sat, 17 Aug 2019 07:00:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 24D751BF5E9
 for <devel@linuxdriverproject.org>; Sat, 17 Aug 2019 07:00:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 228CA85B9A
 for <devel@linuxdriverproject.org>; Sat, 17 Aug 2019 07:00:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CyzVh6Q4Z9Hh for <devel@linuxdriverproject.org>;
 Sat, 17 Aug 2019 07:00:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F259A85A7D
 for <devel@driverdev.osuosl.org>; Sat, 17 Aug 2019 07:00:39 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 47B04205ED;
 Sat, 17 Aug 2019 07:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566025239;
 bh=OStIBI1ZJgY+MM6yqEMNY8tMtf83IPMpNpoDqAi3sZg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u63HIs2LdbriCOqVZmnjF64QGCCIhSoRqvi210Q8STnuSP+hBpSrfitluwAFEQyoS
 4U/FTTBEER9ewor79jzOF/IGIXIJ0l8ZgtehymEM4sztfl1utFG2sD+Y6ovRmgSozy
 01AUDiYQeiwXsCro1Gqmx8INhhkYcz9SoikVl6cE=
Date: Sat, 17 Aug 2019 09:00:37 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Matthew Hanzelik <matthew.hanzelik@gmail.com>
Subject: Re: [PATCH] Staging: speakup: spk_types: fixed an unnamed parameter
 style issue
Message-ID: <20190817070037.GA14489@kroah.com>
References: <20190817065426.2090-1-matthew.hanzelik@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190817065426.2090-1-matthew.hanzelik@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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

On Sat, Aug 17, 2019 at 02:54:26AM -0400, Matthew Hanzelik wrote:
> Fixed an unnamed parameter style issue.
> 
> Signed-off-by: Matthew Hanzelik <matthew.hanzelik@gmail.com>
> ---
>  drivers/staging/speakup/spk_types.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/speakup/spk_types.h b/drivers/staging/speakup/spk_types.h
> index a2fc72c29894..afa64eb9afb4 100644
> --- a/drivers/staging/speakup/spk_types.h
> +++ b/drivers/staging/speakup/spk_types.h
> @@ -189,7 +189,7 @@ struct spk_synth {
>  	void (*flush)(struct spk_synth *synth);
>  	int (*is_alive)(struct spk_synth *synth);
>  	int (*synth_adjust)(struct st_var_header *var);
> -	void (*read_buff_add)(u_char);
> +	void (*read_buff_add)(u_char *add);

You just changed the function prototype from taking a single character,
to taking a pointer to a character, are you sure this is correct?

No other build warnings with this patch enabled?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
