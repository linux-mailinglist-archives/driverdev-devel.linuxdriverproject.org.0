Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A59231CD0
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 12:38:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6A788842F8;
	Wed, 29 Jul 2020 10:38:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id emI7bIJ52O0a; Wed, 29 Jul 2020 10:38:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EFCBC841E9;
	Wed, 29 Jul 2020 10:38:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D15C1BF4E4
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 10:38:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 233C1841E9
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 10:38:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KztuyO3dB-4i for <devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 10:38:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D5086841E6
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 10:38:45 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id p3so14031668pgh.3
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 03:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OOt4am3ptH3bamAsHkPtkKBdiD36zwsqmzqbepXBWe8=;
 b=XD6KRO6w63ECQYGfBkLoQt17DuEmY+HHbmecVpVQ/Dye7/R2WatECNMg/Cmyx+/ouM
 H7PfoB/r8C97XyCP5VsRUc3AeK6wOAUOuIXALkj8koSqlFAVZNvUm2G9+eRtjVm18cbj
 b1Ioczc3J0prvsJyRP0nWrBEh7bq1/Ham3sd/hGY7c/PweS5ZcmTxX8lQLoWBkZWIL9g
 ldith4ETV8JcFUWzZukT22w67q7FSMFR1M10L6GgqVMdSaSVI7xIs87KJt+RWXHeI0nc
 IgPXyewpZr3MuTmUDEP+bWVriX264EIFBYgwI3zkjBSshDX9D847ePk7/dejH6pnp7Fa
 FbYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OOt4am3ptH3bamAsHkPtkKBdiD36zwsqmzqbepXBWe8=;
 b=SbuUkhzOYn0vvModc7uUiHgqrlIyyl4q7YbtTQMgvySnIbCfWZr512v+6R1FxNMEGW
 wIsRC5Av1OKAoTmsKTogQdqnUKbCyrbtiSV20JLrb9WWtwLayhO70dZOx7cmgVcnFmWn
 oHUPaPFh2pEPCFFUwRlTk/vPkIB6hv7xNLDixbGgXX4z6BbTKmP8Nii0mZBx1N2ipLKN
 OAe+S3R6PDNsateoYIjIRfnYGFF+5VRUnVK99yPTxdid/f+Poj+J0bk8G6WNLObntlQE
 XjGJ61pknpYEe7z3afZsUe/VHmxZe3UxcPDh67k+wpGqEfmlYgLFPJeaF7m3u7+dlFKX
 phHg==
X-Gm-Message-State: AOAM5319/jX6tQvbaYumCfNsqsE4iv/U0FmZIgY75WOZY4iwkBV/w4W0
 8noJ6LJESdPlrmZu1NuiOSZh95O2jkVsbx2Zzc0ChF0kVzY=
X-Google-Smtp-Source: ABdhPJzC1lAmhZulWVw4qiVD9FP1U166ENhLOQOFnXgSQ/Llia+le+rSXDIzcFNIr0FAW8wTygu45FQnF6S8QQzNE3w=
X-Received: by 2002:a62:758f:: with SMTP id
 q137mr10134826pfc.170.1596019125374; 
 Wed, 29 Jul 2020 03:38:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAHp75VcmMf5dt7mu9N0C=6Rej-WzZ0EpzntHYCQkgNLVZkPbgg@mail.gmail.com>
 <20200729081155.3228-1-b18007@students.iitmandi.ac.in>
In-Reply-To: <20200729081155.3228-1-b18007@students.iitmandi.ac.in>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 29 Jul 2020 13:38:28 +0300
Message-ID: <CAHp75VdCBWLLMT7jm0CO+oK8eZf7cSMOM5sb9xZ1Po1_YFAMxw@mail.gmail.com>
Subject: Re: [PATCH -v2] Staging: iio: Fixed a punctuation and a spelling
 mistake.
To: Ankit Baluni <b18007@students.iitmandi.ac.in>
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
 Lars-Peter Clausen <lars@metafoo.de>, linux-iio <linux-iio@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Peter Meerwald <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 29, 2020 at 11:12 AM Ankit Baluni
<b18007@students.iitmandi.ac.in> wrote:
>
> Added a missing comma and changed 'it it useful' to 'it is useful'.

Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>

> Signed-off-by: Ankit Baluni <b18007@students.iitmandi.ac.in>
> ---
> Changes in -v2:
>         -Remove space before ':' in subject line.
>
>  drivers/staging/iio/Documentation/overview.txt | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/iio/Documentation/overview.txt b/drivers/staging/iio/Documentation/overview.txt
> index ebdc64f451d7..00409d5dab4e 100644
> --- a/drivers/staging/iio/Documentation/overview.txt
> +++ b/drivers/staging/iio/Documentation/overview.txt
> @@ -9,7 +9,7 @@ The aim is to fill the gap between the somewhat similar hwmon and
>  input subsystems.  Hwmon is very much directed at low sample rate
>  sensors used in applications such as fan speed control and temperature
>  measurement.  Input is, as its name suggests focused on input
> -devices. In some cases there is considerable overlap between these and
> +devices. In some cases, there is considerable overlap between these and
>  IIO.
>
>  A typical device falling into this category would be connected via SPI
> @@ -38,7 +38,7 @@ series and Analog Devices ADXL345 accelerometers.  Each buffer supports
>  polling to establish when data is available.
>
>  * Trigger and software buffer support. In many data analysis
> -applications it it useful to be able to capture data based on some
> +applications it is useful to be able to capture data based on some
>  external signal (trigger).  These triggers might be a data ready
>  signal, a gpio line connected to some external system or an on
>  processor periodic interrupt.  A single trigger may initialize data
> --
> 2.25.1
>


-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
