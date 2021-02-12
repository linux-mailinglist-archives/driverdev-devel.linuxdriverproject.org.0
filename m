Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E250D319C44
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 11:03:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CD8B6F66A
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 10:03:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HbBNKlyU01MN for <lists+driverdev-devel@lfdr.de>;
	Fri, 12 Feb 2021 10:03:28 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id CE5F86F654; Fri, 12 Feb 2021 10:03:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC7D76F5CE;
	Fri, 12 Feb 2021 10:03:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0221A1BF334
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 10:02:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F32C786A5D
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 10:02:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kfja4JhkxWqJ for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 10:02:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7A0B786A59
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 10:02:55 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BD0C464E6B;
 Fri, 12 Feb 2021 10:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613124175;
 bh=fWVq8k8RFQBMENGPdSVHmwC5EnHdxReFRfSG9FAZbsw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VdT6hoQFVFdL97sGhbqS92xz1H0jA9mbFRs536tQn5jrrZ+QruTR7DGTPzpuXHUPH
 SdrFqKSHPLqjpenJ5GVrQq8RGO/R/8yZSRGv+/wAKqoCYCVYfpIQlo9WyAvQMC00r7
 QuKQw453pNxGUXurKkSinXEls8quW+RMPVF8OE84=
Date: Fri, 12 Feb 2021 11:02:52 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Pritthijit Nath <pritthijit.nath@icloud.com>
Subject: Re: [PATCH 2/2] staging: greybus: Fixed a misspelling in hid.c
Message-ID: <YCZSTJuDiPGaQ1yV@kroah.com>
References: <20210212095008.11741-1-pritthijit.nath@icloud.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210212095008.11741-1-pritthijit.nath@icloud.com>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, vireshk@kernel.org,
 johan@kernel.org, linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 12, 2021 at 03:20:08PM +0530, Pritthijit Nath wrote:
> Fixed the spelling of 'transfered' to 'transferred'.
> 
> Signed-off-by: Pritthijit Nath <pritthijit.nath@icloud.com>
> ---
>  Fixed the typo in the patch which was meant to fix that very typo.
>  Really sorry for last time.
>  Hope this does not have any other typo.
> 
>  drivers/staging/greybus/hid.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/hid.c b/drivers/staging/greybus/hid.c
> index a56c3fb5d35a..adb91286803a 100644
> --- a/drivers/staging/greybus/hid.c
> +++ b/drivers/staging/greybus/hid.c
> @@ -254,7 +254,7 @@ static int __gb_hid_output_raw_report(struct hid_device *hid, __u8 *buf,
>  
>  	ret = gb_hid_set_report(ghid, report_type, report_id, buf, len);
>  	if (report_id && ret >= 0)
> -		ret++; /* add report_id to the number of transfered bytes */
> +		ret++; /* add report_id to the number of transferred bytes */
>  
>  	return 0;
>  }
> -- 
> 2.25.1
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

- This looks like a new version of a previously submitted patch, but you
  did not list below the --- line any changes from the previous version,
  or properly version the subject line of your patch.  Please read the
  section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what needs to be done here to
  properly describe this.

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
