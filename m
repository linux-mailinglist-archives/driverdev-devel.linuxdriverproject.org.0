Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 815A1276F34
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Sep 2020 13:00:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3E92620449;
	Thu, 24 Sep 2020 11:00:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fC77ruMNiu7L; Thu, 24 Sep 2020 11:00:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6AE642E104;
	Thu, 24 Sep 2020 11:00:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8883B1BF2C0
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 11:00:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7D01F86B39
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 11:00:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2FqIyn93khOq for <devel@linuxdriverproject.org>;
 Thu, 24 Sep 2020 11:00:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B981E86B21
 for <devel@driverdev.osuosl.org>; Thu, 24 Sep 2020 11:00:41 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 841AA2396E;
 Thu, 24 Sep 2020 11:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600945241;
 bh=RCxHBE9X2KZ+55CTd1qLEdHD5TDMxFbwfTKYkPN3vWM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eHfvx8/gn3Fkn5GSoRdXkJQYcv7QfWRpROlDJ0nfMfOSmiB8l/IGCC6UDmcMy4/hv
 L500XpemRMRcdF7uMH+/qvu2Iti3sDTMt6TMn+InGaA9H8SdU2jAaqSXEfCc1Nw+Ln
 Ozjyf0FnVcgyiLkzEh0eQ8CLgy/rJqEoOEPKSlxM=
Date: Thu, 24 Sep 2020 13:00:57 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH 3/3] [PATCH] staging: greybus: __u8 is sufficient for
 snd_ctl_elem_type_t and snd_ctl_elem_iface_t
Message-ID: <20200924110057.GA319713@kroah.com>
References: <20200924102039.43895-1-coiby.xu@gmail.com>
 <20200924102039.43895-3-coiby.xu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200924102039.43895-3-coiby.xu@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 "moderated list:SOUND" <alsa-devel@alsa-project.org>,
 Alex Elder <elder@kernel.org>, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Mark Greer <mgreer@animalcreek.com>,
 "moderated list:GREYBUS SUBSYSTEM" <greybus-dev@lists.linaro.org>,
 Johan Hovold <johan@kernel.org>, Jaroslav Kysela <perex@perex.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 24, 2020 at 06:20:39PM +0800, Coiby Xu wrote:
> Use __8 to replace int and remove the unnecessary __bitwise type attribute.
> 
> Found by sparse,
> 
> $ make C=2 drivers/staging/greybus/
> drivers/staging/greybus/audio_topology.c:185:24: warning: cast to restricted snd_ctl_elem_type_t
> drivers/staging/greybus/audio_topology.c:679:14: warning: restricted snd_ctl_elem_iface_t degrades to integer
> drivers/staging/greybus/audio_topology.c:906:14: warning: restricted snd_ctl_elem_iface_t degrades to integer
> 
> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
> ---
>  drivers/staging/greybus/audio_topology.c | 2 +-
>  include/uapi/sound/asound.h              | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
> index 56bf1a4f95ad..f6023ff390c2 100644
> --- a/drivers/staging/greybus/audio_topology.c
> +++ b/drivers/staging/greybus/audio_topology.c
> @@ -182,7 +182,7 @@ static int gbcodec_mixer_ctl_info(struct snd_kcontrol *kcontrol,
>  	/* update uinfo */
>  	uinfo->access = data->access;
>  	uinfo->count = data->vcount;
> -	uinfo->type = (snd_ctl_elem_type_t)info->type;
> +	uinfo->type = info->type;
>  
>  	switch (info->type) {
>  	case GB_AUDIO_CTL_ELEM_TYPE_BOOLEAN:
> diff --git a/include/uapi/sound/asound.h b/include/uapi/sound/asound.h
> index 535a7229e1d9..8e71a95644ab 100644
> --- a/include/uapi/sound/asound.h
> +++ b/include/uapi/sound/asound.h
> @@ -950,7 +950,7 @@ struct snd_ctl_card_info {
>  	unsigned char components[128];	/* card components / fine identification, delimited with one space (AC97 etc..) */
>  };
>  
> -typedef int __bitwise snd_ctl_elem_type_t;
> +typedef __u8 snd_ctl_elem_type_t;
>  #define	SNDRV_CTL_ELEM_TYPE_NONE	((__force snd_ctl_elem_type_t) 0) /* invalid */
>  #define	SNDRV_CTL_ELEM_TYPE_BOOLEAN	((__force snd_ctl_elem_type_t) 1) /* boolean type */
>  #define	SNDRV_CTL_ELEM_TYPE_INTEGER	((__force snd_ctl_elem_type_t) 2) /* integer type */
> @@ -960,7 +960,7 @@ typedef int __bitwise snd_ctl_elem_type_t;
>  #define	SNDRV_CTL_ELEM_TYPE_INTEGER64	((__force snd_ctl_elem_type_t) 6) /* 64-bit integer type */
>  #define	SNDRV_CTL_ELEM_TYPE_LAST	SNDRV_CTL_ELEM_TYPE_INTEGER64
>  
> -typedef int __bitwise snd_ctl_elem_iface_t;
> +typedef __u8 snd_ctl_elem_iface_t;
>  #define	SNDRV_CTL_ELEM_IFACE_CARD	((__force snd_ctl_elem_iface_t) 0) /* global control */
>  #define	SNDRV_CTL_ELEM_IFACE_HWDEP	((__force snd_ctl_elem_iface_t) 1) /* hardware dependent device */
>  #define	SNDRV_CTL_ELEM_IFACE_MIXER	((__force snd_ctl_elem_iface_t) 2) /* virtual mixer device */

I can't take a uapi sound header file patch along with a driver change,
these need to be independant.

And this is a userspace api, you just changed the size of an externally
facing variable, are you _SURE_ that is ok to do?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
