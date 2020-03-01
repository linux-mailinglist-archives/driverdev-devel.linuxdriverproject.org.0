Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E551174D0B
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Mar 2020 12:49:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6102E854E0;
	Sun,  1 Mar 2020 11:49:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ug0EeRPZCBgj; Sun,  1 Mar 2020 11:49:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B3A95854E7;
	Sun,  1 Mar 2020 11:49:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E51AB1BF3E0
 for <devel@linuxdriverproject.org>; Sun,  1 Mar 2020 11:49:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DBA84860CE
 for <devel@linuxdriverproject.org>; Sun,  1 Mar 2020 11:49:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eh-YlyPg3ZHJ for <devel@linuxdriverproject.org>;
 Sun,  1 Mar 2020 11:49:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5C6CD85D4B
 for <devel@driverdev.osuosl.org>; Sun,  1 Mar 2020 11:49:27 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 397D720880;
 Sun,  1 Mar 2020 11:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583063367;
 bh=lqv6k2AUqcf3ik7NpXV+GV0FZoPOJtzPmrajVNG6J7s=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SHtuB4nipbFBPN0BXcNhPoc/iWt1v/4dxXD3uXZ4GVrcel6MqrVlCJSaF6TIqNcdH
 UEnR2gP2ayIBQPVJwYK+1no8AlruoDH0tRU84x6rCtKxTZRwl9yIjPeonMgUG3ySzk
 3C0hn/+I6p1NKAbL+LPLBVAPb7RkizD3CHlmuaD0=
Date: Sun, 1 Mar 2020 11:49:22 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Rohit Sarkar <rohitsarkar5398@gmail.com>
Subject: Re: [PATCH v3] staging: iio: update TODO
Message-ID: <20200301114922.6117def9@archlinux>
In-Reply-To: <5e5a6fbd.1c69fb81.f08c3.4cf0@mx.google.com>
References: <5e5a6fbd.1c69fb81.f08c3.4cf0@mx.google.com>
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
Cc: linux-iio@vger.kernel.org, grekh@linuxfoundation.org,
 devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 29 Feb 2020 19:35:45 +0530
Rohit Sarkar <rohitsarkar5398@gmail.com> wrote:

> Since there are no uses of the old GPIO API, remove the item from
> the TODO.
> 
> Changelog
> v3: Remove new items added.
> v2: Add work item mentioned by Alexandru in
> https://marc.info/?l=linux-iio&m=158261515624212&w=2
Change log belongs below the --- as we don't want this info in the
git history. I've tidied up and applied to the togreg branch of iio.git
(pushed out as testing for the autobuilders to play with it).

Thanks,

Jonathan

> 
> Signed-off-by: Rohit Sarkar <rohitsarkar5398@gmail.com>
> ---
>  drivers/staging/iio/TODO | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/iio/TODO b/drivers/staging/iio/TODO
> index 1b8ebf2c1b69..4d469016a13a 100644
> --- a/drivers/staging/iio/TODO
> +++ b/drivers/staging/iio/TODO
> @@ -1,10 +1,4 @@
> -2018-04-15
> -
> -All affected drivers:
> -Convert all uses of the old GPIO API from <linux/gpio.h> to the
> -GPIO descriptor API in <linux/gpio/consumer.h> and look up GPIO
> -lines from device tree, ACPI or board files, board files should
> -use <linux/gpio/machine.h>.
> +2020-02-25
>  
>  
>  ADI Drivers:

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
