Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8289E0A4
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 10:09:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 24B5B85AB5;
	Tue, 27 Aug 2019 08:09:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A8tlsM8wKxPJ; Tue, 27 Aug 2019 08:09:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 84B8086918;
	Tue, 27 Aug 2019 08:09:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B5DE1BF29E
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 08:09:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 32A1088389
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 08:09:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6uX8ExJk68h3 for <devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 08:09:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8FE6B88386
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 08:09:07 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D64462173E;
 Tue, 27 Aug 2019 08:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566893347;
 bh=8qdfPFyeI8CDcDn7hTPSj0UTJyklhXLPF/NtekcTWV0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iLmiB1p4jVrlqPMTuppgLfFPJRN08vwXl/0QU88fB50DbeozirIJaG45L7c+m+pIH
 EehN//eulODgGNOfbq2+zNueju1Y+2fLJ5Hf7Q0NpTi9Otw1/KcEqJZqbo8Cvvohu8
 yuFj99eO8kjmODZxW/JQTjwdA9lIIQyEAa9+kdsI=
Date: Tue, 27 Aug 2019 09:58:02 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH 1/9] staging: greybus: fix up SPDX comment in .h files
Message-ID: <20190827075802.GA29204@kroah.com>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
 <20190825055429.18547-2-gregkh@linuxfoundation.org>
 <20190826055119.4pbmf5ape224giwz@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190826055119.4pbmf5ape224giwz@vireshk-i7>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org,
 Viresh Kumar <vireshk@kernel.org>, johan@kernel.org,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 26, 2019 at 11:21:19AM +0530, Viresh Kumar wrote:
> On 25-08-19, 07:54, Greg Kroah-Hartman wrote:
> > When these files originally got an SPDX tag, I used // instead of /* */
> > for the .h files.  Fix this up to use // properly.
> > 
> > Cc: Viresh Kumar <vireshk@kernel.org>
> > Cc: Johan Hovold <johan@kernel.org>
> > Cc: Alex Elder <elder@kernel.org>
> > Cc: greybus-dev@lists.linaro.org
> > Cc: devel@driverdev.osuosl.org
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > ---
> >  drivers/staging/greybus/firmware.h               | 2 +-
> >  drivers/staging/greybus/gb-camera.h              | 2 +-
> >  drivers/staging/greybus/gbphy.h                  | 2 +-
> >  drivers/staging/greybus/greybus.h                | 2 +-
> >  drivers/staging/greybus/greybus_authentication.h | 2 +-
> >  drivers/staging/greybus/greybus_firmware.h       | 2 +-
> >  drivers/staging/greybus/greybus_manifest.h       | 2 +-
> >  drivers/staging/greybus/greybus_protocols.h      | 2 +-
> >  drivers/staging/greybus/greybus_trace.h          | 2 +-
> >  drivers/staging/greybus/hd.h                     | 2 +-
> >  drivers/staging/greybus/interface.h              | 2 +-
> >  drivers/staging/greybus/manifest.h               | 2 +-
> >  drivers/staging/greybus/module.h                 | 2 +-
> >  drivers/staging/greybus/operation.h              | 2 +-
> >  drivers/staging/greybus/spilib.h                 | 2 +-
> >  drivers/staging/greybus/svc.h                    | 2 +-
> >  16 files changed, 16 insertions(+), 16 deletions(-)
> 
> Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

Thanks for all of the acks!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
