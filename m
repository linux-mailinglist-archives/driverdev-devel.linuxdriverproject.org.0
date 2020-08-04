Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DB323BE56
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Aug 2020 18:46:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3535220520;
	Tue,  4 Aug 2020 16:46:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6NdwCerV+kDw; Tue,  4 Aug 2020 16:46:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3DA7620527;
	Tue,  4 Aug 2020 16:46:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BCCAC1BF5E9
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 16:46:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B4A708539F
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 16:46:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WMu8FZ0x1Mkn for <devel@linuxdriverproject.org>;
 Tue,  4 Aug 2020 16:46:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 24A6185374
 for <devel@driverdev.osuosl.org>; Tue,  4 Aug 2020 16:46:36 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id k13so15542788plk.13
 for <devel@driverdev.osuosl.org>; Tue, 04 Aug 2020 09:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rX+uSk8WEhc0P/zYz9n8ej6ss0u7oJ9XP2D2IjvwVuw=;
 b=rwK6Hzu0amzA+ObyFxhuDXroOV1XbxuYNddJM7etyhDaN83XG/yy5M8Dw6nhSKsGXJ
 jRPcqY4s0Wp9H3f5pmda2w9LFdvBorwoCgmYTeee8UQRJd0FpfhtUbReNptdVOj/sT36
 ScyGo5c/ye1Ca2X1lUSezWjthESe2aWs40Py6oD8b/Xdn4DSbsZwZQgA0FsiyhlhPkaR
 30cQubaY3oLLG4BgeF7v87OXBbm/urfFfDbVSgeldkwoLtfTqkQZ82anWGVk5lNICyAs
 8FtYcgBRKDKtLWFBU4LlT7XQMnKXL4IK4GYPT08xZITMuy9QE50rHJ2yhHIbFEldDynJ
 xTqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rX+uSk8WEhc0P/zYz9n8ej6ss0u7oJ9XP2D2IjvwVuw=;
 b=nbiijV6pDGfLi6xfDg/dN2OX79dySM358aDggF37HgRcEd56SF2HULVrSJ4DnYOdrP
 2QdFyRIFgVMhm8hLkuwJq9iusubaDHc2t0HTDOmv2oKh/aqWgtRIvz2wg5We2492IVQi
 2AFdLnaNIdAD+dtdh1tyGkyxGhYC+NIaaPoOd9i/8BJ1FqSi3Z0si1dwWcJgUy3zZBjw
 0M4ddbGRIoyrz1c5KwZTbFZ0vOuCGnnlMWhgrViCwz7WZLPG4cGaZYRFI10g57KgRPDc
 bWSJcFrqUGTsLncR8Ln9xpGJuONGfFUrPOhUb7OXRipn2aGy4aCTURNxIxSJQVFeaGN6
 34fg==
X-Gm-Message-State: AOAM533F4DttuowVloz/jpbIqdClROBt2im7WYYF/rNyS7t5tZOL6mbF
 eM4ak5LP03iORw6fj84aDtATRVGJOL+qnuC+abA=
X-Google-Smtp-Source: ABdhPJz+oFS8CDQFdTt4w4RvlmVsZLq2YThd3GwCpVm9WNiYR6D930hFvshrkVINrfymotDIQDM5wUEPDuf84C6dlmo=
X-Received: by 2002:a17:90a:ec0c:: with SMTP id
 l12mr5305203pjy.90.1596559595405; 
 Tue, 04 Aug 2020 09:46:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200804101601.GA392148@mwanda>
In-Reply-To: <20200804101601.GA392148@mwanda>
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Date: Tue, 4 Aug 2020 22:15:59 +0530
Message-ID: <CAAs3649ONrW=WNv=b-ErdSNZOuzCg+gMk0zbhirGuSQGi9KQwA@mail.gmail.com>
Subject: Re: [PATCH] staging: greybus: audio: Uninitialized variable in
 gbaudio_remove_controls()
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, Johan Hovold <johan@kernel.org>,
 greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 4, 2020 at 3:46 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> The "err" variable is not meaningful so there is no need to print it.
> It's uninitialized on the first iteration through the loop.
>
> Fixes: 510e340efe0c ("staging: greybus: audio: Add helper APIs for dynamic audio modules")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Thanks Dan for sharing this patch.

Reviewed-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>

> ---
>  drivers/staging/greybus/audio_helper.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/greybus/audio_helper.c b/drivers/staging/greybus/audio_helper.c
> index 8b100a71f02e..237531ba60f3 100644
> --- a/drivers/staging/greybus/audio_helper.c
> +++ b/drivers/staging/greybus/audio_helper.c
> @@ -173,8 +173,7 @@ static int gbaudio_remove_controls(struct snd_card *card, struct device *dev,
>                 id.index = control->index;
>                 kctl = snd_ctl_find_id(card, &id);
>                 if (!kctl) {
> -                       dev_err(dev, "%d: Failed to find %s\n", err,
> -                               control->name);
> +                       dev_err(dev, "Failed to find %s\n", control->name);
>                         continue;
>                 }
>                 err = snd_ctl_remove(card, kctl);
> --
> 2.27.0
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
