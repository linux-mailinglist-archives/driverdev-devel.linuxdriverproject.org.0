Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCCE35F09
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 16:20:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DFFA0872AA;
	Wed,  5 Jun 2019 14:20:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zo75jTrPJxQW; Wed,  5 Jun 2019 14:20:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AC34286F9F;
	Wed,  5 Jun 2019 14:20:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E16C1BF358
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 14:20:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5B6D0860CF
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 14:20:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M7j9bjnHWSXX for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 14:20:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BE9268480D
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 14:20:37 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 26DEC20866;
 Wed,  5 Jun 2019 14:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559744437;
 bh=YJFidk1qyJXgXZTyC/dTIMXQADIcivIer6UuGe9JjpM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zbLd49e+BEyXdJ+c7KiopZLS7bK9yg9A2KM+0FiFY41iSSwyu87sNZ/SUaAac9tjR
 NasvIBbrnm5oc6ncTm37edz8CNuB1fOojYHgTQYIm+tv6tarUVzI0KFSSnrC+WOdre
 3o/aoLWgUYuZGTkXJMCbpx4gkH4ZKJQulhgL90sg=
Date: Wed, 5 Jun 2019 16:20:34 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Valerio Genovese <valerio.click@gmail.com>
Subject: Re: [PATCH] staging: isdn: hysdn: fix symbol 'hysdn_proc_entry' was
 not declared.
Message-ID: <20190605142034.GA8803@kroah.com>
References: <20190605135349.6840-1-valerio.click@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605135349.6840-1-valerio.click@gmail.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org, isdn@linux-pingi.de,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jun 05, 2019 at 03:53:49PM +0200, Valerio Genovese wrote:
> This was reported by sparse:
> drivers/staging/isdn/hysdn/hysdn_procconf.c:352:23: warning: symbol 'hysdn_proc_entry' was not declared. Should it be static?
> 
> Signed-off-by: Valerio Genovese <valerio.click@gmail.com>
> ---
>  drivers/staging/isdn/hysdn/hysdn_defs.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/isdn/hysdn/hysdn_defs.h b/drivers/staging/isdn/hysdn/hysdn_defs.h
> index cdac46a21692..a651686b1787 100644
> --- a/drivers/staging/isdn/hysdn/hysdn_defs.h
> +++ b/drivers/staging/isdn/hysdn/hysdn_defs.h
> @@ -221,7 +221,7 @@ typedef struct hycapictrl_info hycapictrl_info;
>  /* exported vars */
>  /*****************/
>  extern hysdn_card *card_root;	/* pointer to first card */
> -
> +extern struct proc_dir_entry *hysdn_proc_entry; /* hysdn subdir in /proc/net
>  
>  
>  /*************************/

Shouldn't you also remove it from the place it was devlared as extern?

Also, this is code on its way out of the kernel, not a big deal to leave
it alone for now.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
