Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0865B709
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 10:42:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EF61585D68;
	Mon,  1 Jul 2019 08:42:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RD1XqsMsoMfk; Mon,  1 Jul 2019 08:42:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B1B2B85C54;
	Mon,  1 Jul 2019 08:42:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 647A01BF2A6
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 08:42:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 619A987861
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 08:42:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lMb2D0iAqPqP for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 08:42:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8CEAB875BC
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 08:42:42 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD16620881;
 Mon,  1 Jul 2019 08:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561970562;
 bh=bxRp0wzioxPO5LSZMl5y6eVW5avDuj3NK25QSOZQ8Uk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lq+qL62AE7ambKrarLmAT5KQ+YPxVtSGXMrqUAfisU18Vt5iwjNsHthJFBIiT5k7e
 8GuCnThOV/MzC0mNYw5XqaMN+GyPLB+gTwXMDSDj6uVm6O8Lck6taA8G0V4b8G4H5M
 rZKmNW1rXKzNuE8cvzUIJ0BuwXjWohfGIlHiPdjc=
Date: Mon, 1 Jul 2019 10:42:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>
Subject: Re: [PATCH] staging: kpc2000: fix brace issues in kpc2000_spi.c
Message-ID: <20190701084239.GA20886@kroah.com>
References: <20190627195323.28913-1-simon@nikanor.nu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627195323.28913-1-simon@nikanor.nu>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 27, 2019 at 09:53:23PM +0200, Simon Sandstr=F6m wrote:
> Fixes issues found by checkpatch:
> =

> - "WARNING: braces {} are not necessary for single statement blocks"
> - "WARNING: braces {} are not necessary for any arm of this statement"
> =

> Signed-off-by: Simon Sandstr=F6m <simon@nikanor.nu>
> ---
>  drivers/staging/kpc2000/kpc2000_spi.c | 39 ++++++++++-----------------
>  1 file changed, 14 insertions(+), 25 deletions(-)

Patch does not apply to my tree :(

Please rebase it and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
