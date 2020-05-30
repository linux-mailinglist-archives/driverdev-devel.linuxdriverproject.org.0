Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 391C71E8D49
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 May 2020 04:57:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 96D9F893D2;
	Sat, 30 May 2020 02:57:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UL9skHkYAr-X; Sat, 30 May 2020 02:57:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC9FD892AF;
	Sat, 30 May 2020 02:57:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1605E1BF5AE
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 02:57:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E032C21567
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 02:57:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7L3TUCDq-CVB for <devel@linuxdriverproject.org>;
 Sat, 30 May 2020 02:57:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 0222E203EA
 for <devel@driverdev.osuosl.org>; Sat, 30 May 2020 02:57:38 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id k2so2261913pjs.2
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 19:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=if6Kiedn+UJmCI3/EUhY4zmCmyfoaJuGcUVlUj9uKZs=;
 b=nRo1FWr6/J08csd5YTfXQi7muv6m3m8HaqiPrcRSRleWkrnixq+NlKd1iFJYv/5FIm
 ZV/GjVFWp7hsJK9OqQ2siN6e1OsCHll0+dTRnz2QJ1V5Vam8p1Ez69xy/XtGWltYLqC2
 kZA0SlkmB6g6uYIQ6ShNZY6L56H/3G0iXcTb2sipjpkrKTqbnKHCm7O4/dL5+Vw4jUI6
 URRW91r7HGhn3zrY3malFPE4BnyoWy59M+3vstpq/jJ9IKaGFN+l2WQwV3HovVcBlaN3
 Zb74l/18YwnZDC95U2+Wk/FmTnOVTOPv7A0PKPXqPF5EyEjedECoNWjUc9zKx9JFbW7M
 H5LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=if6Kiedn+UJmCI3/EUhY4zmCmyfoaJuGcUVlUj9uKZs=;
 b=D6qBIx+HGItM6XZzB0oOMKmQmWMOJmec1nQAoehF8ENhHEfsEiRs0r4rt7yVregyQY
 ojPVKIZX3eQ79nC6ZaSzP50K3ixcLj19e9xtOOgIHJGdqD7deQzUXpLDyCNGOQ0RJxD3
 PTa9ETjILz4RqKgAg4II7jSU5ITpVnhzQhMo036YGkJSRD09axxWOUrKgSfnbMiONbbs
 Vct4d2FrSD6wTOt+SVC4MLl21cCG0qgWYP7X0Ujp8hJl1PUX4ahNxHtxYms21njQAozN
 DFrVLecFFginwXcSbeJGRBSHeT8iicRjyhMq++4niVI46vJGHZTKdt2zSgh293CjZha1
 p/bQ==
X-Gm-Message-State: AOAM533U8kkWipEK6FYfHxMn8CBl4p3VLAoIh7xG2N+FRzpIyXUbhxiI
 Lro42yd0ZSqXF5ziIJQasu0lTvBu
X-Google-Smtp-Source: ABdhPJws4M1VtYgZQKyx750y6ALke8WHGLS3lix0xK9zPan/4iWuiY8FwmB51H/WRIbkr8vGyX9S/A==
X-Received: by 2002:a17:902:b40e:: with SMTP id
 x14mr1160203plr.285.1590807458510; 
 Fri, 29 May 2020 19:57:38 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id q145sm8359604pfq.128.2020.05.29.19.57.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 19:57:38 -0700 (PDT)
Date: Fri, 29 May 2020 19:57:35 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 5/9] staging: media: atomisp: fix stack overflow in
 init_pipe_defaults()
Message-ID: <20200530025735.GC1367069@ubuntu-s3-xlarge-x86>
References: <20200529200031.4117841-1-arnd@arndb.de>
 <20200529200031.4117841-5-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529200031.4117841-5-arnd@arndb.de>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 29, 2020 at 10:00:27PM +0200, Arnd Bergmann wrote:
