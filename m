Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A03C02352FF
	for <lists+driverdev-devel@lfdr.de>; Sat,  1 Aug 2020 17:38:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F15B5884B2;
	Sat,  1 Aug 2020 15:38:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sBDK2o8HOUJ1; Sat,  1 Aug 2020 15:38:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 24E33881D0;
	Sat,  1 Aug 2020 15:38:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DE4551BF3F0
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 15:38:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CED9D8810E
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 15:38:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Al7ltOViLA+5 for <devel@linuxdriverproject.org>;
 Sat,  1 Aug 2020 15:38:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 42F7C87FD3
 for <devel@driverdev.osuosl.org>; Sat,  1 Aug 2020 15:38:18 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 90FFE2071E;
 Sat,  1 Aug 2020 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596296298;
 bh=R9Rinnbiavbu4gLpa/mmI6LL+DEK5QDx/kYCTyiidc0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=uMPxyJJDjNSGBv0D/zupPMuJGNEvHiF/uosVwn+FNrKfKWa7teOSIjKbNPpc7TKJl
 Io5c/genfnkgnGyZCIvDnPh2sC8XfytS4yaYUEklUE+Q/4ECB+IvPRi1SvUb6S5Vei
 EVey38G27iPNAEPoMGUH2NMi0suxqvRX2dKhuork=
Date: Sat, 1 Aug 2020 16:38:13 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH -v2] Staging: iio: Fixed a punctuation and a spelling
 mistake.
Message-ID: <20200801163813.12bc746b@archlinux>
In-Reply-To: <CAHp75VdCBWLLMT7jm0CO+oK8eZf7cSMOM5sb9xZ1Po1_YFAMxw@mail.gmail.com>
References: <CAHp75VcmMf5dt7mu9N0C=6Rej-WzZ0EpzntHYCQkgNLVZkPbgg@mail.gmail.com>
 <20200729081155.3228-1-b18007@students.iitmandi.ac.in>
 <CAHp75VdCBWLLMT7jm0CO+oK8eZf7cSMOM5sb9xZ1Po1_YFAMxw@mail.gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Lars-Peter Clausen <lars@metafoo.de>, linux-iio <linux-iio@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Peter Meerwald <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Ankit Baluni <b18007@students.iitmandi.ac.in>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 29 Jul 2020 13:38:28 +0300
Andy Shevchenko <andy.shevchenko@gmail.com> wrote:

> On Wed, Jul 29, 2020 at 11:12 AM Ankit Baluni
> <b18007@students.iitmandi.ac.in> wrote:
> >
> > Added a missing comma and changed 'it it useful' to 'it is useful'.  
> 
> Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
Gah. I had kind of forgotten these docs existed and they have
rotted pretty badly from a quick glance.   Sometime soon I'll take
a look and see if there is anything worth moving over to the main docs.

In meantime, nothing wrong with cleaning them up a little as you Ankit
has done here.

Applied to the togreg branch of iio.git and pushed out as testing
for the autobuilders to ignore them.

Thanks,

Jonathan

> 
> > Signed-off-by: Ankit Baluni <b18007@students.iitmandi.ac.in>
> > ---
> > Changes in -v2:
> >         -Remove space before ':' in subject line.
> >
> >  drivers/staging/iio/Documentation/overview.txt | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/iio/Documentation/overview.txt b/drivers/staging/iio/Documentation/overview.txt
> > index ebdc64f451d7..00409d5dab4e 100644
> > --- a/drivers/staging/iio/Documentation/overview.txt
> > +++ b/drivers/staging/iio/Documentation/overview.txt
> > @@ -9,7 +9,7 @@ The aim is to fill the gap between the somewhat similar hwmon and
> >  input subsystems.  Hwmon is very much directed at low sample rate
> >  sensors used in applications such as fan speed control and temperature
> >  measurement.  Input is, as its name suggests focused on input
> > -devices. In some cases there is considerable overlap between these and
> > +devices. In some cases, there is considerable overlap between these and
> >  IIO.
> >
> >  A typical device falling into this category would be connected via SPI
> > @@ -38,7 +38,7 @@ series and Analog Devices ADXL345 accelerometers.  Each buffer supports
> >  polling to establish when data is available.
> >
> >  * Trigger and software buffer support. In many data analysis
> > -applications it it useful to be able to capture data based on some
> > +applications it is useful to be able to capture data based on some
> >  external signal (trigger).  These triggers might be a data ready
> >  signal, a gpio line connected to some external system or an on
> >  processor periodic interrupt.  A single trigger may initialize data
> > --
> > 2.25.1
> >  
> 
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
