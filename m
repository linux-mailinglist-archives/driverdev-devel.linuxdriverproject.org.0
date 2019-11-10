Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6719F691E
	for <lists+driverdev-devel@lfdr.de>; Sun, 10 Nov 2019 14:27:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 13D1C858F5;
	Sun, 10 Nov 2019 13:27:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4J11IfdnRad8; Sun, 10 Nov 2019 13:27:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B174B8562A;
	Sun, 10 Nov 2019 13:27:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5DD6D1BF39F
 for <devel@linuxdriverproject.org>; Sun, 10 Nov 2019 13:27:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5A9928782A
 for <devel@linuxdriverproject.org>; Sun, 10 Nov 2019 13:27:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7dAefMQ8Hu33 for <devel@linuxdriverproject.org>;
 Sun, 10 Nov 2019 13:27:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B4A20877E9
 for <devel@driverdev.osuosl.org>; Sun, 10 Nov 2019 13:27:15 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7540220842;
 Sun, 10 Nov 2019 13:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573392435;
 bh=4gBDujHHAOpGpaUZUSbRIfz6nvgA9ClvVnBskRh9zE0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dAJgmTY6XUDmcBXRdE2CM4pzNAUzAo2858X3WLg8vaXtlEaSzh3wv5uBfqj4hsNw2
 UvOxe3zPV5v4fKi3tTf2K/ZdHy2G5nmqQHDdr22yXK+PUyHOBos9lZkZIEp5r36tas
 QpshVRZlBvOY8MFMUOAVuEJAop7fyMZvuZKcLANU=
Date: Sun, 10 Nov 2019 13:27:10 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Pedro Ortega <portega.kernel@gmx.com>
Subject: Re: [PATCH] staging: iio: adc: ad7280: Add spaces around math operator
Message-ID: <20191110132710.0e9300dc@archlinux>
In-Reply-To: <20191109151729.3792-1-portega.kernel@gmx.com>
References: <20191109151729.3792-1-portega.kernel@gmx.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat,  9 Nov 2019 16:17:28 +0100
Pedro Ortega <portega.kernel@gmx.com> wrote:

> Add spaces around the minus math operator to increase readability.
> 
> Signed-off-by: Pedro Ortega <portega.kernel@gmx.com>
Hi Pedro,

Afraid not.  Look at what that macro is actually doing.  That's not a maths
operator at all.  I'm fairly sure we had a plan to actually hide these
examples away as we get a few people suggesting this 'fix' ever year.
Not sure what happened to them though, I'll have to check back.

Sorry about this, but it is a good lesson in making sure you check
that the suggestion from checkpatch is actually correct.  It's a
pattern matcher, it can't always know enough to be able to tell what
is going on.

Thanks,

Jonathan

> ---
>  drivers/staging/iio/adc/ad7280a.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> index 19a5f244dcae..34ca0d09db85 100644
> --- a/drivers/staging/iio/adc/ad7280a.c
> +++ b/drivers/staging/iio/adc/ad7280a.c
> @@ -825,14 +825,14 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
>  }
> 
>  static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
> -			     in_voltage-voltage_thresh_low_value,
> +			     in_voltage - voltage_thresh_low_value,
>  			     0644,
>  			     ad7280_read_channel_config,
>  			     ad7280_write_channel_config,
>  			     AD7280A_CELL_UNDERVOLTAGE);
> 
>  static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
> -			     in_voltage-voltage_thresh_high_value,
> +			     in_voltage - voltage_thresh_high_value,
>  			     0644,
>  			     ad7280_read_channel_config,
>  			     ad7280_write_channel_config,
> --
> 2.17.1
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
