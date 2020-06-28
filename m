Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF2720C76B
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Jun 2020 12:43:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 06F562094C;
	Sun, 28 Jun 2020 10:43:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fliF2ABFvZZt; Sun, 28 Jun 2020 10:43:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BEE39204C6;
	Sun, 28 Jun 2020 10:43:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 79D301BF3DC
 for <devel@linuxdriverproject.org>; Sun, 28 Jun 2020 10:43:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 76F4B8815C
 for <devel@linuxdriverproject.org>; Sun, 28 Jun 2020 10:43:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cw1ikba2gvGk for <devel@linuxdriverproject.org>;
 Sun, 28 Jun 2020 10:43:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 684018820A
 for <devel@driverdev.osuosl.org>; Sun, 28 Jun 2020 10:43:06 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5FA9720768;
 Sun, 28 Jun 2020 10:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593340986;
 bh=h3Qshe51OzCHk0VzoKOsxqxRXkQqAn4qbWRLY7XHqdM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Lof7SL/AP1E5uY0JfQ11YfEWu721qbIILr3k1zUtDoOnELCIB08KtUhaHBjBh8Q7P
 6/zleA0a3JupyIC4LjAKMBLLGBbweFTh3X8yoww2VVMsbesyjFqb6COmxM2ZziRGHF
 Cpd5svgHHBD3EgT4UAnK+eQbqq0qCreRlhws0k+E=
Date: Sun, 28 Jun 2020 12:43:02 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v3] staging: wfx: Get descriptors for GPIOs
Message-ID: <20200628104302.GA305213@kroah.com>
References: <20200628085236.707579-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200628085236.707579-1-linus.walleij@linaro.org>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jun 28, 2020 at 10:52:36AM +0200, Linus Walleij wrote:
> The code has the functionality to insert the GPIO lines using
> the global GPIO numbers through module parameters.
> =

> As we are clearly deprecating the use of global GPIO numbers
> look up the GPIO descriptors from the device instead. This
> usually falls back to device hardware descriptions using e.g.
> device tree or ACPI. This device clearly supports device
> tree when used over SPI for example.
> =

> For example, this can be supplied in the device tree like so:
> =

>   wfx@0x01 {
>       compatible =3D "silabs,wf200";
>       reset-gpios =3D <&gpio0 1>;
>       wakeup-gpios =3D <&gpio0 2>;
>   };
> =

> Cc: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v2->v3:
> - ERR_CAST not PTR_CAST
> ChangeLog v1->v2:
> - Fixed a cast and a variable name.
> - I still don't know how to compile this but hey the zeroday
>   robot does.

I can build this on my desktop, and this patch still blows up the build.
What is wrong with your setup that this doesn't build for you?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
