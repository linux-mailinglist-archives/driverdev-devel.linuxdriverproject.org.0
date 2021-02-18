Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7B831E80F
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 10:39:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6A11386DFF;
	Thu, 18 Feb 2021 09:39:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BJ4aEJ4bkGSc; Thu, 18 Feb 2021 09:39:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5225C86DF3;
	Thu, 18 Feb 2021 09:39:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 910A91BF3C5
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 09:39:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8D9E9872F7
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 09:39:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vWS3ldVVMHls for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 09:39:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F043C872F4
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 09:39:23 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id C2F4964D9C;
 Thu, 18 Feb 2021 09:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613641163;
 bh=nAUhkT0wUd/wJ/k3Y88bx0GkXeajCCVI6lcV/Kg1tRE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=b2TM2VZQsgF9iPVLT7FlE/izkIBxsUYR4XsU+r6aaHPucz9ycskc+TLA8AbOOyh23
 ISl9yDUC7L1FY3dTpSUZRrNsdsogDkjb3XqHQOB/KwQIolsMB4UHUnRu/cgfVtIMs2
 8+qHhr/WdHp+j53EXyedJ9zFdcWXFsA7B913mwls=
Date: Thu, 18 Feb 2021 10:39:20 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Pritthijit Nath <pritthijit.nath@icloud.com>
Subject: Re: [PATCH] staging: vc04_services: Fixed address type mismatch in
 vchiq_arm.c
Message-ID: <YC41yC7+TYXaD/R+@kroah.com>
References: <20210218091015.92467-1-pritthijit.nath@icloud.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210218091015.92467-1-pritthijit.nath@icloud.com>
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
Cc: devel@driverdev.osuosl.org, arnd@arndb.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, nsaenzjulienne@suse.de,
 amarjargal16@gmail.com, phil@raspberrypi.com, dan.carpenter@oracle.com,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 18, 2021 at 02:40:15PM +0530, Pritthijit Nath wrote:
> This change fixes a sparse address type mismatch warning "incorrect type
> in assignment (different address spaces)".
> 
> Signed-off-by: Pritthijit Nath <pritthijit.nath@icloud.com>
> ---
>  .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c   | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index 59e45dc03a97..3c715b926a57 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -1214,11 +1214,7 @@ static int vchiq_ioc_await_completion(struct vchiq_instance *instance,
>  		    !instance->use_close_delivered)
>  			unlock_service(service);
>  
> -		/*
> -		 * FIXME: address space mismatch, does bulk_userdata
> -		 * actually point to user or kernel memory?
> -		 */
> -		user_completion.bulk_userdata = completion->bulk_userdata;
> +		user_completion.bulk_userdata = (void __user *)completion->bulk_userdata;

So, this pointer really is user memory?

How did you determine that?

If so, why isn't this a __user * in the first place?

You can't just paper over the FIXME by doing a cast without doing the
real work here, otherwise someone wouldn't have written the FIXME :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
