Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AF850270
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 08:38:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6BED3870AD;
	Mon, 24 Jun 2019 06:38:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eWeXgOe1XqDQ; Mon, 24 Jun 2019 06:38:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DCD6286DEA;
	Mon, 24 Jun 2019 06:38:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 45D1E1BF419
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 06:38:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3D5C584D74
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 06:38:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aFgcZhn8CxcO for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 06:38:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.osadl.at (178.115.242.59.static.drei.at [178.115.242.59])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1E51E84CEB
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 06:38:34 +0000 (UTC)
Received: by mail.osadl.at (Postfix, from userid 1001)
 id C37BB5C02F0; Mon, 24 Jun 2019 08:37:18 +0200 (CEST)
Date: Mon, 24 Jun 2019 08:37:18 +0200
From: Nicholas Mc Guire <der.herr@hofr.at>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH] staging: bcm2835-camera: Avoid apotential sleep while
 holding a spin_lock
Message-ID: <20190624063718.GD31913@osadl.at>
References: <20190624053351.5217-1-christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624053351.5217-1-christophe.jaillet@wanadoo.fr>
User-Agent: Mutt/1.5.23 (2014-03-12)
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
Cc: stefan.wahren@i2se.com, devel@driverdev.osuosl.org, f.fainelli@gmail.com,
 sbranden@broadcom.com, tuomas.tynkkynen@iki.fi, rjui@broadcom.com,
 hofrat@osadl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, tobias.buettner@fau.de, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, inf.braun@fau.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 24, 2019 at 07:33:51AM +0200, Christophe JAILLET wrote:
> Do not allocate memory with GFP_KERNEL when holding a spin_lock, it may
> sleep. Use GFP_NOWAIT instead.
>

checking for this in the rest of the kernel with a cocci spatch
<snip>
virtual report

@nonatomic@
position p;
identifier var;
@@

  spin_lock(...)
  ... when != spin_unlock(...)
* var = idr_alloc@p(...,GFP_KERNEL);
  ... when != spin_unlock(...)
  spin_unlock(...);
<snip>
this seems to be the only instance of this specific problem.

> Fixes: 950fd867c635 ("staging: bcm2835-camera: Replace open-coded idr with a struct idr.")

The GFP_KERNEL actually was there befor this patch so not sure if this Fixes
ref is correct - I think the GFP_KERNEL was introduced in:
4e6bafdfb9f3 ("staging: bcm2835_camera: Use a mapping table for context field of mmal_msg_header")

> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Reviewed-by: Nicholas Mc Guire <hofrat@osadl.org>

> ---
>  drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> index 16af735af5c3..438d548c6e24 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> @@ -186,7 +186,7 @@ get_msg_context(struct vchiq_mmal_instance *instance)
>  	 */
>  	spin_lock(&instance->context_map_lock);
>  	handle = idr_alloc(&instance->context_map, msg_context,
> -			   0, 0, GFP_KERNEL);
> +			   0, 0, GFP_NOWAIT);
>  	spin_unlock(&instance->context_map_lock);
>  
>  	if (handle < 0) {
> -- 
> 2.20.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
