Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5C13A4EF
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Jun 2019 12:59:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DEEC92214F;
	Sun,  9 Jun 2019 10:59:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ER13joVJB+MI; Sun,  9 Jun 2019 10:59:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DA45F2000E;
	Sun,  9 Jun 2019 10:59:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AD60E1BF288
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 10:59:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AA19920013
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 10:59:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xp99UOWOLc4a for <devel@linuxdriverproject.org>;
 Sun,  9 Jun 2019 10:59:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 2F0D92000E
 for <devel@driverdev.osuosl.org>; Sun,  9 Jun 2019 10:59:34 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7EAB02083D;
 Sun,  9 Jun 2019 10:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560077974;
 bh=cSnrY0iwjVJXZwlEA+2n8J0j0S3Bx09YY45oP76Myok=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VCJF76xSiUB32mel7TvguvVDFQqBgoIcn2OFACK2R2d0l4IIjNsxL6nGAj7hPDzgb
 Y+SGYsTo6jAbm6PI/tOljchkwivb0T3coyV6q86U/c97BodWtH+mzuFIADssf8sQ3+
 7k3NvE84Vc9sFPeUEw37b1ZKKFwPBRyyUPO630Ss=
Date: Sun, 9 Jun 2019 12:59:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Valerio Genovese <valerio.click@gmail.com>
Subject: Re: [PATCH] staging: isdn: hysdn: fix symbol 'hysdn_proc_entry' was
 not declared.
Message-ID: <20190609105931.GB30671@kroah.com>
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

I can not take drivers/staging/isdn patches until 5.3-rc1.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
