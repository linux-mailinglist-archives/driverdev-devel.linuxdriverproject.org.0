Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9438A5DFFC
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jul 2019 10:37:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A8849864E0;
	Wed,  3 Jul 2019 08:37:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cRYxDHsLjO0x; Wed,  3 Jul 2019 08:37:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E642A86742;
	Wed,  3 Jul 2019 08:37:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 02A161BF5A4
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 08:37:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ED04887082
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 08:37:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rEoErIFfgt0Q for <devel@linuxdriverproject.org>;
 Wed,  3 Jul 2019 08:37:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F18388702D
 for <devel@driverdev.osuosl.org>; Wed,  3 Jul 2019 08:37:47 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4D375218A0;
 Wed,  3 Jul 2019 08:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562143067;
 bh=qK6ghgk93FG01mdywSmNV6VqIZ8zgDPRk8dvP6i0gdY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CU1WoWdJjPLOIw967/h60TJQTKyKAV/N5RZSw2TX7OUvOAZvJhFj1/cDdNlGR3chb
 6CkNHPJmkj7h0CMSMDtQmFayoNJSPmUp0KvgBTckiiqwnt3ma0rHVco+uaIw+vAbDD
 du37tw+e0rFTPmtqknvlsxk3+muYuOlYZ6Z2AAZ8=
Date: Wed, 3 Jul 2019 10:37:45 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH 1/2] staging: android: ion: Remove file ion_carveout_heap.c
Message-ID: <20190703083745.GB8996@kroah.com>
References: <20190703081842.22872-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703081842.22872-1-nishkadg.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 arve@android.com, joel@joelfernandes.org, maco@android.com,
 sumit.semwal@linaro.org, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 03, 2019 at 01:48:41PM +0530, Nishka Dasgupta wrote:
> Remove file ion_carveout_heap.c as its functions and definitions are not
> used anywhere.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/staging/android/ion/Kconfig           |   9 --
>  drivers/staging/android/ion/Makefile          |   1 -
>  .../staging/android/ion/ion_carveout_heap.c   | 133 ------------------

I keep trying to do this, but others point out that the ion code is
"going to be fixed up soon" and that people rely on this interface now.
Well, "code outside of the kernel tree" relies on this, which is not ok,
but the "soon" people keep insisting on it...

Odds are I should just delete all of ION, as there hasn't been any
forward progress on it in a long time.

Hopefully that wakes some people up...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
