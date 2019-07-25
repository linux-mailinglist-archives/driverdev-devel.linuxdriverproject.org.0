Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA91C751BE
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 16:49:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4FBAF863BB;
	Thu, 25 Jul 2019 14:49:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qT7EERSy7zCK; Thu, 25 Jul 2019 14:49:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C8C39863DB;
	Thu, 25 Jul 2019 14:49:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4513B1BF322
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 14:49:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 41BAE8808D
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 14:49:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W11IIeKBOR99 for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 14:49:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BF2F888049
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 14:49:16 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 14462229F9;
 Thu, 25 Jul 2019 14:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564066156;
 bh=w2m48S5hBD6xMNgWFaIjnAEL4n6W/YAcLr/Tg/RrQBY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FS8YW7aAsciXRty67KBaUlHnGuFwkgHhA5ojo57vz4fDy2cMTKVn4PZrg4EjtPIuG
 rlCAZrpvqsB6mFSORv9pg1XxuKHlRA76nriRktFLnpyTSXEMORpvGIqLceW15oD6zj
 F6DQqWrpoeGqmXP3amThU978Ja3e1S4R5Ryuseok=
Date: Thu, 25 Jul 2019 16:49:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] staging: vc04_services: fix used-but-set-variable
 warning
Message-ID: <20190725144913.GC29688@kroah.com>
References: <20190725142716.49276-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725142716.49276-1-yuehaibing@huawei.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 nishkadg.linux@gmail.com, inf.braun@fau.de,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 25, 2019 at 10:27:16PM +0800, YueHaibing wrote:
> use variables 'local_entity_uc' and 'local_uc',
> mute gcc used-but-set-variable warning:
> 
> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c: In function vchiq_release_internal:
> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2827:16: warning:
>  variable local_entity_uc set but not used [-Wunused-but-set-variable]
> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2827:6: warning:
>  variable local_uc set but not used [-Wunused-but-set-variable]
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index cc4383d..04e6427 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -2861,15 +2861,13 @@ vchiq_release_internal(struct vchiq_state *state, struct vchiq_service *service)
>  		} else {
>  			vchiq_log_info(vchiq_susp_log_level,
>  				"%s %s count %d, state count %d - suspending",
> -				__func__, entity, *entity_uc,
> -				arm_state->videocore_use_count);
> +				__func__, entity, local_entity_uc, local_uc);
>  			vchiq_arm_vcsuspend(state);
>  		}
>  	} else
>  		vchiq_log_trace(vchiq_susp_log_level,
>  			"%s %s count %d, state count %d",
> -			__func__, entity, *entity_uc,
> -			arm_state->videocore_use_count);
> +			__func__, entity, local_entity_uc, local_uc);

Are you sure this is the correct way to solve this?

Why not just remove the local variables instead, as obviously they are
not being used.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
