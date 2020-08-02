Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7348623561A
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Aug 2020 11:18:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C727E87722;
	Sun,  2 Aug 2020 09:18:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3FUvzxGZIb5P; Sun,  2 Aug 2020 09:18:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE33D87747;
	Sun,  2 Aug 2020 09:18:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A84F1BF421
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 09:18:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 648B58773F
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 09:18:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5BceMxlVXwNE for <devel@linuxdriverproject.org>;
 Sun,  2 Aug 2020 09:18:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4717B87722
 for <devel@driverdev.osuosl.org>; Sun,  2 Aug 2020 09:18:48 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6EFFF2075A;
 Sun,  2 Aug 2020 09:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596359928;
 bh=0sI0cWie9tDag5hLKiiEIxgczqIVsId5Urn4Kg/NpKw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UjHZNGLz0TbQXYhHdW6OWrj7pa4joZga8CIPJb2UKyjNWCc1JkuPP9coatSZC0jyV
 76oFX1J+0RfDgog+l0JGdanPNVux7AjCoFJeHhKZcx0e6zfx1/LnTpJs+QtWbUcMSb
 +f6LrpF5CFnL/fnAGeuChwsz3k3syx0mkaxhUDcg=
Date: Sun, 2 Aug 2020 11:18:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Michael Straube <straube.linux@gmail.com>
Subject: Re: staging: most: Build error since commit "drivers: most: add USB
 adapter driver"
Message-ID: <20200802091831.GA139182@kroah.com>
References: <7c18e466-0941-ee7e-9a0f-5a993c993152@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7c18e466-0941-ee7e-9a0f-5a993c993152@gmail.com>
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
Cc: devel@driverdev.osuosl.org, christian.gromm@microchip.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 02, 2020 at 11:08:12AM +0200, Michael Straube wrote:
> Hi,
> 
> with commit 97a6f772f36b7f52bcfa56a581bbd2470cffe23d ("drivers: most: add USB adapter driver")
> I get build errors.
> 
> $ LANG=C make clean drivers/staging/rtl8188eu/
> scripts/Makefile.clean:15: drivers/staging/most/usb/Makefile: No such file or directory
> make[5]: *** No rule to make target 'drivers/staging/most/usb/Makefile'.  Stop.
> make[4]: *** [scripts/Makefile.clean:66: drivers/staging/most/usb] Error 2
> make[3]: *** [scripts/Makefile.clean:66: drivers/staging/most] Error 2
> make[2]: *** [scripts/Makefile.clean:66: drivers/staging] Error 2
> make[1]: *** [Makefile:1763: _clean_drivers] Error 2
> make: *** [Makefile:336: __build_one_by_one] Error 2
> 
> Did you forgot to remove the below line from drivers/staging/most/Makefile ?
> 
> obj-$(CONFIG_MOST_USB)	+= usb/

Ugh, yes, let me go fix that up right now, sorry...

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
