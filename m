Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB69527970D
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Sep 2020 07:10:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0A528204B8;
	Sat, 26 Sep 2020 05:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qVhEQ-oHXAnQ; Sat, 26 Sep 2020 05:10:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4938720490;
	Sat, 26 Sep 2020 05:10:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BC37A1BF5E0
 for <devel@linuxdriverproject.org>; Sat, 26 Sep 2020 05:10:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B790C86C64
 for <devel@linuxdriverproject.org>; Sat, 26 Sep 2020 05:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yrIHKF8+lBCX for <devel@linuxdriverproject.org>;
 Sat, 26 Sep 2020 05:10:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7917E86C58
 for <devel@driverdev.osuosl.org>; Sat, 26 Sep 2020 05:10:09 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id t18so217820plo.1
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 22:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=xt022cqBI2ZK57zyxOOIE27Q2UzWkMYDwMCiPr4Z6RU=;
 b=Z3uFCKsXqsq/NKVPx3It6LKGNVaEhhCP8W0E4X1eRuEiFLqmZUCn7IeYnYOZjhj5A2
 S//xzCQZ2YaBp7b7NS2KUVaEUU0uNlBBA3bHSQ7x5O8votcIjwv6CTIRSJGtAwyN8aca
 fc6fjwPXu9B2uIZ/iel7XqIQyS8SVwbUilQkrjAKiAa2oqR5HTBu5s684iEMK3UF5p6m
 Ab2bWVJV1+tlGMn3jgzCY8ASKgb0EskvK6WVYNlSXTYuqrnI4k68ycnCSciwIuxu6G9M
 spH57UAk4v6gnOHDFLXLaRkMjDR3V87htbcIUoWlAORDRHihPU/uJLY4Fx+UeIy4xRxS
 MCHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=xt022cqBI2ZK57zyxOOIE27Q2UzWkMYDwMCiPr4Z6RU=;
 b=dlcJrAibXFJWNwVRBpFyNhcVUitJVPfuKpLaaX5hku3albrZ7mtQuHK8JnfiuHDmwS
 ez2jQpzGPa/qgsk3njgQ0irsGHNvRVPVV1hTyPFTdfrasntU2nq7idC4/MropoDHNId2
 UYna0YcPHmvcz78HTw81FUttro4LECnpq1sPS8EVPt0bL8BV81A4XlKotJ09QntIsSwD
 cyd/pTlm6JO0eDwGmCL5SFWPRAu2Pu4r9CYCnOFiK7mMkQPJQyJfCxI9+6nUCvi5V4Ps
 uIn09vKt7iuzWUylqHYudalQJ5VutbPgZIIsXRYr0sp8MmZGRrs1F97rmLEehVLGebt6
 LItw==
X-Gm-Message-State: AOAM5324yrJ3PtnXWfId6jvsyCnctXGoJOa2uqLKIIcnBPg04AfsL8BB
 WVQHkvwkkFm+YaSbFhDtVwc=
X-Google-Smtp-Source: ABdhPJwPjsopCGo4lmqXwnMRo6a0R45YdfOBnanymm9O53rmuoGpVUi19jrv60TmKmZfdDgrXNeXpA==
X-Received: by 2002:a17:90a:1ce:: with SMTP id 14mr781878pjd.209.1601097009008; 
 Fri, 25 Sep 2020 22:10:09 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id m20sm4147306pfa.115.2020.09.25.22.10.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 22:10:08 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Sat, 26 Sep 2020 13:09:58 +0800
To: Alex Elder <elder@linaro.org>
Subject: Re: [PATCH 3/3] [PATCH] staging: greybus: __u8 is sufficient for
 snd_ctl_elem_type_t and snd_ctl_elem_iface_t
Message-ID: <20200926050958.7lz2otowjz2oqnpt@Rk>
References: <20200924102039.43895-1-coiby.xu@gmail.com>
 <20200924102039.43895-3-coiby.xu@gmail.com>
 <20200924110057.GA319713@kroah.com>
 <20200925140732.lqkxa3rb3beg5lm3@Rk>
 <8e613bb6-6093-cb81-3fa1-e6583837c843@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8e613bb6-6093-cb81-3fa1-e6583837c843@linaro.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Takashi Iwai <tiwai@suse.com>,
 Mark Greer <mgreer@animalcreek.com>,
 "moderated list:GREYBUS SUBSYSTEM" <greybus-dev@lists.linaro.org>,
 Johan Hovold <johan@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 open list <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 25, 2020 at 10:57:27AM -0500, Alex Elder wrote:
