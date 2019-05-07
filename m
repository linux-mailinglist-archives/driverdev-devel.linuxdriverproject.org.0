Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3154C16C80
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 22:45:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3B9BC86E2A;
	Tue,  7 May 2019 20:45:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5zDbyP3iCzH1; Tue,  7 May 2019 20:45:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6BA5986DB2;
	Tue,  7 May 2019 20:45:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 705671BF363
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 20:45:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6A7FB86237
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 20:45:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kukvaOnyAoNU for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 20:44:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 58A0E86234
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 20:44:59 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id c15so1881585qkl.2
 for <devel@driverdev.osuosl.org>; Tue, 07 May 2019 13:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UP2eq+cYSzhGvfAYCpFF2xETR/P1KUhUjm8i1vOg6uU=;
 b=NzuaRLfv+6qA0uy9JdvuLZqOsit+Wew37fdzFRTnnQ+zB/E7YTqs7Jet1FGsPEXP0r
 igACnTaJYPeoTn3mUYb+S9yO3v+GugtMpJNOas7OnmgQHh51kDiWO9y/7DXU5Tuf9IE5
 Rm9CHG3Y1GrShoahCpJojXGUnKLPBi7sPxsHF65oe3TCgqxNz5VQwmD2UOFBcxzVb0Rd
 PITRMPcGXG1hy/F7Gn7Ocgznwcss7C9dZBvYeBqgAFpFoeA8fZ2RUkl2AFYHFnCRYWgi
 kLw6ReX/kbDbuA+SWw+X5XIzAPwRL3U/hli8lCX9/iMvutfNu1JWsVQOfanUwifODEnJ
 KD+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UP2eq+cYSzhGvfAYCpFF2xETR/P1KUhUjm8i1vOg6uU=;
 b=ki1r3J/nenkan1t/cPXRfAacSSD2mYxMGz9vNY79YyoYgyw9r7041yZFNc/2OK1Bvw
 7u/x1+GUv/HTFftgxtk9Jr090BERasPQJlc7O6Tq6FDcvpGcR4DPLcJ/JUwlvWGRimL6
 oQ6uIlS1WyzToCPBWirao0Bav1YfKmTv+C2IslDz3+XEopRjEnBLELjekzBU1wPCzt/b
 SCZ9zqojPTtpOYZNj3ZSfWenJegnGEwXmXTfL1rCXG6zBUbDxwwsrhvXVTmUdg3JvrHs
 M+eiQVjIoqeQidvpPuwKRR79ZuPjRYMdSVhYayver6Ak4lLkoSrdaVkFOyA4OqvSIOg7
 alOA==
X-Gm-Message-State: APjAAAWKmhO+XjbmFRCMPrKmrfsVourxeRBkBnL7ms8Lm4/h6kv2kXte
 LTDIV5Mjm4Q2Uu8SrWZtChA=
X-Google-Smtp-Source: APXvYqxX9ChVaTvY07JZGcAfgSHd8lke+t60DfiWr72RfamOOERMP4NuOxzFVgkP7ZcLGc4dzldB9g==
X-Received: by 2002:a05:620a:1015:: with SMTP id
 z21mr16865140qkj.229.1557261898488; 
 Tue, 07 May 2019 13:44:58 -0700 (PDT)
Received: from smtp.gmail.com ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id v141sm8777723qka.35.2019.05.07.13.44.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 07 May 2019 13:44:57 -0700 (PDT)
From: Melissa Wen <melissa.srw@gmail.com>
X-Google-Original-From: Melissa Wen <melissa.srw>
Date: Tue, 7 May 2019 17:44:56 -0300
To: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
Subject: Re: [PATCH 2/4] staging: iio: ad7150: use FIELD_GET and GENMASK
Message-ID: <20190507204456.wwjjkeuzq44jy7w7@smtp.gmail.com>
References: <cover.1556919363.git.melissa.srw@gmail.com>
 <7f7d36348bca1de25bd70350b7c665be6441250f.1556919363.git.melissa.srw@gmail.com>
 <CA+U=Dso6zSLzhhdiZcc+P4-2zcabxnoMd2539HmofTXrtYoKDQ@mail.gmail.com>
 <179d019c34cc69e50f19499a6089ac94740b59f5.camel@analog.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <179d019c34cc69e50f19499a6089ac94740b59f5.camel@analog.com>
