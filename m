Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D91C85EE5
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Aug 2019 11:42:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9F6BD204FC;
	Thu,  8 Aug 2019 09:42:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dTV-geUVXELu; Thu,  8 Aug 2019 09:42:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C58B6203F7;
	Thu,  8 Aug 2019 09:42:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB2871BF5F8
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 09:42:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E7A3287F9F
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 09:42:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SnPzJbGlP+7E for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 09:42:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6646387F81
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 09:42:01 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B61422173E;
 Thu,  8 Aug 2019 09:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565257321;
 bh=Pn6tXfULoIxRtF9yQ/7YXzG+dxzUbzUVdbEIlNQ7PRc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TjPAUJiRRHqJlHNtwcWe8pdTRHxrgS837yF/JTNC+9vC6PPq90OOWRTIVJJOTtnVm
 KlNvomVzIcdiR6HVqAqFzhNC+Dki690sxSVqYKCG5FEdf5/2N2ZRwGxtqGYk4TZRTI
 MbHmpJ/DH9zUiYRAegwAKZSVBUMh+63UNJylggiI=
Date: Thu, 8 Aug 2019 11:41:58 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] MAINTAINERS: mark wusbcore and UWB as obsolete
Message-ID: <20190808094158.GA22635@kroah.com>
References: <20190806101509.GA11280@kroah.com>
 <b73f09c944625a40b2589e9bac7f8bd22a711ed3.camel@perches.com>
 <20190806113501.GA18443@kroah.com>
 <20190808092509.GA20173@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808092509.GA20173@kroah.com>
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
Cc: devel@driverdev.osuosl.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 08, 2019 at 11:25:09AM +0200, Greg Kroah-Hartman wrote:
> Joe rightly points out that we should be using the "Obsolete" status for
> these two subsystems.

Even with that change, I don't see get_maintainers.pl tell me I
shouldn't be sending a patch in for this area:


$ cat x.patch
diff --git a/drivers/staging/uwb/Kconfig b/drivers/staging/uwb/Kconfig
index 259e053e1e09..d9658c46686e 100644
--- a/drivers/staging/uwb/Kconfig
+++ b/drivers/staging/uwb/Kconfig
@@ -3,6 +3,8 @@
 # UWB device configuration
 #

+
+
 menuconfig UWB
        tristate "Ultra Wideband devices"
        default n
$ ./scripts/get_maintainer.pl x.patch
Greg Kroah-Hartman <gregkh@linuxfoundation.org> (supporter:STAGING SUBSYSTEM,commit_signer:2/2=100%,authored:1/2=50%)
Thomas Gleixner <tglx@linutronix.de> (commit_signer:1/2=50%,authored:1/2=50%)
devel@driverdev.osuosl.org (open list:ULTRA-WIDEBAND (UWB) SUBSYSTEM:)
linux-kernel@vger.kernel.org (open list)


Am I missing something?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