> When building with clang, multiple copies of the structures to be
> initialized are passed around on the stack and copied locally, using an
> insane amount of stack space:
> 
> drivers/staging/media/atomisp/pci/sh_css.c:2371:1: error: stack frame size of 26864 bytes in function 'create_pipe' [-Werror,-Wframe-larger-than=]
> 
> Use constantly-allocated variables plus an explicit memcpy()
> to avoid that.
> 
> Fixes: 6dc9a2568f84 ("media: atomisp: convert default struct values to use compound-literals with designated initializers")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/staging/media/atomisp/pci/sh_css.c | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
> index e91c6029c651..1e8b9d637116 100644
> --- a/drivers/staging/media/atomisp/pci/sh_css.c
> +++ b/drivers/staging/media/atomisp/pci/sh_css.c
> @@ -2264,6 +2264,12 @@ static enum ia_css_err
>  init_pipe_defaults(enum ia_css_pipe_mode mode,
>  		   struct ia_css_pipe *pipe,
>  		   bool copy_pipe) {
> +	static const struct ia_css_pipe default_pipe = IA_CSS_DEFAULT_PIPE;
> +	static const struct ia_css_preview_settings preview = IA_CSS_DEFAULT_PREVIEW_SETTINGS;
> +	static const struct ia_css_capture_settings capture = IA_CSS_DEFAULT_CAPTURE_SETTINGS;
> +	static const struct ia_css_video_settings video = IA_CSS_DEFAULT_VIDEO_SETTINGS;
> +	static const struct ia_css_yuvpp_settings yuvpp = IA_CSS_DEFAULT_YUVPP_SETTINGS;
> +
>  	if (!pipe)
>  	{
>  		IA_CSS_ERROR("NULL pipe parameter");
> @@ -2271,14 +2277,14 @@ init_pipe_defaults(enum ia_css_pipe_mode mode,
>  	}
>  
>  	/* Initialize pipe to pre-defined defaults */
> -	*pipe = IA_CSS_DEFAULT_PIPE;
> +	memcpy(pipe, &default_pipe, sizeof(default_pipe));
>  
>  	/* TODO: JB should not be needed, but temporary backward reference */
>  	switch (mode)
>  	{
>  	case IA_CSS_PIPE_MODE_PREVIEW:
>  		pipe->mode = IA_CSS_PIPE_ID_PREVIEW;
> -		pipe->pipe_settings.preview = IA_CSS_DEFAULT_PREVIEW_SETTINGS;
> +		memcpy(&pipe->pipe_settings.preview, &preview, sizeof(preview));
>  		break;
>  	case IA_CSS_PIPE_MODE_CAPTURE:
>  		if (copy_pipe) {
> @@ -2286,11 +2292,11 @@ init_pipe_defaults(enum ia_css_pipe_mode mode,
>  		} else {
>  			pipe->mode = IA_CSS_PIPE_ID_CAPTURE;
>  		}
> -		pipe->pipe_settings.capture = IA_CSS_DEFAULT_CAPTURE_SETTINGS;
> +		memcpy(&pipe->pipe_settings.capture, &capture, sizeof(capture));
>  		break;
>  	case IA_CSS_PIPE_MODE_VIDEO:
>  		pipe->mode = IA_CSS_PIPE_ID_VIDEO;
> -		pipe->pipe_settings.video = IA_CSS_DEFAULT_VIDEO_SETTINGS;
> +		memcpy(&pipe->pipe_settings.video, &video, sizeof(video));
>  		break;
>  	case IA_CSS_PIPE_MODE_ACC:
>  		pipe->mode = IA_CSS_PIPE_ID_ACC;
> @@ -2300,7 +2306,7 @@ init_pipe_defaults(enum ia_css_pipe_mode mode,
>  		break;
>  	case IA_CSS_PIPE_MODE_YUVPP:
>  		pipe->mode = IA_CSS_PIPE_ID_YUVPP;
> -		pipe->pipe_settings.yuvpp = IA_CSS_DEFAULT_YUVPP_SETTINGS;
> +		memcpy(&pipe->pipe_settings.yuvpp, &yuvpp, sizeof(yuvpp));
>  		break;
>  	default:
>  		return IA_CSS_ERR_INVALID_ARGUMENTS;
> -- 
> 2.26.2
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
