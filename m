Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EECBF33A5DC
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Mar 2021 16:59:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B317C4A254;
	Sun, 14 Mar 2021 15:59:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bla9vQziilKf; Sun, 14 Mar 2021 15:59:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6AD7A44969;
	Sun, 14 Mar 2021 15:59:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C4A31BF41E
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 15:58:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3B7C983C42
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 15:58:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dIuDoZTV9agl for <devel@linuxdriverproject.org>;
 Sun, 14 Mar 2021 15:58:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E9ADA83C2A
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 15:58:57 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 042C564E90;
 Sun, 14 Mar 2021 15:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615737537;
 bh=Sl5zKSz6DCXoZBp5sX4nIbRnrLvpJOkHRmeqZ8B3s2E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0LWcWBI1fKxj5mEoH+7G4P9NuncVrToqkZtkzTMxW0z8ueh4WYzpTZz4L0kQfwAfj
 xegV7QHvPiiDiipNs9MV1KwMJnTZ6f9K1ECLQdnQSFvGxIL5dxhtmbBzqaLnI3HgJs
 m0HpkSnOobgWKiXA3eIUFU+95MJ+pz6HER4fQCMg=
Date: Sun, 14 Mar 2021 16:58:54 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: Re: [PATCH] staging: vt6655: Fix camelcase
Message-ID: <YE4yvuP+oVuXme4j@kroah.com>
References: <20210313183019.368317-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210313183019.368317-1-madhumithabiw@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, rapiz@foxmail.com,
 sbrivio@redhat.com, forest@alittletooquiet.net, briana.oursler@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Mar 13, 2021 at 12:30:19PM -0600, Madhumitha Prabakaran wrote:
> Fix checkpatch.pl - Avoid CamelCase: <byVT3253InitTab_RFMD>
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/vt6655/baseband.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
> index 1aa675241599..d89163299172 100644
> --- a/drivers/staging/vt6655/baseband.c
> +++ b/drivers/staging/vt6655/baseband.c
> @@ -52,7 +52,7 @@
>  /*---------------------  Static Variables  --------------------------*/
>  
>  #define CB_VT3253_INIT_FOR_RFMD 446
> -static const unsigned char byVT3253InitTab_RFMD[CB_VT3253_INIT_FOR_RFMD][2] = {
> +static const unsigned char by_vt3253_init_tab_rfmd[CB_VT3253_INIT_FOR_RFMD][2] = {
>  	{0x00, 0x30},
>  	{0x01, 0x00},
>  	{0x02, 0x00},
> @@ -2002,8 +2002,8 @@ bool bb_vt3253_init(struct vnt_private *priv)
>  		if (by_local_id <= REV_ID_VT3253_A1) {
>  			for (ii = 0; ii < CB_VT3253_INIT_FOR_RFMD; ii++)
>  				result &= bb_write_embedded(priv,
> -					byVT3253InitTab_RFMD[ii][0],
> -					byVT3253InitTab_RFMD[ii][1]);
> +					by_vt3253_init_tab_rfmd[ii][0],
> +					by_vt3253_init_tab_rfmd[ii][1]);
>  
>  		} else {
>  			for (ii = 0; ii < CB_VT3253B0_INIT_FOR_RFMD; ii++)
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
