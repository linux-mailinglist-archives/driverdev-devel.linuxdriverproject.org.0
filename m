Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 706FC355524
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Apr 2021 15:30:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C19996061D;
	Tue,  6 Apr 2021 13:30:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5dzKGayBbtIf; Tue,  6 Apr 2021 13:30:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4F1D60A9C;
	Tue,  6 Apr 2021 13:30:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D0C91BF9AD
 for <devel@linuxdriverproject.org>; Tue,  6 Apr 2021 13:30:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 187A340E75
 for <devel@linuxdriverproject.org>; Tue,  6 Apr 2021 13:30:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hXPQ-xluW6XM for <devel@linuxdriverproject.org>;
 Tue,  6 Apr 2021 13:30:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com
 [IPv6:2607:f8b0:4864:20::d2f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2903C403E7
 for <devel@driverdev.osuosl.org>; Tue,  6 Apr 2021 13:30:12 +0000 (UTC)
Received: by mail-io1-xd2f.google.com with SMTP id f19so15550897ion.3
 for <devel@driverdev.osuosl.org>; Tue, 06 Apr 2021 06:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zbkgM7EklYBgMqnsRgXu/OttXW0k5WuSVERLeYOfs6c=;
 b=YKa/dr0N4/hryeRJlHCpY30TWqqo7GaxNQfMYygCMtHN2eujpvjvFMIbxRxAEAOzrX
 IJuv5hzDc5ZXN+N87aAvcuy+cZ3Ljpezx/x5edPftTwLA3XImsRyBsG8vk/ViMTiMnO8
 6EzkJLq532/nm+WSEeyWkvZ7ZEiN+DRhbL2zE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zbkgM7EklYBgMqnsRgXu/OttXW0k5WuSVERLeYOfs6c=;
 b=JI5LLuhcCTmHwHEf0FDWq55ZE/TvQOZYCfAQa4Q6Hr/cNEzZEeh5uXHlwg+tK1FyV9
 BB0KrPcFP19SdgRQvcZOkTS7dSqCLb/hg/i5hyYko71ykTj0AciNJAzSfHD1orZF+nvl
 12vLdSi3mipxZQVOcH+TGbN+pMfJ21oR0gjFf7jZ9S0oqB4EXospNXbDBMfr8ntUeV0A
 Lr9UQnx3Ef0kJxHr0mXMMjPbmIWTrKOZtHP12J/rY25tWTzRMrViEb4nFv4MIRJLBCfR
 bLcctupGJb73ypJPV2SFKylh6faF3qtPA6F52n2QZYeXgmaM5FfSWYi2ON1NmmZM0tVL
 5+vQ==
X-Gm-Message-State: AOAM533FNyINAO0f8Y7pGVs4TxyE4A9cPxBoyxQXJWBqSO+5Qk2GCmWZ
 j5EBqOWiSa0jyo3L3JUEltXJ5VB18/vCPQ==
X-Google-Smtp-Source: ABdhPJzQUpM/ljr6xv2y6umlPoYbMcbWKRH9DHgJE4eW2VN/qBbbWIuOuFquKUYYI0045kSIP54RYA==
X-Received: by 2002:a02:ccb2:: with SMTP id t18mr28996238jap.123.1617715811036; 
 Tue, 06 Apr 2021 06:30:11 -0700 (PDT)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com.
 [209.85.166.50])
 by smtp.gmail.com with ESMTPSA id b12sm12780485ils.6.2021.04.06.06.30.09
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 06 Apr 2021 06:30:09 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id z3so12805939ioc.8
 for <devel@driverdev.osuosl.org>; Tue, 06 Apr 2021 06:30:09 -0700 (PDT)
X-Received: by 2002:a6b:8ec2:: with SMTP id
 q185mr23730961iod.150.1617715808496; 
 Tue, 06 Apr 2021 06:30:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210315123406.1523607-1-ribalda@chromium.org>
 <34c90095-bcbf-5530-786a-e709cc493fa9@linux.intel.com>
 <CANiDSCvMvYVN0+zN3du2pJfGLPJ_f7Ees2YrfybJgUDmBjq2jQ@mail.gmail.com>
 <db0bac15-01a1-5cc0-f72d-135ce5f9b788@linux.intel.com>
