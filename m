Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D5A1DE397
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 May 2020 11:57:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5876C89532;
	Fri, 22 May 2020 09:57:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yZL7cu2UECAa; Fri, 22 May 2020 09:57:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D606389514;
	Fri, 22 May 2020 09:57:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B391E1BF370
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 09:57:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AF5AC87798
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 09:57:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gFUEFaXTxvnw for <devel@linuxdriverproject.org>;
 Fri, 22 May 2020 09:57:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3CDB987790
 for <devel@driverdev.osuosl.org>; Fri, 22 May 2020 09:57:42 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4276320757;
 Fri, 22 May 2020 09:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590141462;
 bh=KEVEAMKui9dM46qWPS1eCS3vSufvNFJQBVZBx7XBZWU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=unuPe1AVm/sh5kCyf0Utk4Ztg8DISyKoqpwxCjbPWpho4RvaFHWyyNmyTXYV11dh3
 IOO6YCgKItBcYpne8i8GsbikIyWG3pgY2AgJQ+VmC9J8QhLRsZxi0InB+zHCLONkMW
 B+UTRHZlhspJvSXsnkwHBnutIefy8HtK0gZV5kE4=
Date: Fri, 22 May 2020 11:57:36 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH] media: ipu3: add a module to probe sensors via ACPI
Message-ID: <20200522115736.10cca8eb@coco.lan>
In-Reply-To: <CAHp75VduEGyzobm0hkXzWmFfZb-uMAEWG-wc89b7M7zVzZ_4LA@mail.gmail.com>
References: <12fbe3f5c6a16c5f3447adbc09fe27ceb2b16823.1589625807.git.mchehab+huawei@kernel.org>
 <20200517103659.GS17578@paasikivi.fi.intel.com>
 <20200520094400.5137e7f2@coco.lan>
 <20200520082608.GV20066@paasikivi.fi.intel.com>
 <20200520131830.3ff45919@coco.lan>
 <CAHp75VduEGyzobm0hkXzWmFfZb-uMAEWG-wc89b7M7zVzZ_4LA@mail.gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>, "Krogerus,
 Heikki" <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>,
 Tian Shu Qiu <tian.shu.qiu@intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Thu, 21 May 2020 11:00:19 +0300
Andy Shevchenko <andy.shevchenko@gmail.com> escreveu:

> +Cc: Heikki (swnode expert)
> 
> On Wed, May 20, 2020 at 2:19 PM Mauro Carvalho Chehab
> <mchehab+huawei@kernel.org> wrote:
> > Em Wed, 20 May 2020 11:26:08 +0300
> > Sakari Ailus <sakari.ailus@linux.intel.com> escreveu:  
> 
> ...
> 
> > As I said, the problem is not probing the sensor via ACPI, but, instead,
> > to be able receive platform-specific data.  
> 
> There is no problem with swnodes, except missing parts (*).
> I have Skylake laptop with IPU3 and with half-baked ACPI tables, but
> since we have drivers in place with fwnode support, we only need to
> recreate fwnode graph in some board file to compensate the gap in
> ACPI.
> 
> *) Missing part is graph support for swnodes. With that done it will
> be feasible to achieve the rest.
> I forgot if we have anything for this already done. Heikki?

Hmm... I guess I should try this approach. I never heard about swnodes
before. Do you have already some patch with the needed swnodes setup,
and the missing parts to recreate the fwnode graph?

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
