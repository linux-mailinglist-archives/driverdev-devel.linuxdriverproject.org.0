Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ABA3366F0
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 23:44:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B37E8807C;
	Wed,  5 Jun 2019 21:44:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O8Y69rZ257WA; Wed,  5 Jun 2019 21:44:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 660C588047;
	Wed,  5 Jun 2019 21:44:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 31F671BF422
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 21:44:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2F42888045
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 21:44:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FXDzaf4t2ROZ for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 21:44:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 535B48803E
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 21:44:30 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id 16so27383ljv.10
 for <devel@driverdev.osuosl.org>; Wed, 05 Jun 2019 14:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8qbYODjdogJ9vGPuGBza0TkPl2uTIqIRqR7iCaXAEaw=;
 b=VK10HtmMr+hYEJK1eDDW99v6YyG+L/1tdWz09m8DJZ5pxPErJu0934sS9RUt/ROvSp
 YpcC9+uejipyHqnAOCLSFFZxvDVTgB79Hg63ypDzloNEmfYp+991tAJqoJ7RmFNsWt8r
 1+hRtTpqnay9BJ9/vyF4mJ2K7Rmjnc9F2YVB4RbI3JrdT827H5dA/Mh+BGUh23TU+WFQ
 3crwWKO2non/KK9J2L47hIWj+CG5RI5R/LmyaPG/yig0f18ijofAe6gnoWwgOWWmyeHn
 ZivhkJqMhe1k39WD5jXTQE6OLijeCPTtJGhEc3vKJBrIloC4Z5ox/OBwGCVfCBvsA16j
 m+rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8qbYODjdogJ9vGPuGBza0TkPl2uTIqIRqR7iCaXAEaw=;
 b=PSdWj4dhgNhDMx5/zc5bEAO4cxFPtVx2IYmoKbQlmIrYf29m1a82D/c0BIYUfZ0aJn
 JeIe2RPev7Do2aj9LGU8UzbVeql1HGBegy03gLA1hogj1wrQlE3bneDi2romPwsg8onw
 dFukOdOBwvS3K1CFG99XXxc6WYQFobNA83xOZ3IkmvN5MzfyXg0bZL+KFtMWfumuGRVh
 HXcySttQS+vxhf5oq8lyXVkvmrqcOhMqwpZX4EH+jKbQldJUKO1f2LtbBSN6BLgRrgCn
 andOfU1WqIwszhOLq6j91t6Jtr1wMGHHH506oQGYu+x67Aao40AFYxFEYOzZD3aWZjuv
 FgbQ==
X-Gm-Message-State: APjAAAWZ1KNtUexsntu92YKPjbvtU3iGmc/WLqKFxvUHaDkRLxS+Vv1Z
 EkLMidaBeMtk8ovBwkN9BvUYM8w3wxeP/wgFkbU=
X-Google-Smtp-Source: APXvYqxOY0JQc2X8Mc+YSmRiFLCSEEII6F/51aWYSDhsGLSvX2323vY5hUakVBB9kR9c30m5COGVlMjYXoxTiyAZzYU=
X-Received: by 2002:a2e:9284:: with SMTP id d4mr22643796ljh.26.1559771068368; 
 Wed, 05 Jun 2019 14:44:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190605213648.6887-1-festevam@gmail.com>
In-Reply-To: <20190605213648.6887-1-festevam@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 5 Jun 2019 18:44:20 -0300
Message-ID: <CAOMZO5DCq=G_qouFp0F4aKp9hCcMqYVx3L6gWyHbj1Ckd8oUUg@mail.gmail.com>
Subject: Re: [PATCH 1/2] staging: kpc2000: Use '%llx' for printing 'long long
 int' type
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

On Wed, Jun 5, 2019 at 6:37 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> In order to print a 'long long int' type the 'llx' specifier needs to be
> used.
>
> Change it accordingly in order to fix the following build warning:
>
> drivers/staging/kpc2000/kpc2000/core.c:245:4: warning: format '%lx' expects argument of type 'long unsigned int', but argument 4 has type 'long long int' [-Wformat=]
>
> Reported-by: Build bot for Mark Brown <broonie@kernel.org>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>  drivers/staging/kpc2000/kpc2000/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
> index 7f257c21e0cc..65eaa8451928 100644
> --- a/drivers/staging/kpc2000/kpc2000/core.c
> +++ b/drivers/staging/kpc2000/kpc2000/core.c
> @@ -242,7 +242,7 @@ static int  read_system_regs(struct kp2000_device *pcard)
>         read_val = readq(pcard->sysinfo_regs_base + REG_MAGIC_NUMBER);
>         if (read_val != KP2000_MAGIC_VALUE) {
>                 dev_err(&pcard->pdev->dev,
> -                       "Invalid magic!  Got: 0x%016llx  Want: 0x%016lx\n",
> +                       "Invalid magic!  Got: 0x%016llx  Want: 0x%016llx\n",

Please discard this. It fixes arm32 build warning, but introduces
warnings with arm64.

I will think about a better fix.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
