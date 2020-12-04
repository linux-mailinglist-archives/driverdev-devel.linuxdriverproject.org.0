Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A640A2CEE58
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Dec 2020 13:50:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8328587C66;
	Fri,  4 Dec 2020 12:50:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2wNMmLhMoHR7; Fri,  4 Dec 2020 12:50:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC55B87C53;
	Fri,  4 Dec 2020 12:50:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 21A9F1BF86D
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 12:49:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1A78D2E2E2
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 12:49:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5R+BQV3zshpZ for <devel@linuxdriverproject.org>;
 Fri,  4 Dec 2020 12:49:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 60CFF2E1F0
 for <devel@driverdev.osuosl.org>; Fri,  4 Dec 2020 12:49:57 +0000 (UTC)
X-Gm-Message-State: AOAM531zSsqh9CFD71/8lz6GF1STrQR5XA2aVP6IkuC40qCmiawflQvq
 V/5//e4Z8bIvrR0vH8FhQWSiujCqrH3SUyCx1ZE=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607086196;
 bh=SCXDMZeVgXBiYgVyKgyRTs9OROoKgEN6O5lqo1xultU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=k0tBhHt37W64R82XOTYLCEOW9TKm5xlToou1Xwm2cwrHRSEXoM6KvQgU/47GquCYF
 AopO4nM/SfkQ3z4xBboop8Zvcyb8/nHmjv/HVhYsEtKS3qQ4U6C34ONZ6mPK79kYrJ
 EbHZm+25pnRs3x1DPYSpUE1k7DtbgPk6LGUr2kU/7AtSQmhVjCyefxj4dkxGy8DnWc
 tO8ZZjDtcHsERZdJdafwk119U15xwn5v1MCfimF85mvn0YxqdRoMd/jPqC++8GjDGF
 4QJzR1TyPHS5VDklkNjv82Gh4hd2Z9Uki7KDhoclhHADFyy6YQ6Ce/fOxTZqyAzvKQ
 j3bkXS3h0A5QQ==
X-Google-Smtp-Source: ABdhPJzLJsPP6X76kIsw8diIwzUdJladshIAUH8jWe7Lsz6t5eMIeHR928VTeF+NzXpAc0SAxhJ8TMUp0o0cO8eOlmQ=
X-Received: by 2002:a9d:be1:: with SMTP id 88mr3555296oth.210.1607086196167;
 Fri, 04 Dec 2020 04:49:56 -0800 (PST)
MIME-Version: 1.0
References: <20201203223836.1362313-1-arnd@kernel.org>
 <20201204104456.hhu76as6ruf5vmqq@uno.localdomain>
In-Reply-To: <20201204104456.hhu76as6ruf5vmqq@uno.localdomain>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 4 Dec 2020 13:49:39 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0PzyP9L5zYvfTCmAtCSxZBBjg6Pzc6Ta91gWH_HXVmNw@mail.gmail.com>
Message-ID: <CAK8P3a0PzyP9L5zYvfTCmAtCSxZBBjg6Pzc6Ta91gWH_HXVmNw@mail.gmail.com>
Subject: Re: [PATCH] staging: bcm2835: fix vchiq_mmal dependencies
To: Jacopo Mondi <jacopo@jmondi.org>
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
Cc: driverdevel <devel@driverdev.osuosl.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Dec 4, 2020 at 11:44 AM Jacopo Mondi <jacopo@jmondi.org> wrote:
>
> Hi Arnd,
>
> On Thu, Dec 03, 2020 at 11:38:30PM +0100, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > When the MMAL code is built-in but the vchiq core config is
> > set to =m, the mmal code never gets built, which in turn can
> > lead to link errors:
>
> My bad, I repetedly ignored the error report received from the 'kernel
> test robot' about this. Thanks for fixing.
>
> For my eduction, why would the vchiq-mmal code not get build if
> vchiq-core is set to M ? I mean, that configuration is indeed wrong,
> as vchiq-mmal uses symbols from vchiq-core and I would expect that to
> fail when building the kernel image, not have the other modules (as
> bcm2835-camera) fail as a consequence when building modules.


drivers/staging/Makefile has this line:

obj-$(CONFIG_BCM2835_VCHIQ)     += vc04_services/

when CONFIG_BCM2835_VCHIQ=m, the kbuild infrastructure
only enters the subdirectory while building modules, but a built-in
mmal driver is not a loadable module, so it does not get built
at that time. When compiling the built-in code, the subdirectory is
not entered.

> > Fixes: b18ee53ad297 ("staging: bcm2835: Break MMAL support out from camera")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Acked-by: Jacopo Mondi <jacopo@jmondi.org>
>
> If you noticed this from the same error notification I recevied it
> might be fair to report:
> Reported-by: kernel test robot <lkp@intel.com>

I had not seen that report but found it during my own testing,
thanks for adding.

      Arnd
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
