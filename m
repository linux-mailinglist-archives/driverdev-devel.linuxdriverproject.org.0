Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBFD31CC79
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 15:55:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BA41E86A03;
	Tue, 16 Feb 2021 14:55:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HKYz3Q4Mp7Lq; Tue, 16 Feb 2021 14:55:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CED8D867A3;
	Tue, 16 Feb 2021 14:55:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D09B61BF5E0
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 14:55:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CCBF086FD5
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 14:55:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jjO7aS9g7lfD for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 14:55:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com
 [209.85.166.174])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F2BD281FB1
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 14:55:02 +0000 (UTC)
Received: by mail-il1-f174.google.com with SMTP id o15so8477439ilt.6
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 06:55:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ieee.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0L3LUUd4CN2tocODr+9FJOieK/FWdEsnDt1BTgQNXTw=;
 b=Iufza7OCXAe9UVW0oYI17XE7VpPSXowcoZafTUF02MMumA7XJp0ZoetVtQ3PsYCWWe
 Zr1G4+kCX4mc8LI6YmNgY+RUQAYwnFVmOC0dHr8pxlcpfqr64GyKSfiERsxQoLqNyDJD
 WTZe+0OcPC4dsMztfh+85nt4N6c0nmgcFfPbs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0L3LUUd4CN2tocODr+9FJOieK/FWdEsnDt1BTgQNXTw=;
 b=BMVAk8hodF8qIS+r3E8/Oj3ijXHJ71eGj9WfoA7mx/gjZ04h7e35C3G3jRfQKD+/hr
 y71jNDIgJv0kvaZHsNmNmziRlhBDA7rlz71kKCP3FbXZPsNpKMj1VCxgZvqKRJ2EhNaA
 VN3pMnkVYKkikzIjs4TCMRmoKs891YnsZfOVAwf/ChzBVjDdd5eKPw6191sr8hoO/0us
 ew4jp3J2Fgxo175vypUG23w6h9txpmnp9brGv0u68Qk8cmlhGKQpEyWA+RduPI33yc7C
 y+kN+rMjqP+yZlSnNuJm4xzhIKTvflC2JdrMEcbwBkxiSqV5ffgkc0m2BecP0TLI5ZJ1
 oe0w==
X-Gm-Message-State: AOAM531DzOjpaTrTeWdrobbcVPZZEks4kwQO1yum+We+CWwH9h6ZMQLJ
 8lO52QfY4nEAOJnm9NTL9tD2rw==
X-Google-Smtp-Source: ABdhPJzt5Yfzzw7DoFwQ768GJoYdE5YZWKfKbrolE9kxw0DKXKKgAyl+O5kXJCVCjLWqfVLjJfLRUQ==
X-Received: by 2002:a05:6e02:164c:: with SMTP id
 v12mr16847550ilu.49.1613487301947; 
 Tue, 16 Feb 2021 06:55:01 -0800 (PST)
Received: from [172.22.22.4] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id g11sm874048iom.23.2021.02.16.06.55.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Feb 2021 06:55:01 -0800 (PST)
Subject: Re: [PATCH 02/13] staging: greybus: Switch from strlcpy to strscpy
To: Kumar Kartikeya Dwivedi <memxor@gmail.com>, devel@driverdev.osuosl.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org
References: <20210131172838.146706-1-memxor@gmail.com>
 <20210131172838.146706-3-memxor@gmail.com>
From: Alex Elder <elder@ieee.org>
Message-ID: <b565bdae-10a9-9b6c-ae60-dcee88f7dedd@ieee.org>
Date: Tue, 16 Feb 2021 08:54:59 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210131172838.146706-3-memxor@gmail.com>
Content-Language: en-US
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
Cc: linux-fbdev@vger.kernel.org, Jon Nettleton <jon.nettleton@gmail.com>,
 Mark Greer <mgreer@animalcreek.com>, Marc Dietrich <marvin24@gmx.de>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Thomas Gleixner <tglx@linutronix.de>,
 ac100@lists.launchpad.net, Stephen Rothwell <sfr@canb.auug.org.au>,
 Florian Fainelli <f.fainelli@gmail.com>, Daniel Drake <dsd@laptop.org>,
 Jens Frederich <jfrederich@gmail.com>, Viresh Kumar <vireshk@kernel.org>,
 Robert Richter <rric@kernel.org>, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Johan Hovold <johan@kernel.org>, Ian Abbott <abbotti@mev.co.uk>,
 Al Viro <viro@zeniv.linux.org.uk>, linux-tegra@vger.kernel.org,
 William Cohen <wcohen@redhat.com>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Alex Elder <elder@kernel.org>, Teddy Wang <teddy.wang@siliconmotion.com>,
 greybus-dev@lists.linaro.org, Andrew Morton <akpm@linux-foundation.org>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>, Mike Rapoport <rppt@kernel.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 1/31/21 11:28 AM, Kumar Kartikeya Dwivedi wrote:
