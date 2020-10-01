Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 675F3280336
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Oct 2020 17:50:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A3B98736E;
	Thu,  1 Oct 2020 15:50:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3GoPx4c3LN0D; Thu,  1 Oct 2020 15:50:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 838E887355;
	Thu,  1 Oct 2020 15:50:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 351D71BF5B3
 for <devel@linuxdriverproject.org>; Thu,  1 Oct 2020 15:50:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 243CC226F3
 for <devel@linuxdriverproject.org>; Thu,  1 Oct 2020 15:50:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zDvvqF6oQNWi for <devel@linuxdriverproject.org>;
 Thu,  1 Oct 2020 15:50:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 2D473203AB
 for <devel@driverdev.osuosl.org>; Thu,  1 Oct 2020 15:50:31 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id p21so1904634pju.0
 for <devel@driverdev.osuosl.org>; Thu, 01 Oct 2020 08:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zW6MWyzUUn9v50tgBMkokxQ6HCYRd4j3AET8fbnVFGQ=;
 b=sFQH6PoDSExgmvW4YvMi67GxJNWIl7LX5tWGYahGkpCBd/2MiqSpwTNwN1dywDJN4w
 8xWWgUutoHyVe/DvE9AuTBtRpU/2KHHfUIgvxcMl3muvpnCAGZU40DEdXec8hi7HjNr5
 dbXvNkq+9PzxC+0uDrrH1rP2chYegT2611n4AgQ1m+yp4ZEc+F6yd5yF4UjCbR8PVeUn
 T3Yzt4sE1TQ50Z0WhtVGaNe+Hp4YdjO5PfFh9pC92WpQ03BH6q0F7KvAIcAbm7unROLv
 HZAfOZv6qCtXqrVjGjrZH78mkoj9uSNk/diZKGa/kKmJ1u5F50haUvhTc6IOqbQmutA7
 hEew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zW6MWyzUUn9v50tgBMkokxQ6HCYRd4j3AET8fbnVFGQ=;
 b=htVUC7FNv0sScXz1JQ/jYG0PXsObfU3d1eHPs7NcMODjGV+xAMXhfwah9UI4QaTC2Q
 4i0VA34q/qEGMT/3yEzadlQ2F1jf9t6hGJnHYdcyplF0ypimH9Zx7aBEIptyh5cWK+d7
 Qld+gSrYF6fTAINXHq00eA1wPC9pzBlFTXLDx0naDbYDuGpBCeIjMxX7KJsUoaVmWppq
 Lqlh7RCvdSbzXUcgpfU3aG5AGBNlT1fMWOoQC5rxVOmy4KnEIHWcWroAu70HNP5ZsCg7
 GKJ/1G8QEoMHSvTR8P4lg50dSANA0dzOjp3jHlXNF86vzGpMSLVI0E4mjTo1wfVeyV6V
 rm6Q==
X-Gm-Message-State: AOAM531n4XPpq/4dhU57su3fYKom6xRjlQTW7Cays0RLu3Yjy7erYMQV
 XHmRLAAjUzSb0+1A24q5MXTvjAAeZ8k8sfjuiVMHtmEeoZGdqQ==
X-Google-Smtp-Source: ABdhPJxXDVgMtObNqA6AtgN+lLgmhryChf5KWYzlmENLVsBETeuJv5yARzq1Nqr0CJpC5A71MmqeuAXRhFtfSwTYgOg=
X-Received: by 2002:a17:90a:be11:: with SMTP id
 a17mr532278pjs.181.1601567430625; 
 Thu, 01 Oct 2020 08:50:30 -0700 (PDT)
MIME-Version: 1.0
References: <490e5002c3fea266524c31e1a94853dca9c3286c.1601551027.git.mchehab+huawei@kernel.org>
In-Reply-To: <490e5002c3fea266524c31e1a94853dca9c3286c.1601551027.git.mchehab+huawei@kernel.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 1 Oct 2020 18:50:12 +0300
Message-ID: <CAHp75Ve3B_YzC3JpswDv_8sYoMmvh58q4iWxfx2090Nfk3+_Fw@mail.gmail.com>
Subject: Re: [PATCH v3] media: atomisp: fixes build breakage for ISP2400 due
 to a cleanup
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 1, 2020 at 2:17 PM Mauro Carvalho Chehab
<mchehab+huawei@kernel.org> wrote:
>
> A temporary var needed for building with ISP2400 was removed
> by accident on a cleanup patch.
>
> Fix the breakage.

Is this in any of your branches?

>
> Fixes: 852a53a02cf0 ("media: atomisp: get rid of unused vars")
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  drivers/staging/media/atomisp/pci/sh_css.c | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
> index e8c5caf3dfe6..ddee04c8248d 100644
> --- a/drivers/staging/media/atomisp/pci/sh_css.c
> +++ b/drivers/staging/media/atomisp/pci/sh_css.c
> @@ -1365,7 +1365,6 @@ start_binary(struct ia_css_pipe *pipe,
>  {
>         assert(pipe);
>         /* Acceleration uses firmware, the binary thus can be NULL */
> -       /* assert(binary != NULL); */
>
>         if (binary)
>                 sh_css_metrics_start_binary(&binary->metrics);
> @@ -1381,10 +1380,10 @@ start_binary(struct ia_css_pipe *pipe,
>  #endif
>
>  #if !defined(ISP2401)
> -       if (stream->reconfigure_css_rx) {
> +       if (pipe->stream->reconfigure_css_rx) {
>                 ia_css_isys_rx_configure(&pipe->stream->csi_rx_config,
>                                          pipe->stream->config.mode);
> -               stream->reconfigure_css_rx = false;
> +               pipe->stream->reconfigure_css_rx = false;
>         }
>  #endif
>  }
> @@ -2820,6 +2819,8 @@ load_preview_binaries(struct ia_css_pipe *pipe) {
>         bool need_isp_copy_binary = false;
>  #ifdef ISP2401
>         bool sensor = false;
> +#else
> +       bool continuous;
>  #endif
>         /* preview only have 1 output pin now */
>         struct ia_css_frame_info *pipe_out_info = &pipe->output_info[0];
> @@ -2833,6 +2834,8 @@ load_preview_binaries(struct ia_css_pipe *pipe) {
>         online = pipe->stream->config.online;
>  #ifdef ISP2401
>         sensor = pipe->stream->config.mode == IA_CSS_INPUT_MODE_SENSOR;
> +#else
> +       continuous = pipe->stream->config.continuous;
>  #endif
>
>         if (mycs->preview_binary.info)
> @@ -5987,6 +5990,8 @@ static int load_primary_binaries(
>         bool need_ldc = false;
>  #ifdef ISP2401
>         bool sensor = false;
> +#else
> +       bool memory, continuous;
>  #endif
>         struct ia_css_frame_info prim_in_info,
>                        prim_out_info,
> @@ -6009,6 +6014,9 @@ static int load_primary_binaries(
>         online = pipe->stream->config.online;
>  #ifdef ISP2401
>         sensor = (pipe->stream->config.mode == IA_CSS_INPUT_MODE_SENSOR);
> +#else
> +       memory = pipe->stream->config.mode == IA_CSS_INPUT_MODE_MEMORY;
> +       continuous = pipe->stream->config.continuous;
>  #endif
>
>         mycs = &pipe->pipe_settings.capture;
> --
> 2.26.2
>


-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
