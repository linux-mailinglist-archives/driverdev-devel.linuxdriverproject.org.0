Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6419C1E886F
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 May 2020 22:04:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D0989875BF;
	Fri, 29 May 2020 20:04:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 58CInToKkmfo; Fri, 29 May 2020 20:04:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A68B875AC;
	Fri, 29 May 2020 20:04:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 15F2E1BF5F6
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:04:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E7EA3221B1
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:04:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ckEPixdvr8ZR for <devel@linuxdriverproject.org>;
 Fri, 29 May 2020 20:04:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 7843322177
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 20:04:18 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id d3so1676210pln.1
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 13:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4+g7Oezu2RunpZeGCvY0b0s77w8UFoTcEBsYnh2aCmE=;
 b=oIkV2IwxnKvjZgJ+qdLb8Jx8V/wvhITFMVzbJY5nzmFPezh71a7tDAioCbghNilrqs
 yf84zuHV81ZntwYnrKWyOTM34RfkWDtvc91CAwfcOb5HwHt6B4JGIuGTCe/wMOHB291r
 CTJHTLRbWq9I5PCPnqdJ53R1Y2qNC0FTlRUaecb83hWz+ZlkIRBlsB3o7WcIpN7t0ZN6
 VFJHEH0lA2f4glK3hI6hWda5gKLsfuVoRvyNDt5Qf5nuhAhRM4Pyl8lucO5iZ2oOMKmZ
 OpsQLoTKWgx/PG4/O3BnWMpiV0OLPhRPx3kbaB4J9OwG6eMdDqLVuPffUlG4qP0nvm++
 bcvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4+g7Oezu2RunpZeGCvY0b0s77w8UFoTcEBsYnh2aCmE=;
 b=SxqDfWtdZpiymIYsLB6PQJPojyzoIjyAksgOuCaQlnJVEsK7FYQ5M+YOgjjXVPAhlp
 l4ENCyQ8wuKqAKYmfargBKPsYM5eYHIL/JPxahGGyTYlQ1bH2rv7V19jii8hVnjwLqy/
 AyYKNzQLdycyrNeMv+1x1vZrJ0TcQWcRG2zoP4Rq0llDlkOxojWA8eHUtLVAxC44flMv
 HcMB6CvCPPtzjIFy+vMrKcS5E5R9aOVPqX+hepqEtGNut48Q1iSVCTYWFzjS3pUD0AGg
 shB2Z78K84s865NAX/E4MFaSm6dF9efsO7bNtpairFJfwDxuxGtiEWT+khP4OewuZ4nu
 ijDw==
X-Gm-Message-State: AOAM533NC7z1VX03x35wzJRDE0Im8bwDvFXy2qdfrv+E/IijF68/ok2m
 N9LohjR6t4GkdTdaeWARpFhBfTj3+1FXcqAKfTnG7w==
X-Google-Smtp-Source: ABdhPJzajSAOEPn628sZLoiLTrRZedjCZBAQvwF+keg7C4ztulX0K1oUk7mF8ipVkXUUgKnRHQMl+6ln2r4LRdFYT5Q=
X-Received: by 2002:a17:902:724a:: with SMTP id
 c10mr10068319pll.223.1590782657556; 
 Fri, 29 May 2020 13:04:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200529200031.4117841-1-arnd@arndb.de>
In-Reply-To: <20200529200031.4117841-1-arnd@arndb.de>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 29 May 2020 13:04:05 -0700
Message-ID: <CAKwvOdnND7XFgr7W9PvZAikJB1nKxB4K5N-oP0YrBT74oX_C9g@mail.gmail.com>
Subject: Re: [PATCH 1/9] staging: media: atomisp: fix incorrect NULL pointer
 check
To: Arnd Bergmann <arnd@arndb.de>
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
Cc: devel@driverdev.osuosl.org, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

See also Nathan's 7 patch series.
https://lore.kernel.org/lkml/20200527071150.3381228-1-natechancellor@gmail.com/

