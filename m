Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7D013973
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 13:12:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 62680214E4;
	Sat,  4 May 2019 11:12:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J6HjEQYJJWlE; Sat,  4 May 2019 11:12:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C6DAD231AB;
	Sat,  4 May 2019 11:12:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BF7BA1BF591
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 11:12:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B8AD986199
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 11:12:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id flklp-fYDba1 for <devel@linuxdriverproject.org>;
 Sat,  4 May 2019 11:12:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 252CD847C3
 for <devel@driverdev.osuosl.org>; Sat,  4 May 2019 11:12:34 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id g24so7598020otq.2
 for <devel@driverdev.osuosl.org>; Sat, 04 May 2019 04:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Wdgzat9GNRyIGbxR7C3Z7X+GP78JD3qzbFV7NRAacTA=;
 b=okfHOiGDGkWULDmqf0cp2YMr3x6UsqExFume52CnakuFFA4tsOhki4semX533ppbfW
 lvr8xk+teD5FgXm45Ws3KyW15/9sY0BpqX7onpCrvJBEj42+OvoBenp3qSyvJU8I4uyD
 ERsPSWZcqx6RhkTMgqWUaL50+1l1xG4riuQIfpneKp6TpMuTqNzlOCm4IXE2E3Hnw/zX
 T8tEz7GuxHdrQ3XMnL0Q9ww+0VWlYIVigJY8SNDXhEHIsV98ecnfSqEU12XIE4WyXrwX
 N+oKFbOU74lh46JlR/ZF6jv7Qq0GpqnfVXjVC27gR96fNmAizcFeqleL5mXffbPQNBJ2
 BBSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Wdgzat9GNRyIGbxR7C3Z7X+GP78JD3qzbFV7NRAacTA=;
 b=KXLtiQLI05gYJw4R/p3/Nzte/gzVF5q+55tq7eBrMe5wsagXuks5ruHjQM4iOU3TzW
 BwWxMkcEAik11iFfLLOlw8BVlwT8M1QbA7tovWNsdLwyGCLSDB8BHwYDFBClHb58MYFb
 zJfuOzVQu45g7nrXMWxKFQXBLp6UEaqNKFq4TT/OWXZpCE7q8GiV+L1RR+firI/Gx6ku
 ONCpYvlz1bjCd4lExWy1ezfq2+5drVTyO6T0S9N35AdzdgAI+QG+TDW7H0u6BhA5/i79
 YQZOSWVWNTnZiu3fCwhxdzH8eP3fkyvEBayId0Eh/CIWaa2w+K18/XwsgHXsRGC+OqyC
 OqwA==
X-Gm-Message-State: APjAAAXoOnMgP/DdXs29gAHAb4aWUN0+ICotvwrFBMupYVI9MZltVsRr
 fBtBRqJvdrXyZnatgUGGL3kZ3Q/e9KRhXgyqs7ZRk+t6zBA=
X-Google-Smtp-Source: APXvYqwWmBzM+pWb1OHLXUNCoiFbZs8cR6lhs9O5+BlpQMMj+fFpPxDmiDkHrb7fFtk2hqYEqd5WtfVBpAAiLUsMEa8=
X-Received: by 2002:a9d:7858:: with SMTP id c24mr4142103otm.66.1556968353301; 
 Sat, 04 May 2019 04:12:33 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1556919363.git.melissa.srw@gmail.com>
In-Reply-To: <cover.1556919363.git.melissa.srw@gmail.com>
From: Alexandru Ardelean <ardeleanalex@gmail.com>
Date: Sat, 4 May 2019 14:12:22 +0300
Message-ID: <CA+U=DsqiRBAdGK0aqp5Chv-AtuL8W47tu+Bq6O_Pc97HYbewkQ@mail.gmail.com>
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

On Sat, May 4, 2019 at 1:24 AM Melissa Wen <melissa.srw@gmail.com> wrote:
>
> This patchset solves readability issues in AD7150 code, such as clarify
> register and mask definition, fashion improvement of mask uses, reduce
> tedious operation and useless comments.
>

Hey,

Two patches seem a bit noisy/un-needed.
The other 2 are fine from me.

This driver does need some work to move it out of staging.
I am not sure what would be a big blocker for it, other than maybe it
needs a device-tree binding doc (in YAML format).
Maybe Jonathan remembers.

Some other low-hanging-fruit ideas would be:
1) remove the code for platform_data ; that one seems forgotten from
some other time; the interrupts should be coming from device-tree,
from the i2c bindings
2) you could do a AD7150_EVENT_SPEC() macro (similar to
AD7150_TIMEOUT() macro) and use it in the ad7150_events[] list; that
would reduce a few lines
3) similar to 2), you could do a AD7150_CHANNEL(x) macro ;
4) in ad7150_event_handler() the checks could be wrapped into a macro,
or maybe some function ; i am referring to "(int_status &
AD7150_STATUS_OUT1) && (chip->old_state & AD7150_STATUS_OUT1)" checks
; those seem to be repeated
5) add of_match_table to the driver

I (now) suspect that the reason this driver is still in staging is this comment:
/* Timeouts not currently handled by core */

I wonder if things changed since then ?
If not, it would be interesting to implement it in core.

Thanks
Alex


> Melissa Wen (4):
>   staging: iio: ad7150: organize registers definition
>   staging: iio: ad7150: use FIELD_GET and GENMASK
>   staging: iio: ad7150: simplify i2c SMBus return treatment
>   staging: iio: ad7150: clean up of comments
>
>  drivers/staging/iio/cdc/ad7150.c | 102 ++++++++++++++-----------------
>  1 file changed, 47 insertions(+), 55 deletions(-)
>
> --
> 2.20.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
