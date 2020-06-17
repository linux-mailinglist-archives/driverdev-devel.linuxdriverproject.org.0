Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 514081FC5D8
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jun 2020 07:55:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E6FBB21561;
	Wed, 17 Jun 2020 05:55:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TtF4yx8gG00U; Wed, 17 Jun 2020 05:55:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 58F2820403;
	Wed, 17 Jun 2020 05:55:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C3E991BF844
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 05:54:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C0BA5883AF
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 05:54:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wa7K6cNqeMrg for <devel@linuxdriverproject.org>;
 Wed, 17 Jun 2020 05:54:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8E26688398
 for <devel@driverdev.osuosl.org>; Wed, 17 Jun 2020 05:54:58 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C1F682073E;
 Wed, 17 Jun 2020 05:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592373298;
 bh=CZ5HCt+0GUicwcyUHaA/NsM5WdKI29lnhh1xbvG3IC8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g0Sb2PPmzBlg03Sx0ki76X7WpR+ZAP+lfkzqhUZwSCcUQnZABPGmwfJLNs3sZaOWJ
 Mhknm/iwa6Ga34gkVOWHQK65vwqLgocpColXC+cvLZvEW9tAqeSES2yiQlqtbdnNnB
 9XTU3uKKIIBXVSIZsKYQ61M3Ic2whfYDaEMrKX10=
Date: Wed, 17 Jun 2020 07:54:55 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: dan love <danlovecomputing@gmail.com>
Subject: Re: [PATCH] Fixed styling issues by adding blank line after
 definitions.
Message-ID: <20200617055455.GA25631@kroah.com>
References: <20200616202658.4844-1-danlove99@hotmail.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616202658.4844-1-danlove99@hotmail.co.uk>
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
Cc: devel@driverdev.osuosl.org, Xin Tan <tanxin.ctf@gmail.com>,
 Xiyu Yang <xiyuyang19@fudan.edu.cn>, linux-kernel@vger.kernel.org,
 danlove99@hotmail.co.uk, abbotti@mev.co.uk, Al Viro <viro@zeniv.linux.org.uk>,
 Michel Lespinasse <walken@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 16, 2020 at 09:26:55PM +0100, dan love wrote:
> Signed-off-by: dan love <danlove99@hotmail.co.uk>
> ---
>  drivers/staging/comedi/comedi_fops.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> index e85a99b68f31..3f70e5dfac39 100644
> --- a/drivers/staging/comedi/comedi_fops.c
> +++ b/drivers/staging/comedi/comedi_fops.c
> @@ -2169,6 +2169,7 @@ static long comedi_unlocked_ioctl(struct file *file, unsigned int cmd,
>  		break;
>  	case COMEDI_CHANINFO: {
>  		struct comedi_chaninfo it;
> +
>  		if (copy_from_user(&it, (void __user *)arg, sizeof(it)))
>  			rc = -EFAULT;
>  		else
> @@ -2177,6 +2178,7 @@ static long comedi_unlocked_ioctl(struct file *file, unsigned int cmd,
>  	}
>  	case COMEDI_RANGEINFO: {
>  		struct comedi_rangeinfo it;
> +
>  		if (copy_from_user(&it, (void __user *)arg, sizeof(it)))
>  			rc = -EFAULT;
>  		else
> @@ -2249,6 +2251,7 @@ static long comedi_unlocked_ioctl(struct file *file, unsigned int cmd,
>  	}
>  	case COMEDI_INSN: {
>  		struct comedi_insn insn;
> +
>  		if (copy_from_user(&insn, (void __user *)arg, sizeof(insn)))
>  			rc = -EFAULT;
>  		else
> -- 
> 2.17.1
> 
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

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

- You did not specify a description of why the patch is needed, or
  possibly, any description at all, in the email body.  Please read the
  section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what is needed in order to
  properly describe the change.

- You did not write a descriptive Subject: for the patch, allowing Greg,
  and everyone else, to know what this patch is all about.  Please read
  the section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what a proper Subject: line should
  look like.

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
