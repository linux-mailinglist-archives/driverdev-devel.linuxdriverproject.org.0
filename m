Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 166F9278A57
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 16:07:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8C2342E16F;
	Fri, 25 Sep 2020 14:07:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o2Q3NqD-YDw5; Fri, 25 Sep 2020 14:07:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 66D892E16B;
	Fri, 25 Sep 2020 14:07:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B38A81BF304
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 14:07:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B009C87265
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 14:07:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vy7TbTbPkd8G for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 14:07:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E5C5387245
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 14:07:45 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id k8so3319146pfk.2
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 07:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=qbZ40RmWzDZY2MN4Ork5wDlaVNRCgcx/fsF2/0Lay7w=;
 b=hrGdvs0CwkvH9TIdzfqJJ6SdX4gHZiCDuHDDugpm8dZYotgRIvz0/IDNki4hl8LrYq
 BHMXNzumARfeOCbziCRJUiBaTGTL1fxKFMBbQKVUrntrTrBf1djN21qVkUSFY3wq376d
 ZpM1xSz3np+9OkAUPs5NGQVqWVi8wkn/dtLF89FP+7OlOFMzTYkNWI6gLS0a2jqtOlFT
 hmSMoegXYr/ujRwWRjtRiwxix6mKLeiglp6OZnVfwteh8cqCr0RJkcWr2kT1080mEa6t
 sXAolttfuXYzkvpneiUcIYTv7cOznjV7v90f/bl7syUc5X20OCVXlDjdeR0frYtARBlq
 FgSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qbZ40RmWzDZY2MN4Ork5wDlaVNRCgcx/fsF2/0Lay7w=;
 b=aajEzeFNuouJXy3D09WbB4Mt9cqQcdviqaPA+jbFGMU6Etj41pqv0UR82INUcJX7xN
 enTayBWvb7bqDTtUXVXcychFWJI6O1DET84U+Nye+31YF9llBrn8YFLxA0U90QJByXKA
 arcQs8877gByYQW33kY50xn9HCgKeToF4mj5wRntHCRTrSbXX3h8hl/MZigJUMvzba/y
 EtuA77nbnAmceLrp1OmBFwLK5zziwdOWGL75B6yec2Ys7smLFNBOfDHL5bxS++tI9Oel
 A0oAPr3AMgw69QYzG0Oosc947NONDMeYK+iSwdy9O6hFKRPzukwJYFMQcPk0aH2obRHt
 0gUA==
X-Gm-Message-State: AOAM530sDda5668LSsNIksnXm6N5DBNQUrIMpqOFb3jWnGkejjvh47rS
 C6tp+WWHgZbuF1JApE5e9aA=
X-Google-Smtp-Source: ABdhPJx/+87hxTSMWz8FG9ToLtNr3OV0qTkSvt3J1vb6yjRGK9J40ML8dZ5hZ0epLMgn3QvRL86tAA==
X-Received: by 2002:a63:f90d:: with SMTP id h13mr172844pgi.227.1601042865340; 
 Fri, 25 Sep 2020 07:07:45 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id y7sm2396925pgk.73.2020.09.25.07.07.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 07:07:44 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Fri, 25 Sep 2020 22:07:32 +0800
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@linaro.org>
Subject: Re: [PATCH 3/3] [PATCH] staging: greybus: __u8 is sufficient for
 snd_ctl_elem_type_t and snd_ctl_elem_iface_t
Message-ID: <20200925140732.lqkxa3rb3beg5lm3@Rk>
References: <20200924102039.43895-1-coiby.xu@gmail.com>
 <20200924102039.43895-3-coiby.xu@gmail.com>
 <20200924110057.GA319713@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200924110057.GA319713@kroah.com>
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
 Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Mark Greer <mgreer@animalcreek.com>,
 "moderated list:GREYBUS SUBSYSTEM" <greybus-dev@lists.linaro.org>,
 Johan Hovold <johan@kernel.org>, Jaroslav Kysela <perex@perex.cz>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 24, 2020 at 01:00:57PM +0200, Greg Kroah-Hartman wrote:
