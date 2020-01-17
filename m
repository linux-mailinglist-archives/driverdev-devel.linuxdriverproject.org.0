Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5285714143E
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jan 2020 23:41:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 025158698D;
	Fri, 17 Jan 2020 22:41:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CvONhz34LEEc; Fri, 17 Jan 2020 22:41:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C130E868E8;
	Fri, 17 Jan 2020 22:41:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9869A1BF41E
 for <devel@linuxdriverproject.org>; Fri, 17 Jan 2020 22:41:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 916C122176
 for <devel@linuxdriverproject.org>; Fri, 17 Jan 2020 22:41:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8KZIfeF2gvrm for <devel@linuxdriverproject.org>;
 Fri, 17 Jan 2020 22:41:52 +0000 (UTC)
X-Greylist: delayed 00:05:14 by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by silver.osuosl.org (Postfix) with ESMTPS id D46DF221B1
 for <devel@driverdev.osuosl.org>; Fri, 17 Jan 2020 22:41:51 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id n12so19556676lfe.3
 for <devel@driverdev.osuosl.org>; Fri, 17 Jan 2020 14:41:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=J929h0KZ2ac5S3n4IESBD+8F2tDlpZH15w7wy9ZbFBE=;
 b=zHl0+Tf94O4U64JciaHt7bPupk6wRrba61Tv3DOXIKA9MsJadC1+XuT070kINEwHKI
 8CceetMF2Ob5U4Ke0uRUf2yc4klg0aH/wMV83GXDe5f0VcyPYRxSyu1jdtT4hwySBm5M
 kOh+y131rPtacbpAQdI5ACE/WT30G4S799xU4U6Kfdh/hGLdyg//9vpgRwq1QfOeMQsA
 z3xwmfvhMZC1T+zSSTuBMBmBfMlbcpdPLfvREr9w+orJw1KDxd+Sd9HE5/F4osGAuY1F
 tearJy60FK29q1Bk/6WxXqdCvcf13h9SSE7SVC6ObNBRqRYAdN6PZMQUUN1i7IjCRdcv
 QhSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=J929h0KZ2ac5S3n4IESBD+8F2tDlpZH15w7wy9ZbFBE=;
 b=ocPLtMOaF68a41+aJJuvTcLVFAYcfLLge/c/tdQhX3aBUfjH6ItNSXqpLjT7/w/6C0
 0+DkblRhS5Tp/xPFghO+/iV6iZQ3dM1mVIt7UHpwUa3ZYdGVP9IWIdtn7MvR12t4NWrs
 HDgEZDhvGK/uUKpFTQ6692b1sZlPEZNz8Wv6zQHy5cJygZJd8EMYBmKXfDtmGvi77h6s
 4EVGFWLCypje6YqeerBaTQTQ80UGKgdVhlmUqI4QJVLuy0JpjW6ypKdLqs0FDyFUC6IZ
 cPMkTsEfCmVA7FHcq+15w4w/jxjyxy5aURqFdTTxmN4KPrZ8DwZG1uDZY/EiG1jWvEyI
 ZHdg==
X-Gm-Message-State: APjAAAXNsQ2vJyM6lP2luCUzHouaTkmO8FAbDF9W3Xob/9+ZO69qsHzt
 JesXR1NK/b60JzPdoEfYZMCihQ==
X-Google-Smtp-Source: APXvYqxnljIUnAxqek19KVME46/kXejNKoBxW1Qteg6+NhVyeOUq/WgWjFhZMs+SGlvbS+CA8r/mYg==
X-Received: by 2002:ac2:4884:: with SMTP id x4mr6701991lfc.92.1579300594976;
 Fri, 17 Jan 2020 14:36:34 -0800 (PST)
Received: from localhost (h-93-159.A463.priv.bahnhof.se. [46.59.93.159])
 by smtp.gmail.com with ESMTPSA id q13sm15285410ljj.63.2020.01.17.14.36.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 14:36:34 -0800 (PST)
Date: Fri, 17 Jan 2020 23:36:34 +0100
From: Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH] staging: media: rkisp1: make links immutable by default
Message-ID: <20200117223634.GJ1074550@oden.dyn.berto.se>
References: <20200117201218.3745311-1-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117201218.3745311-1-helen.koike@collabora.com>
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 tfiga@chromium.org, laurent.pinchart@ideasonboard.com,
 hverkuil-cisco@xs4all.nl, kernel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Helen,

Thanks for your work.

On 2020-01-17 17:12:18 -0300, Helen Koike wrote:
> The only places which make sese to allow users to enable or disable
> links are:
> =

> * between sensors and isp:
> So users can select which sensor should be used while streaming
> =

> * between isp and the resizers:
>               |
>               v here
> rkisp1_isp:2 -> rkisp1_resizer_mainpath -> rkisp1_mainpath (capture)
>             \-> rkisp1_resizer_selfpath -> rkisp1_selfpath (capture)
>               ^ here
>               |
> =

> So users can disable one of the capture paths when unused, to avoid
> worring about matching formats.
> =

> Make the following links immutable to simplify userspace:
> =

> rkisp1_resizer_mainpath -> rkisp1_mainpath
> rkisp1_resizer_selfpath -> rkisp1_selfpath
> rkisp1_params           -> rkisp1_isp
> rkisp1_isp              -> rkisp1_stats
> =

> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> =

> ---
> This is the topology graph after disabling all the links with
> media -r
> http://col.la/rkisp1immutable
> =

> Dashed links are the only one can can be enabled/disabled, the others
> are immutable.
> =

>  drivers/staging/media/rkisp1/rkisp1-dev.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/=
media/rkisp1/rkisp1-dev.c
> index 558126e66465..4030d5e71af1 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-dev.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
> @@ -145,14 +145,15 @@ static int rkisp1_create_links(struct rkisp1_device=
 *rkisp1)
>  		flags =3D 0;
>  	}
>  =

> -	flags =3D MEDIA_LNK_FL_ENABLED;
> +	flags =3D MEDIA_LNK_FL_ENABLED | MEDIA_LNK_FL_IMMUTABLE;
>  =

>  	/* create ISP->RSZ->CAP links */
>  	for (i =3D 0; i < 2; i++) {
>  		source =3D &rkisp1->isp.sd.entity;
>  		sink =3D &rkisp1->resizer_devs[i].sd.entity;

nit: To keep with the style of the rest of the function I would set =

flags here and once more bellow in the same loop.

With or without this fixed,

Reviewed-by: Niklas S=F6derlund <niklas.soderlund@ragnatech.se>

>  		ret =3D media_create_pad_link(source, RKISP1_ISP_PAD_SOURCE_VIDEO,
> -					    sink, RKISP1_RSZ_PAD_SINK, flags);
> +					    sink, RKISP1_RSZ_PAD_SINK,
> +					    MEDIA_LNK_FL_ENABLED);
>  		if (ret)
>  			return ret;
>  =

> -- =

> 2.24.0
> =


-- =

Regards,
Niklas S=F6derlund
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
