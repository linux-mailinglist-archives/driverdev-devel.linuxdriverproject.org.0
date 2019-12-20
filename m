Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2EA11275A1
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Dec 2019 07:20:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 05E11887B1;
	Fri, 20 Dec 2019 06:20:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OYy1F3Fz66cB; Fri, 20 Dec 2019 06:20:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9614588792;
	Fri, 20 Dec 2019 06:20:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3C9DC1BF5A3
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 06:20:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E2FC588792
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 06:20:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LLSLkfN0hGCC for <devel@linuxdriverproject.org>;
 Fri, 20 Dec 2019 06:20:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9E2488878A
 for <devel@driverdev.osuosl.org>; Fri, 20 Dec 2019 06:20:05 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BBF5B2465E;
 Fri, 20 Dec 2019 06:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576822805;
 bh=v9ILot23daJ7rPOYHq9Zm727Nt33IBlYozS2RKD16XI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Pd4Ab08D8JT1mUVlvsnKCYN58TmiBIRhxItpjz7RrKbV2i1JzG9nx79licIl7Ht0k
 y8S42U7bllNuEcYFc9+/fflwaz5Y/kgqCXQM0zkY4OE31cqMLZBlxCxaKCF7KoBkZ2
 5PiUB9R0UbCG5WSIvYCAGdySMvEM/RJVXrabcuBo=
Date: Fri, 20 Dec 2019 07:20:03 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Simran Sandhu <f20171454@hyderabad.bits-pilani.ac.in>
Subject: Re: [PATCH 4/4] Staging: vc04_services: Fix checkpatch.pl error
Message-ID: <20191220062003.GA2183431@kroah.com>
References: <20191220051414.6484-1-f20171454@hyderabad.bits-pilani.ac.in>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220051414.6484-1-f20171454@hyderabad.bits-pilani.ac.in>
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 f.fainelli@gmail.com, sbranden@broadcom.com, tiwai@suse.de, rjui@broadcom.com,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Dec 20, 2019 at 10:44:14AM +0530, Simran Sandhu wrote:
> CHECKPATH ERROR: Alignment should match open parenthesis was fixed by entroducing tabs and spaces on the location
> drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c:349

That is a list of a checkpatch error, but does not say what you did.  Or
if it does, it is not properly linewrapped :(

> 
> Signed-off-by: Simran Sandhu <f20171454@hyderabad.bits-pilani.ac.in>
> ---
>  drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

And where are patches 1-3 of this series?

Please fix up and resend the whole series.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
