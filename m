Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 450972CEEE9
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Dec 2020 14:41:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E611E87C89;
	Fri,  4 Dec 2020 13:41:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DgdwBkc5nA8j; Fri,  4 Dec 2020 13:41:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0691387C7E;
	Fri,  4 Dec 2020 13:41:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 13A2E1BF3FD
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 13:41:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1040D87C73
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 13:41:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rlajT0BVhQfN for <devel@linuxdriverproject.org>;
 Fri,  4 Dec 2020 13:41:40 +0000 (UTC)
X-Greylist: delayed 02:56:43 by SQLgrey-1.7.6
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net
 [217.70.183.200])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F2DF587C5F
 for <devel@driverdev.osuosl.org>; Fri,  4 Dec 2020 13:41:39 +0000 (UTC)
X-Originating-IP: 93.34.118.233
Received: from uno.localdomain (93-34-118-233.ip49.fastwebnet.it
 [93.34.118.233]) (Authenticated sender: jacopo@jmondi.org)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 9428220012;
 Fri,  4 Dec 2020 13:41:34 +0000 (UTC)
Date: Fri, 4 Dec 2020 14:41:41 +0100
From: Jacopo Mondi <jacopo@jmondi.org>
To: Arnd Bergmann <arnd@kernel.org>
Subject: Re: [PATCH] staging: bcm2835: fix vchiq_mmal dependencies
Message-ID: <20201204134141.bsxbcojpcs6kyhui@uno.localdomain>
References: <20201203223836.1362313-1-arnd@kernel.org>
 <20201204104456.hhu76as6ruf5vmqq@uno.localdomain>
 <CAK8P3a0PzyP9L5zYvfTCmAtCSxZBBjg6Pzc6Ta91gWH_HXVmNw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0PzyP9L5zYvfTCmAtCSxZBBjg6Pzc6Ta91gWH_HXVmNw@mail.gmail.com>
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

Hi Arnd,

On Fri, Dec 04, 2020 at 01:49:39PM +0100, Arnd Bergmann wrote:
> On Fri, Dec 4, 2020 at 11:44 AM Jacopo Mondi <jacopo@jmondi.org> wrote:
> >
> > Hi Arnd,
> >
> > On Thu, Dec 03, 2020 at 11:38:30PM +0100, Arnd Bergmann wrote:
> > > From: Arnd Bergmann <arnd@arndb.de>
> > >
> > > When the MMAL code is built-in but the vchiq core config is
> > > set to =m, the mmal code never gets built, which in turn can
> > > lead to link errors:
> >
> > My bad, I repetedly ignored the error report received from the 'kernel
> > test robot' about this. Thanks for fixing.
> >
> > For my eduction, why would the vchiq-mmal code not get build if
> > vchiq-core is set to M ? I mean, that configuration is indeed wrong,
> > as vchiq-mmal uses symbols from vchiq-core and I would expect that to
> > fail when building the kernel image, not have the other modules (as
> > bcm2835-camera) fail as a consequence when building modules.
>
>
> drivers/staging/Makefile has this line:

My bad, I only looked into drivers/staging/vc04_services/

>
> obj-$(CONFIG_BCM2835_VCHIQ)     += vc04_services/
>
> when CONFIG_BCM2835_VCHIQ=m, the kbuild infrastructure
> only enters the subdirectory while building modules, but a built-in
> mmal driver is not a loadable module, so it does not get built
> at that time. When compiling the built-in code, the subdirectory is
> not entered.

Thanks, all clear now!

>
> > > Fixes: b18ee53ad297 ("staging: bcm2835: Break MMAL support out from camera")
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> >
> > Acked-by: Jacopo Mondi <jacopo@jmondi.org>
> >
> > If you noticed this from the same error notification I recevied it
> > might be fair to report:
> > Reported-by: kernel test robot <lkp@intel.com>
>
> I had not seen that report but found it during my own testing,
> thanks for adding.
>
>       Arnd
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
