Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A90132CF383
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Dec 2020 19:03:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 22996878DB;
	Fri,  4 Dec 2020 18:03:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5quWOIDKNWpZ; Fri,  4 Dec 2020 18:03:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1482687859;
	Fri,  4 Dec 2020 18:03:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D6E101BF2F8
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 18:03:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CD2FA2038B
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 18:03:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jlnO1tQgpIL1 for <devel@linuxdriverproject.org>;
 Fri,  4 Dec 2020 18:03:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 1BF0F2037A
 for <devel@driverdev.osuosl.org>; Fri,  4 Dec 2020 18:03:24 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id o9so4250731pfd.10
 for <devel@driverdev.osuosl.org>; Fri, 04 Dec 2020 10:03:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e+Njf8NG6+fsYlsC9GMzSFpNhGjLZL8pv+AFfjpqRlM=;
 b=cKXpELugaWOipTb/KvYJWMqSQbUwnR8wbCWrW8c7uSz2Usy77z7+aCH07etKFMY27n
 sh3KA2AhWZnqwb5F67/SUCNnUHy+ZUwzFYwwv1YlV4yrJgdec0u9/VjeqTtYiE3qYl0o
 t8p0TvFx+vq4mN5G2cXbQ9hFKCy2XgRKm3kodIBOOemE+BCCd5pdWhucQfyV4W5hM01q
 Nt+Ty2vYmlUclZ0N0euG3zaw9ahs4GALX/79GPjkGCbkdRkKLy7urTYxFCVbBv6IpGQW
 SealJ7WTleTqcIHcmbuvksZj/Np9C5tVB23/Hqt6YoWn2X3bodAQwkTHOKjD57eS/+PS
 S1fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e+Njf8NG6+fsYlsC9GMzSFpNhGjLZL8pv+AFfjpqRlM=;
 b=Sk/31SeojdAa4INXyQ8N35Iv6rKZ8rPxVEIlDpCO4OToRbLgBxN7YkOnNLj8vyd4Ww
 hG3UkVwU25L2i4tWSEuPqL0nUlzQRrWNgfjIgXzHu92x8puFZIfHRwlrLFMws3aVB4PC
 SS3eDFHGjhtWhEyLuZF4W42jM0qMrpYHOjePz7mGbbe+AygXWF4Fr8eqzz8VDEX933le
 YSHaXES4AMlshbrj2j8i3wImJWKxScjGLpA2o2tJvC17VYNXagL2KrwT4CUWiM4rmTbZ
 pK8WyvmM6sc1T84AhFDZXkiHu5OpbLc0hm6OeL7f9AS+0aUyQi122SEwIJDqZqgRAP5w
 LrSw==
X-Gm-Message-State: AOAM530Jh1EPbKWDhu7SYJGVQy5PVI20ONk5YHk2yWfiG7uIX1ZWRJho
 WxDsoPgdwKgVg8osq546wltE9Unq26SF9PhibY0=
X-Google-Smtp-Source: ABdhPJz7nytvFUT2W0TzpKWPiz61juYOJk4Dt8QM4Alw2rykoKdUZPIvH1HRfiCHM2FWX0c4pW0jDD9CFa7iY959HrI=
X-Received: by 2002:aa7:9414:0:b029:18c:23f6:bc6d with SMTP id
 x20-20020aa794140000b029018c23f6bc6dmr4922931pfo.21.1607105003635; Fri, 04
 Dec 2020 10:03:23 -0800 (PST)
MIME-Version: 1.0
References: <20201204021350.28182-1-wanghai38@huawei.com>
 <X8n2CL58pQ/077rQ@localhost>
In-Reply-To: <X8n2CL58pQ/077rQ@localhost>
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Date: Fri, 4 Dec 2020 23:32:47 +0530
Message-ID: <CAAs3649kGerXZqgffwethn-JNOiiFSif1COM3no4Az4Ah220VA@mail.gmail.com>
Subject: Re: [PATCH] staging: greybus: audio: Add missing unlock in
 gbaudio_dapm_free_controls()
To: Johan Hovold <johan@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Wang Hai <wanghai38@huawei.com>,
 Alex Elder <elder@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>, aibhav.sr@gmail.com,
 "moderated list:GREYBUS SUBSYSTEM" <greybus-dev@lists.linaro.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Dec 4, 2020 at 2:10 PM Johan Hovold <johan@kernel.org> wrote:
>
> On Fri, Dec 04, 2020 at 10:13:50AM +0800, Wang Hai wrote:
> > Add the missing unlock before return from function
> > gbaudio_dapm_free_controls() in the error handling case.
> >
> > Fixes: 510e340efe0c ("staging: greybus: audio: Add helper APIs for dynamic audio module")
> > Reported-by: Hulk Robot <hulkci@huawei.com>
> > Signed-off-by: Wang Hai <wanghai38@huawei.com>
> > ---
> >  drivers/staging/greybus/audio_helper.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/staging/greybus/audio_helper.c b/drivers/staging/greybus/audio_helper.c
> > index 237531ba60f3..293675dbea10 100644
> > --- a/drivers/staging/greybus/audio_helper.c
> > +++ b/drivers/staging/greybus/audio_helper.c
> > @@ -135,6 +135,7 @@ int gbaudio_dapm_free_controls(struct snd_soc_dapm_context *dapm,
> >               if (!w) {
> >                       dev_err(dapm->dev, "%s: widget not found\n",
> >                               widget->name);
> > +                     mutex_unlock(&dapm->card->dapm_mutex);
> >                       return -EINVAL;
> >               }
> >               widget++;
>
> This superficially looks correct, but there seems to be another bug in
> this function. It can be used free an array of widgets, but if one of
> them isn't found we just leak the rest. Perhaps that return should
> rather be "widget++; continue;".
>
> Vaibhav?

Thanks Wang for sharing the patch. As already pointed by Johan, this
function indeed has another bug as well.
Pls feel free to share the patch as suggested above.

--
vaibhav

>
> Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