>On 9/25/20 9:07 AM, Coiby Xu wrote:
>>On Thu, Sep 24, 2020 at 01:00:57PM +0200, Greg Kroah-Hartman wrote:
>>>On Thu, Sep 24, 2020 at 06:20:39PM +0800, Coiby Xu wrote:
>>>>Use __8 to replace int and remove the unnecessary __bitwise type
>>>>attribute.
>>>>
>>>>Found by sparse,
>
>. . .
>
>>>>diff --git a/include/uapi/sound/asound.h b/include/uapi/sound/asound.h
>>>>index 535a7229e1d9..8e71a95644ab 100644
>>>>--- a/include/uapi/sound/asound.h
>>>>+++ b/include/uapi/sound/asound.h
>>>>@@ -950,7 +950,7 @@ struct snd_ctl_card_info {
>>>>=A0=A0=A0=A0 unsigned char components[128];=A0=A0=A0 /* card components=
 / fine
>>>>identification, delimited with one space (AC97 etc..) */
>>>>=A0};
>>>>
>>>>-typedef int __bitwise snd_ctl_elem_type_t;
>>>>+typedef __u8 snd_ctl_elem_type_t;
>>>>=A0#define=A0=A0=A0 SNDRV_CTL_ELEM_TYPE_NONE=A0=A0=A0 ((__force
>>>>snd_ctl_elem_type_t) 0) /* invalid */
>>>>=A0#define=A0=A0=A0 SNDRV_CTL_ELEM_TYPE_BOOLEAN=A0=A0=A0 ((__force
>>>>snd_ctl_elem_type_t) 1) /* boolean type */
>>>>=A0#define=A0=A0=A0 SNDRV_CTL_ELEM_TYPE_INTEGER=A0=A0=A0 ((__force
>>>>snd_ctl_elem_type_t) 2) /* integer type */
>>>>@@ -960,7 +960,7 @@ typedef int __bitwise snd_ctl_elem_type_t;
>>>>=A0#define=A0=A0=A0 SNDRV_CTL_ELEM_TYPE_INTEGER64=A0=A0=A0 ((__force
>>>>snd_ctl_elem_type_t) 6) /* 64-bit integer type */
>>>>=A0#define=A0=A0=A0 SNDRV_CTL_ELEM_TYPE_LAST=A0=A0=A0 SNDRV_CTL_ELEM_TY=
PE_INTEGER64
>>>>
>>>>-typedef int __bitwise snd_ctl_elem_iface_t;
>>>>+typedef __u8 snd_ctl_elem_iface_t;
>>>>=A0#define=A0=A0=A0 SNDRV_CTL_ELEM_IFACE_CARD=A0=A0=A0 ((__force
>>>>snd_ctl_elem_iface_t) 0) /* global control */
>>>>=A0#define=A0=A0=A0 SNDRV_CTL_ELEM_IFACE_HWDEP=A0=A0=A0 ((__force
>>>>snd_ctl_elem_iface_t) 1) /* hardware dependent device */
>>>>=A0#define=A0=A0=A0 SNDRV_CTL_ELEM_IFACE_MIXER=A0=A0=A0 ((__force
>>>>snd_ctl_elem_iface_t) 2) /* virtual mixer device */
>>>
>>>I can't take a uapi sound header file patch along with a driver change,
>>>these need to be independant.
>>
>>Thank you and Alex for reminding me this is a change of public header!
>>>
>>>And this is a userspace api, you just changed the size of an externally
>>>facing variable, are you _SURE_ that is ok to do?
>>
>>The reasons I make this change are, 1) using int to represent 7 enumerati=
on
>>values seems to be overkill; 2) using one type could avoid worries
>>about byte order.
>
>(1) might be a valid suggestion, but the file you suggest
>changing is part of the Linux user space API, which you
>basically can't change.
>
>I'm fairly certain the user space API is defined to have
>CPU-local byte order (unless specified explicitly otherwise)
>so that is not a concern.

Thank you for sharing me about the byte order of user space API which
prompts me to examine where "info->type" comes from,

	uinfo->type =3D (snd_ctl_elem_type_t)info->type;