> strlcpy is marked as deprecated in Documentation/process/deprecated.rst,
> and there is no functional difference when the caller expects truncation
> (when not checking the return value). strscpy is relatively better as it
> also avoids scanning the whole source string.
> 
> This silences the related checkpatch warnings from:
> 5dbdb2d87c29 ("checkpatch: prefer strscpy to strlcpy")
> 
> Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>

This is a good change.  But while you're at it, I would
appreciate if you would convert a few spots to use
sizeof(dest) rather than a fixed constant.  I will
point them out below.

If this is the *only* request for a change on your
series, please tell me that and I can sign off on
this without you implementing my suggestion.  But
if you post a version 2, please do what I describe.

Thanks.

					-Alex

> ---
>   drivers/staging/greybus/audio_helper.c   | 2 +-
>   drivers/staging/greybus/audio_module.c   | 2 +-
>   drivers/staging/greybus/audio_topology.c | 6 +++---
>   drivers/staging/greybus/power_supply.c   | 2 +-
>   drivers/staging/greybus/spilib.c         | 4 ++--
>   5 files changed, 8 insertions(+), 8 deletions(-)

. . .


> diff --git a/drivers/staging/greybus/audio_module.c b/drivers/staging/greybus/audio_module.c
> index a243d60f0..0f9fdc077 100644
> --- a/drivers/staging/greybus/audio_module.c
> +++ b/drivers/staging/greybus/audio_module.c
> @@ -342,7 +342,7 @@ static int gb_audio_probe(struct gb_bundle *bundle,
>   	/* inform above layer for uevent */
>   	dev_dbg(dev, "Inform set_event:%d to above layer\n", 1);
>   	/* prepare for the audio manager */
> -	strlcpy(desc.name, gbmodule->name, GB_AUDIO_MANAGER_MODULE_NAME_LEN);
> +	strscpy(desc.name, gbmodule->name, GB_AUDIO_MANAGER_MODULE_NAME_LEN);

Please use this here instead:

	strscpy(desc.name, gbmodule->name, sizeof(desc.name));

>   	desc.vid = 2; /* todo */
>   	desc.pid = 3; /* todo */
>   	desc.intf_id = gbmodule->dev_id;
> diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
> index 662e3e8b4..e816e4db5 100644
> --- a/drivers/staging/greybus/audio_topology.c
> +++ b/drivers/staging/greybus/audio_topology.c
> @@ -200,7 +200,7 @@ static int gbcodec_mixer_ctl_info(struct snd_kcontrol *kcontrol,
>   			return -EINVAL;
>   		name = gbaudio_map_controlid(module, data->ctl_id,
>   					     uinfo->value.enumerated.item);
> -		strlcpy(uinfo->value.enumerated.name, name, NAME_SIZE);
> +		strscpy(uinfo->value.enumerated.name, name, NAME_SIZE);

Please use this here instead:

		strscpy(uinfo->value.enumerated.name, name,
			sizeof(uinfo->valiue.enumerated.name));

(I know NAME_SIZE is used throughout this file, and
could also be converted in this way, but we can save
that for another patch.)

>   		break;
>   	default:
>   		dev_err(comp->dev, "Invalid type: %d for %s:kcontrol\n",
> @@ -1047,7 +1047,7 @@ static int gbaudio_tplg_create_widget(struct gbaudio_module_info *module,
>   	}
>   
>   	/* Prefix dev_id to widget control_name */
> -	strlcpy(temp_name, w->name, NAME_SIZE);
> +	strscpy(temp_name, w->name, NAME_SIZE);

Please use this here instead:

	strscpy(temp_name, w->name, sizeof(temp_name));

>   	snprintf(w->name, NAME_SIZE, "GB %d %s", module->dev_id, temp_name);
>   
>   	switch (w->type) {
> @@ -1169,7 +1169,7 @@ static int gbaudio_tplg_process_kcontrols(struct gbaudio_module_info *module,
>   		}
>   		control->id = curr->id;
>   		/* Prefix dev_id to widget_name */
> -		strlcpy(temp_name, curr->name, NAME_SIZE);
> +		strscpy(temp_name, curr->name, NAME_SIZE);


Please use this here instead:

		strscpy(temp_name, curr->name, sizeof(temp_name));

>   		snprintf(curr->name, NAME_SIZE, "GB %d %s", module->dev_id,
>   			 temp_name);
>   		control->name = curr->name;

. . .
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
