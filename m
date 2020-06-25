Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 329E920A0D2
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jun 2020 16:27:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1C04187E32;
	Thu, 25 Jun 2020 14:27:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hqH2fOsaGBhz; Thu, 25 Jun 2020 14:27:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A6D7187E1B;
	Thu, 25 Jun 2020 14:27:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6609B1BF41C
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 14:27:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 62B75867BD
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 14:27:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2JBMYqinMRXJ for <devel@linuxdriverproject.org>;
 Thu, 25 Jun 2020 14:27:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EA8538612B
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 14:27:47 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A7FA20702;
 Thu, 25 Jun 2020 14:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593095267;
 bh=cr3WEt66nyDg5eml64jzohkbvpLpVnlw9coNcA+bKXQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g/Ml6x/6xvUpbSGotlmRUF1f0Ok7fYRqeYEEQY8EkBmDti+o451gX7/6ouj9BhzpP
 JYlySFVwb8Qua8sksYy3DyyPdXiYkMSmDsxandNTf75ISWmjnJZFRCjGWVrL5zEENB
 cxQ2/lrsPiW1BtdlClT1uFznx2CuvgkS3jHV6ZZw=
Date: Thu, 25 Jun 2020 16:27:43 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Garrit Franke <garritfranke@gmail.com>
Subject: Re: [PATCH v2 2/2] staging: vc04_services: vchiq_arm: Remove
 unnecessary parens
Message-ID: <20200625142743.GA3846175@kroah.com>
References: <20200619080121.GV4151@kadam>
 <20200624182035.16740-3-garritfranke@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200624182035.16740-3-garritfranke@gmail.com>
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
Cc: devel@driverdev.osuosl.org, nsaenzjulienne@suse.de,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jun 24, 2020 at 08:20:35PM +0200, Garrit Franke wrote:
> Signed-off-by: Garrit Franke <garritfranke@gmail.com>
> 
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> index 5a6d2bd59ec0..e0027148963e 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> @@ -533,7 +533,7 @@ request_poll(struct vchiq_state *state, struct vchiq_service *service,
>  				service->localport>>5]);
>  		} while (atomic_cmpxchg(
>  			&state->poll_services[service->localport>>5],
> -			value, value | BIT((service->localport & 0x1f)))
> +			value, value | BIT(service->localport & 0x1f))
>  			!= value);
>  	}
>  
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

- You did not specify a description of why the patch is needed, or
  possibly, any description at all, in the email body.  Please read the
  section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what is needed in order to
  properly describe the change.


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