Eventually it comes from the parsed topology data which is obtained via
gb_audio_gb_get_topology(gbmodule->mgmt_connection, &topology). But
since (struct gb_audio_ctl_elem_info*)->type has __u8 type, there is no
endianness concern. Then based on the principles of userspace API
shouldn't be modified and greybus is operating system independent, your
previous suggestion to use __force which means "I know what I'm doing"
is actually a good idea,

         uinfo->type =3D (__force snd_ctl_elem_type_t)info->type;


>>I examine one userspace example (libalsa-intf/alsa_mixer.c [1]). This
>>change won't cause compiling breakage. But I don't the experience to
>>imagine any other bad consequence.
>
>As a rule, once the user space API has been established, it
>stays with us forever.  You can add to it, but modifying
>(or removing) an existing interface is essentially forbidden.
>
>>Another way to avoid userspace API change is to let
>>"struct gb_audio_ctl_elem_info" use snd_ctl_elem_iface_t type which may
>>be more elegant than using "__force" as suggested by Alex,
>
>The Greybus definitions were explicitly defined to be
>operating system independent.  For that reason there are
>(admittedly cumbersome) definitions of certain types and
>values that essentially mimic those defined by Linux
>exactly  That way Linux (or another system using Greybus)
>can change its internal values without changing the
>Greybus API definition.  (This addresses the concern you
>mention below.)
>
>What you are suggesting is not consistent with that
>principle.
>
>					-Alex
>
>
>>$ git diff
>>diff --git a/include/linux/greybus/greybus_protocols.h
>>b/include/linux/greybus/greybus_protocols.h
>>index aeb8f9243545..7f6753ec7ef7 100644
>>--- a/include/linux/greybus/greybus_protocols.h
>>+++ b/include/linux/greybus/greybus_protocols.h
>>@@ -8,6 +8,7 @@
>> =A0#define __GREYBUS_PROTOCOLS_H
>>
>> =A0#include <linux/types.h>
>>+#include <sound/asound.h>
>>
>> =A0/* Fixed IDs for control/svc protocols */
>>
>>@@ -1997,7 +1998,7 @@ struct gb_audio_enumerated {
>> =A0} __packed;
>>
>> =A0struct gb_audio_ctl_elem_info { /* See snd_ctl_elem_info in Linux
>>source */
>>-=A0=A0=A0=A0=A0=A0 __u8=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 type;=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 /* GB_AUDIO_CTL_ELEM_TYPE_* */
>>+=A0=A0=A0=A0=A0=A0 snd_ctl_elem_type_t=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 type;=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /*
>>GB_AUDIO_CTL_ELEM_TYPE_* */
>> =A0=A0=A0=A0=A0=A0=A0 __le16=A0=A0=A0=A0=A0=A0=A0=A0=A0 dimen[4];
>> =A0=A0=A0=A0=A0=A0=A0 union {
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct gb_audio_integer=A0=
=A0=A0=A0=A0=A0=A0=A0 integer
>>
>>My only concern is if greybus authors have any special reason to not
>>include
>>sound/asound.h in the first place and re-define things like
>>SNDRV_CTL_ELEM_TYPE_*,
>>
>>/* See SNDRV_CTL_ELEM_TYPE_* in Linux source */
>>#define GB_AUDIO_CTL_ELEM_TYPE_BOOLEAN=A0=A0=A0=A0=A0=A0=A0 0x01
>>#define GB_AUDIO_CTL_ELEM_TYPE_INTEGER=A0=A0=A0=A0=A0=A0=A0 0x02
>>
>>/* See SNDRV_CTL_ELEM_IFACE_* in Linux source */
>>#define GB_AUDIO_CTL_ELEM_IFACE_CARD=A0=A0=A0=A0=A0=A0=A0 0x00
>>...
>>
>>/* SNDRV_CTL_ELEM_ACCESS_* in Linux source */
>>#define GB_AUDIO_ACCESS_READ=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 BIT(0)
>>...
>>
>>[1] https://gitlab.com/Codeaurora/platform_hardware_qcom_audio/-/blob/aee=
6032826ec7c8b6edda404422fda0ef40ec2db/libalsa-intf/alsa_mixer.c
>>
>> =A0alsa_mixer.c
>>>
>>>thanks,
>>>
>>>greg k-h
>>
>>--
>>Best regards,
>>Coiby
>

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