In-Reply-To: <db0bac15-01a1-5cc0-f72d-135ce5f9b788@linux.intel.com>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Tue, 6 Apr 2021 15:29:57 +0200
X-Gmail-Original-Message-ID: <CANiDSCujua6DYbys7EF_Qgg4XskvG0qRDOrVmAvTpZDMFtzf9g@mail.gmail.com>
Message-ID: <CANiDSCujua6DYbys7EF_Qgg4XskvG0qRDOrVmAvTpZDMFtzf9g@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] media: staging/intel-ipu3: Fix memory leak in
 imu_fmt
To: Bingbu Cao <bingbu.cao@linux.intel.com>
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Bingbu Cao <bingbu.cao@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Tianshu Qiu <tian.shu.qiu@intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Bingbu


Maybe you want to add your Reviewed-by ? ;)

Thanks!
On Wed, Mar 17, 2021 at 7:48 AM Bingbu Cao <bingbu.cao@linux.intel.com> wrote:
>
>
> On 3/17/21 1:50 AM, Ricardo Ribalda wrote:
> > Hi Bingbu
> >
> > Thanks for your review
> >
> > On Tue, Mar 16, 2021 at 12:29 PM Bingbu Cao <bingbu.cao@linux.intel.com> wrote:
> >>
> >> Hi, Ricardo
> >>
> >> Thanks for your patch.
> >> It looks fine for me, do you mind squash 2 patchsets into 1 commit?
> >
> > Are you sure? There are two different issues that we are solving.
>
> Oh, I see. I thought you were fixing 1 issue here.
> Thanks!
>
> >
> > Best regards!
> >
> >>
> >> On 3/15/21 8:34 PM, Ricardo Ribalda wrote:
> >>> We are losing the reference to an allocated memory if try. Change the
> >>> order of the check to avoid that.
> >>>
> >>> Cc: stable@vger.kernel.org
> >>> Fixes: 6d5f26f2e045 ("media: staging/intel-ipu3-v4l: reduce kernel stack usage")
> >>> Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> >>> ---
> >>>  drivers/staging/media/ipu3/ipu3-v4l2.c | 11 +++++++----
> >>>  1 file changed, 7 insertions(+), 4 deletions(-)
> >>>
> >>> diff --git a/drivers/staging/media/ipu3/ipu3-v4l2.c b/drivers/staging/media/ipu3/ipu3-v4l2.c
> >>> index 60aa02eb7d2a..35a74d99322f 100644
> >>> --- a/drivers/staging/media/ipu3/ipu3-v4l2.c
> >>> +++ b/drivers/staging/media/ipu3/ipu3-v4l2.c
> >>> @@ -693,6 +693,13 @@ static int imgu_fmt(struct imgu_device *imgu, unsigned int pipe, int node,
> >>>               if (inode == IMGU_NODE_STAT_3A || inode == IMGU_NODE_PARAMS)
> >>>                       continue;
> >>>
> >>> +             /* CSS expects some format on OUT queue */
> >>> +             if (i != IPU3_CSS_QUEUE_OUT &&
> >>> +                 !imgu_pipe->nodes[inode].enabled) {
> >>> +                     fmts[i] = NULL;
> >>> +                     continue;
> >>> +             }
> >>> +
> >>>               if (try) {
> >>>                       fmts[i] = kmemdup(&imgu_pipe->nodes[inode].vdev_fmt.fmt.pix_mp,
> >>>                                         sizeof(struct v4l2_pix_format_mplane),
> >>> @@ -705,10 +712,6 @@ static int imgu_fmt(struct imgu_device *imgu, unsigned int pipe, int node,
> >>>                       fmts[i] = &imgu_pipe->nodes[inode].vdev_fmt.fmt.pix_mp;
> >>>               }
> >>>
> >>> -             /* CSS expects some format on OUT queue */
> >>> -             if (i != IPU3_CSS_QUEUE_OUT &&
> >>> -                 !imgu_pipe->nodes[inode].enabled)
> >>> -                     fmts[i] = NULL;
> >>>       }
> >>>
> >>>       if (!try) {
> >>>
> >>
> >> --
> >> Best regards,
> >> Bingbu Cao
> >
> >
> >
>
> --
> Best regards,
> Bingbu Cao



-- 
Ricardo Ribalda
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
