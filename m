Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 287AD13AB9
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 16:42:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 50BCC85F88;
	Sat,  4 May 2019 14:42:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UoPNVLc3BgJp; Sat,  4 May 2019 14:42:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CCA7685ABB;
	Sat,  4 May 2019 14:42:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 33D191BF2F2
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 14:42:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3081784C20
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 14:42:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eLPzB5+5AWbc for <devel@linuxdriverproject.org>;
 Sat,  4 May 2019 14:42:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 71A0A84BCF
 for <devel@driverdev.osuosl.org>; Sat,  4 May 2019 14:42:21 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id a7so1328376oie.13
 for <devel@driverdev.osuosl.org>; Sat, 04 May 2019 07:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r9bJ5mQH0bFiSdzMFFB9aG/I/ocJ8zclWjNdxs2Hvmc=;
 b=F9pvV3Iw0ijwtXW8NVwe7iDvNNXcDLXlSYMftcFbSh3TXFVxECvo0hYJOPGNx7/eIV
 Mnz6OTzHh/I+2tS1nQd9nLT2+ah8qGnw15m3JeCCuLX09gU20NwjZS1zw/Ac+h4lX7Gt
 v5kvfKBC66bIxucRd953nF+f415VzOefkU6MM9CMItaC5QWHUvPtavkoeyMsdybKOd4N
 PqFCzs8yAeXgWd0ldp+H/wlaqEhe4Rp1SE2FGce7oAUVvLu34C6WtYs/+9PL+uJY53za
 g6hWBFiF/QHuvB90NqPEz3C51cOxd9KsL//TrCgQIxQ9h5u7ifEcEQNTGGpp4IaRRQrv
 hWRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r9bJ5mQH0bFiSdzMFFB9aG/I/ocJ8zclWjNdxs2Hvmc=;
 b=RCrdtKIHVAZQfxOURFjM57gfC7lMEk+LBebQtNb29BdscfpWbIx2+HMZQAkVoiUw6W
 WNz0JawmtwE0zrBMRNJ4zkAqBYDjixyJVNmq2ydac9e2kHUVFER4/zcJLfksk8mxDxeM
 HARLyg+09+goUJZJ/L/ChYTOGGW8k1zFsSeCUMDY2fcDPxDnliHAIiqmafJiGN1I1hRV
 p+hw2zlqlZjnNoYDc1fjAmv98f+61rBFiCxJYVAWzAUvkIT36k52s3sdwhd2bdPf5qSM
 EBL0FRkc8HYj5FRXSWl0NfuRtAD4Tp3Rv8jONFGKFNW//IGBamwXvfLMRDgubtTA5bA7
 9axg==
X-Gm-Message-State: APjAAAU/423i/w7/sqbbGpyKFl0kc2ll8hn1o1wx+NAH6ZUIl7TJUHyq
 0b6eVCugDUey4XrblXROqZRKSASImDzkuogZKI4=
X-Google-Smtp-Source: APXvYqzEVEdH+1TEvoSvfgHfEz8LzW/K9QdEdDzS4k7lw+vdiS+OmGvkxrRdA1vw3qZWSKfHjIOhFLNkCCwoNRDDcww=
X-Received: by 2002:aca:5bd7:: with SMTP id p206mr2766026oib.128.1556980940695; 
 Sat, 04 May 2019 07:42:20 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1556919363.git.melissa.srw@gmail.com>
 <CA+U=DsqiRBAdGK0aqp5Chv-AtuL8W47tu+Bq6O_Pc97HYbewkQ@mail.gmail.com>
In-Reply-To: <CA+U=DsqiRBAdGK0aqp5Chv-AtuL8W47tu+Bq6O_Pc97HYbewkQ@mail.gmail.com>
From: Alexandru Ardelean <ardeleanalex@gmail.com>
Date: Sat, 4 May 2019 17:42:06 +0300
Message-ID: <CA+U=DspNV8JAbSesYZVV0czUL5=1fY1BWwbGFVum4a0aDp33Ng@mail.gmail.com>
Subject: Re: [PATCH 0/4] staging: iio: ad7150: improve driver readability
To: Melissa Wen <melissa.srw@gmail.com>, 
 Alexandru Ardelean <alexandru.ardelean@analog.com>
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
Cc: devel@driverdev.osuosl.org, Lars-Peter Clausen <lars@metafoo.de>,
 Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Barry Song <21cnbao@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 kernel-usp@googlegroups.com, Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Hartmut Knaack <knaack.h@gmx.de>, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 4, 2019 at 2:12 PM Alexandru Ardelean
<ardeleanalex@gmail.com> wrote:
>
> On Sat, May 4, 2019 at 1:24 AM Melissa Wen <melissa.srw@gmail.com> wrote:
> >
> > This patchset solves readability issues in AD7150 code, such as clarify
> > register and mask definition, fashion improvement of mask uses, reduce
> > tedious operation and useless comments.
> >
>
> Hey,
>
> Two patches seem a bit noisy/un-needed.
> The other 2 are fine from me.
>
> This driver does need some work to move it out of staging.
> I am not sure what would be a big blocker for it, other than maybe it
> needs a device-tree binding doc (in YAML format).
> Maybe Jonathan remembers.
>
> Some other low-hanging-fruit ideas would be:
> 1) remove the code for platform_data ; that one seems forgotten from
> some other time; the interrupts should be coming from device-tree,
> from the i2c bindings
> 2) you could do a AD7150_EVENT_SPEC() macro (similar to
> AD7150_TIMEOUT() macro) and use it in the ad7150_events[] list; that
> would reduce a few lines
> 3) similar to 2), you could do a AD7150_CHANNEL(x) macro ;
> 4) in ad7150_event_handler() the checks could be wrapped into a macro,
> or maybe some function ; i am referring to "(int_status &
> AD7150_STATUS_OUT1) && (chip->old_state & AD7150_STATUS_OUT1)" checks
> ; those seem to be repeated
> 5) add of_match_table to the driver
>
> I (now) suspect that the reason this driver is still in staging is this comment:
> /* Timeouts not currently handled by core */
>
> I wonder if things changed since then ?
> If not, it would be interesting to implement it in core.
>

I forgot to mention the wiki page for the driver:
https://wiki.analog.com/resources/tools-software/linux-drivers/iio-cdc/ad7150

it may help with a few things

> Thanks
> Alex
>
>
> > Melissa Wen (4):
> >   staging: iio: ad7150: organize registers definition
> >   staging: iio: ad7150: use FIELD_GET and GENMASK
> >   staging: iio: ad7150: simplify i2c SMBus return treatment
> >   staging: iio: ad7150: clean up of comments
> >
> >  drivers/staging/iio/cdc/ad7150.c | 102 ++++++++++++++-----------------
> >  1 file changed, 47 insertions(+), 55 deletions(-)
> >
> > --
> > 2.20.1
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