User-Agent: NeoMutt/20180716
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "lars@metafoo.de" <lars@metafoo.de>, "Hennerich,
 Michael" <Michael.Hennerich@analog.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "21cnbao@gmail.com" <21cnbao@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel-usp@googlegroups.com" <kernel-usp@googlegroups.com>,
 "melissa.srw@gmail.com" <melissa.srw@gmail.com>,
 "ardeleanalex@gmail.com" <ardeleanalex@gmail.com>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "Popa, Stefan Serban" <StefanSerban.Popa@analog.com>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 05/06, Ardelean, Alexandru wrote:
> On Sat, 2019-05-04 at 13:43 +0300, Alexandru Ardelean wrote:
> > [External]
> > 
> > 
> > On Sat, May 4, 2019 at 1:25 AM Melissa Wen <melissa.srw@gmail.com> wrote:
> > > 
> > > Use the bitfield macro FIELD_GET, and GENMASK to do the shift and mask
> > > in
> > > one go. This makes the code more readable than explicit masking
> > > followed
> > > by a shift.
> > > 
> > 
> > This looks neat.
> > I'd have to remember to ack it from my work email.
> 
> Acked-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
> 
> > 
> > One minor comment inline, which would be the object of a new patch.
> > 
> > > Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
> > > ---
> > >  drivers/staging/iio/cdc/ad7150.c | 6 +++++-
> > >  1 file changed, 5 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/staging/iio/cdc/ad7150.c
> > > b/drivers/staging/iio/cdc/ad7150.c
> > > index 24601ba7db88..4ba46fb6ac02 100644
> > > --- a/drivers/staging/iio/cdc/ad7150.c
> > > +++ b/drivers/staging/iio/cdc/ad7150.c
> > > @@ -5,6 +5,7 @@
> > >   * Copyright 2010-2011 Analog Devices Inc.
> > >   */
> > > 
> > > +#include <linux/bitfield.h>
> > >  #include <linux/interrupt.h>
> > >  #include <linux/device.h>
> > >  #include <linux/kernel.h>
> > > @@ -44,6 +45,9 @@
> > >  #define AD7150_SN0_REG                         0x16
> > >  #define AD7150_ID_REG                          0x17
> > > 
> > > +/* AD7150 masks */
> > > +#define AD7150_THRESHTYPE_MSK                  GENMASK(6, 5)
> > > +
> > >  /**
> > >   * struct ad7150_chip_info - instance specific chip data
> > >   * @client: i2c client for this device
> > > @@ -136,7 +140,7 @@ static int ad7150_read_event_config(struct iio_dev
> > > *indio_dev,
> > >         if (ret < 0)
> > >                 return ret;
> > > 
> > > -       threshtype = (ret >> 5) & 0x03;
> > > +       threshtype = FIELD_GET(AD7150_THRESHTYPE_MSK, ret);
> > >         adaptive = !!(ret & 0x80);
> > 
> > Why not also do something similar for the `adaptive` value ?

Hi Alexandru,

Yes, I'm working on it!  However, taking a look at the driver datasheet (Table
13, page 19), there seems to be a little mistake in choosing the variable name
and its meaning,  since when bit(7) is 1 (true) the threshold is fixed, and not
adaptive. For this reason, I removed it from this patchset to mature the
solution. I will send it as a bug fix if I prove it's necessary.
Do you have any advice or feeling about it to share?

P.s.: Sorry for having previously sent an email with HTML.

Melissa

> > 
> > > 
> > >         switch (type) {
> > > --
> > > 2.20.1
> > > 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
