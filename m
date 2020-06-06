Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A281F0697
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Jun 2020 14:52:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5012988569;
	Sat,  6 Jun 2020 12:52:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bM18XEnlNftN; Sat,  6 Jun 2020 12:52:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 15C5387FC3;
	Sat,  6 Jun 2020 12:52:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A89D71BF28B
 for <devel@linuxdriverproject.org>; Sat,  6 Jun 2020 12:52:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 94B3F2050F
 for <devel@linuxdriverproject.org>; Sat,  6 Jun 2020 12:52:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vnsMPcPGl-CU for <devel@linuxdriverproject.org>;
 Sat,  6 Jun 2020 12:52:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 546B2204C6
 for <devel@driverdev.osuosl.org>; Sat,  6 Jun 2020 12:52:15 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id m21so9590879eds.13
 for <devel@driverdev.osuosl.org>; Sat, 06 Jun 2020 05:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aIiB9wvX9JqQxrAQEQ3KjZ3Kb+hdGI9GFJ+OCHkh9og=;
 b=de2zzi92V7UV3Gre9gbtutLsXA4WJD3hagaFTOKIH8+eS1vYOtUvDoc/XuwBKh4uQP
 e9NiTKyJQPAG9XeY7Rb95UJiNMz/puFFss53KYpUZquETFzmPrRLWv1gSQShuX7HfVsW
 zRhdYKruBxFscBPt0xwRigKPtgTOnXuUJcggq8VxCD21zEyrV8VZhcXJh/U8W9eLOLpB
 2052nsmQu7wB6O5n20l06RPz/IIVUwfICrBH3J2aN4c/BF6GrVj4xPecrDc6DKNmbJdy
 UzOKWZD0ylddth/9F83ZyRPCWoSDLqrEpXczRrevS3FSgmPNj+sG5BJUBIbEFCQG1lbs
 x2Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aIiB9wvX9JqQxrAQEQ3KjZ3Kb+hdGI9GFJ+OCHkh9og=;
 b=K3XwbmYcpvMHl1oB+oqMYgW4oTxtWfVyo3SYfEidrEOcuAbYDiJ+WQrIYRleWRBhkT
 1JCqPdvBqdlR7yot6oRIEbHQIG4q/fIprfjYkj1bneIPvp7ldMVTNdBy36AdnQtfgLhN
 HP5FidgujyVzc++mpU5HPT3joKxFHAYvkCD7zbAL9tC6UdF/TxxIZ5t/0/1LQy/OCdte
 kfECTkZBJ5kc9SYYDWXge6zI6fOHpwhnEoNtGpJbdbx9tYG/K4qtjpVNzXkx7Dkj/Gy9
 NJv+j2WzXJAvSBILe2WAdPY1IaaA7pZLdjgFqtQJT2TntlYtsNcrhGQquGr0IaaJDOlv
 3Nuw==
X-Gm-Message-State: AOAM531eIBtIsD/I2fo0ToAfQfzDw+FIEJfQavoFMH3ariRcVI9wVdSw
 tDaIm1cTNzdW29WLheclRk3RHyBCwuknKTcRrXiwsZbn
X-Google-Smtp-Source: ABdhPJyPvvoYluZBC3s7eE4x/0+LkycVv8WiYm6kXWtzdvr1YayZBLWOHgcV1e/KPcoA+621WfgYDoiYIFKCEkD9dzU=
X-Received: by 2002:a17:906:d216:: with SMTP id
 w22mr12635147ejz.420.1591447581711; 
 Sat, 06 Jun 2020 05:46:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200604185745.23568-1-jernej.skrabec@siol.net>
In-Reply-To: <20200604185745.23568-1-jernej.skrabec@siol.net>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Sat, 6 Jun 2020 09:46:10 -0300
Message-ID: <CAAEAJfDFMzMkDkN7zzNvkwsmYzgQPNGkP=dhW7neycYYRBJzHA@mail.gmail.com>
Subject: Re: [PATCH 0/3] media: uapi: cedrus: Fix decoding interlaced H264
 content
To: Jernej Skrabec <jernej.skrabec@siol.net>
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
Cc: devel@driverdev.osuosl.org, Jonas Karlman <jonas@kwiboo.se>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Jernej,

On Thu, 4 Jun 2020 at 15:55, Jernej Skrabec <jernej.skrabec@siol.net> wrote:
>
> Currently H264 interlaced content it's not properly decoded on Cedrus.
> There are two reasons for this:
> 1. slice parameters control doesn't provide enough information
> 2. bug in frame list construction in Cedrus driver
>
> As described in commit message in patch 1, references stored in
> reference lists should tell if reference targets top or bottom field.
> However, this information is currently not provided. Patch 1 adds
> it in form of flags which are set for each reference. Patch 2 then
> uses those flags in Cedrus driver.
>
> Frame list construction is fixed in patch 3.
>
> This solution was extensively tested using Kodi on LibreELEC with A64,
> H3, H5 and H6 SoCs in slightly different form (flags were transmitted
> in MSB bits in index).
>

So, if I understand correctly the field needs to be passed per-reference,
and the current per-DPB entry is not good?

If you could point at the userspace code for this, it would be interesting
to take a look.

> Note: I'm not 100% sure if flags for both, top and bottom fields are
> needed. Any input here would be welcome.
>

Given enum v4l2_field is already part of the uAPI, perhaps it makes
sense to just reuse that for the field type? Maybe it's an overkill,
but it would make sense to reuse the concepts and types that
already exist.

We can still add a reserved field to make this new reference type
extensive.

Thanks,
Ezequiel


> Please take a look.
>
> Best regards,
> Jernej
>
> Jernej Skrabec (3):
>   media: uapi: h264: update reference lists
>   media: cedrus: h264: Properly configure reference field
>   media: cedrus: h264: Fix frame list construction
>
>  .../media/v4l/ext-ctrls-codec.rst             | 40 ++++++++++++++++++-
>  .../staging/media/sunxi/cedrus/cedrus_h264.c  | 27 +++++++------
>  include/media/h264-ctrls.h                    | 12 +++++-
>  3 files changed, 62 insertions(+), 17 deletions(-)
>
> --
> 2.27.0
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