>On Thu, Sep 24, 2020 at 06:20:39PM +0800, Coiby Xu wrote:
>> Use __8 to replace int and remove the unnecessary __bitwise type attribute.
>>
>> Found by sparse,
>>
>> $ make C=2 drivers/staging/greybus/
>> drivers/staging/greybus/audio_topology.c:185:24: warning: cast to restricted snd_ctl_elem_type_t
>> drivers/staging/greybus/audio_topology.c:679:14: warning: restricted snd_ctl_elem_iface_t degrades to integer
>> drivers/staging/greybus/audio_topology.c:906:14: warning: restricted snd_ctl_elem_iface_t degrades to integer
>>
>> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
>> ---
>>  drivers/staging/greybus/audio_topology.c | 2 +-
>>  include/uapi/sound/asound.h              | 4 ++--
>>  2 files changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
>> index 56bf1a4f95ad..f6023ff390c2 100644
>> --- a/drivers/staging/greybus/audio_topology.c
>> +++ b/drivers/staging/greybus/audio_topology.c
>> @@ -182,7 +182,7 @@ static int gbcodec_mixer_ctl_info(struct snd_kcontrol *kcontrol,
>>  	/* update uinfo */
>>  	uinfo->access = data->access;
>>  	uinfo->count = data->vcount;
>> -	uinfo->type = (snd_ctl_elem_type_t)info->type;
>> +	uinfo->type = info->type;
>>
>>  	switch (info->type) {
>>  	case GB_AUDIO_CTL_ELEM_TYPE_BOOLEAN:
>> diff --git a/include/uapi/sound/asound.h b/include/uapi/sound/asound.h
>> index 535a7229e1d9..8e71a95644ab 100644
>> --- a/include/uapi/sound/asound.h
>> +++ b/include/uapi/sound/asound.h
>> @@ -950,7 +950,7 @@ struct snd_ctl_card_info {
>>  	unsigned char components[128];	/* card components / fine identification, delimited with one space (AC97 etc..) */
>>  };
>>
>> -typedef int __bitwise snd_ctl_elem_type_t;
>> +typedef __u8 snd_ctl_elem_type_t;
>>  #define	SNDRV_CTL_ELEM_TYPE_NONE	((__force snd_ctl_elem_type_t) 0) /* invalid */
>>  #define	SNDRV_CTL_ELEM_TYPE_BOOLEAN	((__force snd_ctl_elem_type_t) 1) /* boolean type */
>>  #define	SNDRV_CTL_ELEM_TYPE_INTEGER	((__force snd_ctl_elem_type_t) 2) /* integer type */
>> @@ -960,7 +960,7 @@ typedef int __bitwise snd_ctl_elem_type_t;
>>  #define	SNDRV_CTL_ELEM_TYPE_INTEGER64	((__force snd_ctl_elem_type_t) 6) /* 64-bit integer type */
>>  #define	SNDRV_CTL_ELEM_TYPE_LAST	SNDRV_CTL_ELEM_TYPE_INTEGER64
>>
>> -typedef int __bitwise snd_ctl_elem_iface_t;
>> +typedef __u8 snd_ctl_elem_iface_t;
>>  #define	SNDRV_CTL_ELEM_IFACE_CARD	((__force snd_ctl_elem_iface_t) 0) /* global control */
>>  #define	SNDRV_CTL_ELEM_IFACE_HWDEP	((__force snd_ctl_elem_iface_t) 1) /* hardware dependent device */
>>  #define	SNDRV_CTL_ELEM_IFACE_MIXER	((__force snd_ctl_elem_iface_t) 2) /* virtual mixer device */
>
>I can't take a uapi sound header file patch along with a driver change,
>these need to be independant.

Thank you and Alex for reminding me this is a change of public header!
>
>And this is a userspace api, you just changed the size of an externally
>facing variable, are you _SURE_ that is ok to do?

The reasons I make this change are, 1) using int to represent 7 enumeration
values seems to be overkill; 2) using one type could avoid worries
about byte order.

I examine one userspace example (libalsa-intf/alsa_mixer.c [1]). This
change won't cause compiling breakage. But I don't the experience to
imagine any other bad consequence.

Another way to avoid userspace API change is to let
"struct gb_audio_ctl_elem_info" use snd_ctl_elem_iface_t type which may
be more elegant than using "__force" as suggested by Alex,

$ git diff
diff --git a/include/linux/greybus/greybus_protocols.h b/include/linux/greybus/greybus_protocols.h
index aeb8f9243545..7f6753ec7ef7 100644
--- a/include/linux/greybus/greybus_protocols.h
+++ b/include/linux/greybus/greybus_protocols.h
@@ -8,6 +8,7 @@
  #define __GREYBUS_PROTOCOLS_H

  #include <linux/types.h>
+#include <sound/asound.h>

  /* Fixed IDs for control/svc protocols */

@@ -1997,7 +1998,7 @@ struct gb_audio_enumerated {
  } __packed;

  struct gb_audio_ctl_elem_info { /* See snd_ctl_elem_info in Linux source */
-       __u8            type;           /* GB_AUDIO_CTL_ELEM_TYPE_* */
+       snd_ctl_elem_type_t             type;           /* GB_AUDIO_CTL_ELEM_TYPE_* */
         __le16          dimen[4];
         union {
                 struct gb_audio_integer         integer

My only concern is if greybus authors have any special reason to not include
sound/asound.h in the first place and re-define things like SNDRV_CTL_ELEM_TYPE_*,

/* See SNDRV_CTL_ELEM_TYPE_* in Linux source */
#define GB_AUDIO_CTL_ELEM_TYPE_BOOLEAN		0x01
#define GB_AUDIO_CTL_ELEM_TYPE_INTEGER		0x02

/* See SNDRV_CTL_ELEM_IFACE_* in Linux source */
#define GB_AUDIO_CTL_ELEM_IFACE_CARD		0x00
...

/* SNDRV_CTL_ELEM_ACCESS_* in Linux source */
#define GB_AUDIO_ACCESS_READ			BIT(0)
...

[1] https://gitlab.com/Codeaurora/platform_hardware_qcom_audio/-/blob/aee6032826ec7c8b6edda404422fda0ef40ec2db/libalsa-intf/alsa_mixer.c
  alsa_mixer.c
>
>thanks,
>
>greg k-h

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
