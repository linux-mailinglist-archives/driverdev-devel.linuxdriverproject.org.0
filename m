Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5398F31952B
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 22:31:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EDE3787390;
	Thu, 11 Feb 2021 21:31:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vs4ryJorlUVo; Thu, 11 Feb 2021 21:31:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B656987385;
	Thu, 11 Feb 2021 21:31:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6F4341BF390
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 21:31:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6B20B6E922
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 21:31:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hxYMOi0hW1GZ for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 21:31:29 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id BA6816F5FE; Thu, 11 Feb 2021 21:31:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7E2026F5DC
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 21:31:28 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id DE51E64DEA;
 Thu, 11 Feb 2021 21:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613079087;
 bh=aIsuo3YD/N88Yx4c/ywWeUam/kTnR9n5/rvhXdOyAPU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZAavQj13k3DH+DdmtSl48iKOBvayKhpXGmxIoWfk3J7ASWky+96e/mgrNGcnH8SKf
 Kqh47uE3I9BQ1LwZG9iT7WHmoyKXEedIydEgDy3MBaEZLbrQCcqB2AbODicgNFvfTg
 uSzZRCyieCJijEvN4VbJC4bkBZNdJkkSfcIIEXGk=
Date: Thu, 11 Feb 2021 22:31:23 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Pritthijit Nath <pritthijit.nath@icloud.com>
Subject: Re: [PATCH] staging: vt6656: Fixed issue with alignment in rf.c
Message-ID: <YCWiKwTKxvDLcHHP@kroah.com>
References: <20210211212647.7077-1-pritthijit.nath@icloud.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210211212647.7077-1-pritthijit.nath@icloud.com>
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
Cc: tvboxspy@gmail.com, devel@driverdev.osuosl.org, oscar.carter@gmx.com,
 forest@alittletooquiet.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 12, 2021 at 02:56:47AM +0530, Pritthijit Nath wrote:
> This change fixes a checkpatch CHECK style issue for "Alignment should
> match open parenthesis".
> 
> Signed-off-by: Pritthijit Nath <pritthijit.nath@icloud.com>
> ---
>  drivers/staging/vt6656/rf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
> index 5b8da06e3916..bcd4d467e03a 100644
> --- a/drivers/staging/vt6656/rf.c
> +++ b/drivers/staging/vt6656/rf.c
> @@ -687,7 +687,7 @@ static int vnt_rf_set_txpower(struct vnt_private *priv, u8 power,
> 
>  			if (hw_value < ARRAY_SIZE(vt3226d0_lo_current_table)) {
>  				ret = vnt_rf_write_embedded(priv,
> -					vt3226d0_lo_current_table[hw_value]);
> +							    vt3226d0_lo_current_table[hw_value]);
>  				if (ret)
>  					return ret;
>  			}
> --
> 2.25.1


Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- This looks like a new version of a previously submitted patch, but you
  did not list below the --- line any changes from the previous version.
  Please read the section entitled "The canonical patch format" in the
  kernel file, Documentation/SubmittingPatches for what needs to be done
  here to properly describe this.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
