Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 327522A939A
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Nov 2020 11:03:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3C8982E0F5;
	Fri,  6 Nov 2020 10:03:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id usrsOdPiR6Zr; Fri,  6 Nov 2020 10:03:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3C07A2E0F8;
	Fri,  6 Nov 2020 10:03:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5DDE21BF358
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 10:02:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5341A86733
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 10:02:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DYnII+uB29FI for <devel@linuxdriverproject.org>;
 Fri,  6 Nov 2020 10:02:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 99ED086697
 for <devel@driverdev.osuosl.org>; Fri,  6 Nov 2020 10:02:57 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E134206DC;
 Fri,  6 Nov 2020 10:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604656977;
 bh=nYdHL5tyv5VMecLwSV/l3uI2NstXIrB2qMwuqFJkM4M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M2WaU7q4zH8m7KvvkhjUQ2pCKYppWcW4xZc8Sbd+MJHPZQ7u/1yV62PBVKKYrx2Y6
 TrqCKM7i7uTANmTINzFj9ooaRAzBORHGqUCF216GRkX+wQ0KmNy+NmZQe6zuJetZ+R
 6sSKWmg+XOtXTJOXaV6ITnlfo69WmhRLZwuA2tOg=
Date: Fri, 6 Nov 2020 11:03:43 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Ian Abbott <abbotti@mev.co.uk>
Subject: Re: [PATCH] staging: comedi: cb_pcidas: reinstate delay removed from
 trimpot setting
Message-ID: <20201106100343.GA2715339@kroah.com>
References: <20201029141833.126856-1-abbotti@mev.co.uk>
 <3d7cf15a-c389-ec2c-5e29-8838e8466790@mev.co.uk>
 <f28af317-08a7-8218-d2a6-0cdd9e681873@mev.co.uk>
 <975358e2-6a08-211a-d232-3cd0ce628e8e@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <975358e2-6a08-211a-d232-3cd0ce628e8e@mev.co.uk>
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
Cc: devel@driverdev.osuosl.org, stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Nov 04, 2020 at 10:49:18AM +0000, Ian Abbott wrote:
> On 02/11/2020 11:16, Ian Abbott wrote:
> > On 02/11/2020 10:25, Ian Abbott wrote:
> > > On 29/10/2020 14:18, Ian Abbott wrote:
> > > > Commit eddd2a4c675c ("staging: comedi: cb_pcidas: refactor
> > > > write_calibration_bitstream()") inadvertently removed one of the
> > > > `udelay(1)` calls when writing to the calibration register in
> > > > `cb_pcidas_calib_write()`.=A0 Reinstate the delay.=A0 It may seem s=
trange
> > > > that the delay is placed before the register write, but this functi=
on is
> > > > called in a loop so the extra delay can make a difference.
> > > > =

> > > > This _might_ solve reported issues reading analog inputs on a
> > > > PCIe-DAS1602/16 card where the analog input values "were scaled in a
> > > > strange way that didn't make sense".=A0 On the same hardware runnin=
g a
> > > > system with a 3.13 kernel, and then a system with a 4.4 kernel, but=
 with
> > > > the same application software, the system with the 3.13 kernel was =
fine,
> > > > but the one with the 4.4 kernel exhibited the problem.=A0 Of the 90
> > > > changes to the driver between those kernel versions, this change lo=
oked
> > > > like the most likely culprit.
> > > =

> > > Actually, I've realized that this patch will have no effect on the
> > > PCIe-DAS1602/16 card because it uses a different driver -
> > > cb_pcimdas, not cb_pcidas.
> > =

> > But that's also confusing because PCIe-DAS1602/16 was not supported
> > until the 3.19 kernel!=A0 I know the reported has both PCI-DAS1602/16 a=
nd
> > PCIe-DAS1602/16 cards (supported by cb_pcidas and cb_pcimdas
> > respectively), so there could have been some mix-up in the reporting.
> =

> Mystery solved.  The reporter had a mixture of PCIe-DAS1602/16 and
> PCIM-DAS1602/16 cards (not PCI-DAS1602/16).  Both of those are supported =
by
> the "cb_pcimdas" driver (not "cb_pcidas"), although the PCIe card was not
> supported until the 3.19 kernel (by commit 4e3d14af1286).  Testing with t=
he
> 3.13 kernel was done with the PCIM card.
> =

> The "strange scaling" was due to a change in the ranges reported for the
> analog input subdevice in the 4.1 kernel (by commit c7549d770a27). Before
> then, it just reported a single dummy range [0, 1000000] with no units
> (converted to [0.0, 1.0] with no units by comedilib).  Afterwards, it
> reported four different voltage ranges (either unipolar or bipolar,
> depending in a status bit tied to a physical switch).  The reporter's
> application code was using the reported range to scale the raw values to a
> voltage (using comedilib functions), but because the reported range was
> bogus, the application code was performing additional scaling (outside of
> comedilib).  The application code can be changed to check whether the dev=
ice
> is reporting a proper voltage range or the old, bogus range, and behave
> accordingly.
> =

> > > Greg, you might as well drop this patch if you haven't already
> > > applied it, since it was only a hunch that it fixed a problem.
> =

> That's still the case, although it won't do any harm if applied (apart fr=
om
> the incorrect patch description).

I'll leave it dropped :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