Might be some overlap between series?

On Fri, May 29, 2020 at 1:00 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Checking the pointer to a member of a struct against NULL
> is pointless as clang points out:
>
> drivers/staging/media/atomisp/pci/atomisp_cmd.c:4278:17: error: address of 'config->info' will always evaluate to 'true'
>
> Check the original pointer instead, which may also be
> unnecessary here, but makes a little more sense.
>
> Fixes: 9d4fa1a16b28 ("media: atomisp: cleanup directory hierarchy")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/staging/media/atomisp/pci/atomisp_cmd.c | 2 +-
>  drivers/staging/media/atomisp/pci/sh_css.c      | 4 ++--
>  drivers/staging/media/atomisp/pci/sh_css_sp.c   | 4 ++--
>  3 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
> index 5be690f876c1..342fc3b34fe0 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
> @@ -4275,7 +4275,7 @@ int atomisp_param(struct atomisp_sub_device *asd, int flag,
>                     atomisp_css_get_dvs_grid_info(
>                         &asd->params.curr_grid_info);
>
> -               if (!&config->info) {
> +               if (!config) {
>                         dev_err(isp->dev, "ERROR: NULL pointer in grid_info\n");
>                         return -EINVAL;
>                 }
> diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
> index d77432254a2c..e91c6029c651 100644
> --- a/drivers/staging/media/atomisp/pci/sh_css.c
> +++ b/drivers/staging/media/atomisp/pci/sh_css.c
> @@ -8534,7 +8534,7 @@ ia_css_pipe_load_extension(struct ia_css_pipe *pipe,
>
>         if (firmware->info.isp.type == IA_CSS_ACC_OUTPUT)
>         {
> -               if (&pipe->output_stage)
> +               if (pipe)
>                         append_firmware(&pipe->output_stage, firmware);
>                 else {
>                         IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INTERNAL_ERROR);
> @@ -8542,7 +8542,7 @@ ia_css_pipe_load_extension(struct ia_css_pipe *pipe,
>                 }
>         } else if (firmware->info.isp.type == IA_CSS_ACC_VIEWFINDER)
>         {
> -               if (&pipe->vf_stage)
> +               if (pipe)
>                         append_firmware(&pipe->vf_stage, firmware);
>                 else {
>                         IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INTERNAL_ERROR);
> diff --git a/drivers/staging/media/atomisp/pci/sh_css_sp.c b/drivers/staging/media/atomisp/pci/sh_css_sp.c
> index e574396ad0f4..c0e579c1705f 100644
> --- a/drivers/staging/media/atomisp/pci/sh_css_sp.c
> +++ b/drivers/staging/media/atomisp/pci/sh_css_sp.c
> @@ -1022,7 +1022,7 @@ sh_css_sp_init_stage(struct ia_css_binary *binary,
>                 if (!pipe)
>                         return IA_CSS_ERR_INTERNAL_ERROR;
>                 ia_css_get_crop_offsets(pipe, &args->in_frame->info);
> -       } else if (&binary->in_frame_info)
> +       } else if (binary)
>         {
>                 pipe = find_pipe_by_num(sh_css_sp_group.pipe[thread_id].pipe_num);
>                 if (!pipe)
> @@ -1036,7 +1036,7 @@ sh_css_sp_init_stage(struct ia_css_binary *binary,
>                         if (!pipe)
>                                 return IA_CSS_ERR_INTERNAL_ERROR;
>                         ia_css_get_crop_offsets(pipe, &args->in_frame->info);
> -               } else if (&binary->in_frame_info) {
> +               } else if (binary) {
>                         pipe = find_pipe_by_num(sh_css_sp_group.pipe[thread_id].pipe_num);
>                         if (!pipe)
>                                 return IA_CSS_ERR_INTERNAL_ERROR;
> --
> 2.26.2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200529200031.4117841-1-arnd%40arndb.de.



-- 
Thanks,
~Nick Desaulniers
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
