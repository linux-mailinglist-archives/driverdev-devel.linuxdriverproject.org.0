Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D85F1B1DCA
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Apr 2020 06:56:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 762092153F;
	Tue, 21 Apr 2020 04:56:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5QaPyuEf2sW5; Tue, 21 Apr 2020 04:56:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 46E0C1FEB7;
	Tue, 21 Apr 2020 04:56:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BFF491BF44A
 for <devel@linuxdriverproject.org>; Tue, 21 Apr 2020 04:56:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BC85487EB0
 for <devel@linuxdriverproject.org>; Tue, 21 Apr 2020 04:56:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id En45vBnYgrIv for <devel@linuxdriverproject.org>;
 Tue, 21 Apr 2020 04:56:04 +0000 (UTC)
X-Greylist: delayed 01:12:17 by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9D0EF87E6D
 for <devel@driverdev.osuosl.org>; Tue, 21 Apr 2020 04:56:04 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id w2so9283517edx.4
 for <devel@driverdev.osuosl.org>; Mon, 20 Apr 2020 21:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1M1DoXOdUlhQRL4Qj1HrgtXV2Fi+FRpwecNzeFqUTZQ=;
 b=CQ9de2kVBGWn9Z04tve7cCLx61Dpcvb/5S6Slzj/ATMQ0BoVskM3YyKzWAg9jYz3tc
 IPizYoYSQ2s7ES4UZM/7dSfZlFcoeci1cLSV+l/Yz81fYGgTA848/bK8RN7bui0U2igs
 kHuNAsuxrszzxqnFrE+D+8IdWuaqvd0289KawEZQuFP3XScYqpy57EU1rPGcK2IZvEmw
 1q6FIlsKuC14w62QOsUIAw68DNejrBYCm/w2hsoko6z/tnz7zCDSZoDgiWRTcjuxd1GH
 b08yvQtN98WYnTqxTESnMt1HIODO8Ft3NMb3VLxWYf5gZlnEb+Rb6yfknOYOLPgDrjBp
 uOKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1M1DoXOdUlhQRL4Qj1HrgtXV2Fi+FRpwecNzeFqUTZQ=;
 b=HJydO5vIbfbVnjTz3OmrxIehMYwRs+Tn69+5ZosEtdFZXayNKW9QKHjEYzKTqP7K5N
 9e3HBiPD/86jTqx2Ti1ZZrLRXMxTdXk0+gIdf2eua3oiYDsf2ZQ+rrPNvRplu4KcPVn0
 f2MhMNxzW3AezGQpTr8dvrOdodZskk/GAp3CF4M7RXgpewprro8ktt9+kSZc1eLjfwS3
 sJSJj+PjqnJeUpPf+rbyuGSx8JcqUytGvc/spTdM2SyM7JeUS0kh8OkiprLIWjcBRXeL
 2eOhaW1d6mNskeVDJcoChZ564x0doqRj437RouFWtFGs1xXDFY6zkGEXMqO5fTfrFmCY
 18uw==
X-Gm-Message-State: AGi0PuZfeOEsH/PgIIPPt5QbulQXM8hJvj4XJ2pICASJ1fT1BtdPsJED
 rY9xuspOC1xY3oc4i8Nq+imb3tIqdRCXuqSb/Zj8RhTgCLClOw==
X-Google-Smtp-Source: APiQypJrnbCg586F3RRfsGWowjSozTcpWdO70rhIB/MY8ymwiIrrdTj9yzfCykTQrFMiLPyMhRv8Hybyr0RVyzi6SwA=
X-Received: by 2002:a17:906:680b:: with SMTP id
 k11mr19174590ejr.46.1587439039335; 
 Mon, 20 Apr 2020 20:17:19 -0700 (PDT)
MIME-Version: 1.0
References: <56aaef4ea1c26d90952841fa32b2a14bcc27582a.1587401141.git.mchehab+huawei@kernel.org>
In-Reply-To: <56aaef4ea1c26d90952841fa32b2a14bcc27582a.1587401141.git.mchehab+huawei@kernel.org>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Tue, 21 Apr 2020 00:17:08 -0300
Message-ID: <CAAEAJfD=UtEDb4cgM_kqm7fJuwpDm3rMN+O1GuNY+NcBupzqwA@mail.gmail.com>
Subject: Re: [PATCH] media: staging: rkisp1 Kconfig: depends on OF
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Mauro, Randy,

On Mon, 20 Apr 2020 at 13:45, Mauro Carvalho Chehab
<mchehab+huawei@kernel.org> wrote:
>
> building it with a random config causes a warning:
>
> WARNING: unmet direct dependencies detected for PHY_ROCKCHIP_DPHY_RX0
>   Depends on [n]: STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=y] && (ARCH_ROCKCHIP || COMPILE_TEST [=y]) && OF [=n]
>   Selected by [y]:
>   - VIDEO_ROCKCHIP_ISP1 [=y] && STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=y] && VIDEO_V4L2 [=y] && (ARCH_ROCKCHIP || COMPILE_TEST [=y])
>
> Cc: Stephen Rothwell <sfr@canb.auug.org.au>
> Reported-by: Randy Dunlap <rdunlap@infradead.org>
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

Thanks for the patch. Please note this warning (plus another one),
is already fixed by a couple patches in this series:

https://patchwork.linuxtv.org/project/linux-media/list/?series=2094

Also, Arnd sent a similar fix recently:

https://lkml.org/lkml/2020/4/8/596

The series I posted is acked by Helen and should fix all issues,
so perhaps you can merge it before more people keep finding this :-)

Thanks,
Ezequiel

> ---
>  drivers/staging/media/rkisp1/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/rkisp1/Kconfig b/drivers/staging/media/rkisp1/Kconfig
> index 5ecbefa0f5ec..07e4a6e4458e 100644
> --- a/drivers/staging/media/rkisp1/Kconfig
> +++ b/drivers/staging/media/rkisp1/Kconfig
> @@ -2,7 +2,7 @@
>
>  config VIDEO_ROCKCHIP_ISP1
>         tristate "Rockchip Image Signal Processing v1 Unit driver"
> -       depends on VIDEO_V4L2
> +       depends on VIDEO_V4L2 && OF
>         depends on ARCH_ROCKCHIP || COMPILE_TEST
>         select MEDIA_CONTROLLER
>         select VIDEO_V4L2_SUBDEV_API
> --
> 2.25.2
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
