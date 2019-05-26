Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A012A922
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 May 2019 11:13:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 55E0A23265;
	Sun, 26 May 2019 09:13:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RXQzEUUYvtOp; Sun, 26 May 2019 09:13:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B2ADB23109;
	Sun, 26 May 2019 09:13:14 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A59351BF3C0
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 26 May 2019 09:13:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 84B0882033
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 26 May 2019 09:13:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UOrKCav8pmu7
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 26 May 2019 09:13:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BC94285039
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 26 May 2019 09:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tpv0V+bFY5zK3fDp2wfeEboL9TQpB3KvhjfK1q6T1tM=; b=rlkKZqPxjQlzGpF7UZoAS1vfik
 TozGMeVA6JpNw7yQqrhz4WDc3BvkSg8cwTYqV/hqrN0xoikjirg9BiHcyr3Ch9z8twBc6p+/RlkXj
 0og1iwMeOnoGBmO265hLGbbV4qHxTgKpTZrQM6695FOepDmVkOfot78MoSIrjviTRx7eRvUjUqDeP
 3lKq9gb/E1jdMphNY0mBgCW7Vcl83FVJdpP1YFLkvm9VBJejN9NCJ6RQEEHU6kWO/LmtMn+eIF9KZ
 6He13LcLCYmgdPJ+nGwsFo3ke+WQl2Mc/0FZJx3NRe1syUhxZkR2YnDVsLDweiyKyV78kZKFKc9Mo
 H1ue8nTg==;
Received: from celephais.dreamlands ([192.168.96.3] helo=azazel.net)
 by kadath.azazel.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <jeremy@azazel.net>)
 id 1hUpDB-0001wf-Qz; Sun, 26 May 2019 10:13:01 +0100
Date: Sun, 26 May 2019 10:13:00 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Matt Sickler <Matt.Sickler@daktronics.com>
Subject: Re: [PATCH] staging: kpc2000: simplify nested conditionals that just
 return a boolean.
Message-ID: <20190526091300.GC28231@azazel.net>
References: <20190524121926.32487-1-jeremy@azazel.net>
 <20190524141607.GA3766@kroah.com>
 <SN6PR02MB4016F8CBB5E060FEE2C76467EE020@SN6PR02MB4016.namprd02.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <SN6PR02MB4016F8CBB5E060FEE2C76467EE020@SN6PR02MB4016.namprd02.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 192.168.96.3
X-SA-Exim-Mail-From: jeremy@azazel.net
X-SA-Exim-Scanned: No (on kadath.azazel.net); SAEximRunCond expanded to false
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
Cc: Greg KH <gregkh@linuxfoundation.org>, Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Content-Type: multipart/mixed; boundary="===============6464679329589179128=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6464679329589179128==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ctP54qlpMx3WjD+/"
Content-Disposition: inline


--ctP54qlpMx3WjD+/
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-05-24, at 16:59:45 +0000, Matt Sickler wrote:
> From: devel <driverdev-devel-bounces@linuxdriverproject.org> On Behalf Of=
 Greg KH
> > On Fri, May 24, 2019 at 01:19:26PM +0100, Jeremy Sowden wrote:
> > > kp2000_check_uio_irq contained a pair of nested ifs which each
> > > evaluated a bitwise operation.  If both operations yielded true,
> > > the function returned 1; otherwise it returned 0.
> > >
> > > Replaced the whole thing with one return statement that evaluates
> > > the combination of both bitwise operations.
> >
> > Does this really do the same thing?
> >
> > > Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
> > > ---
> > > This applies to staging-testing.
> > >
> > > I was in two minds whether to send this patch or something less terse:
> > >
> > > +     return (interrupt_active & irq_check_mask) &&
> > > +            (interrupt_mask_inv & irq_check_mask);
> > >
> > >  drivers/staging/kpc2000/kpc2000/cell_probe.c | 10 ++++------
> > >  1 file changed, 4 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c
> > b/drivers/staging/kpc2000/kpc2000/cell_probe.c
> > > index f731a97c6cac..d10f695b6673 100644
> > > --- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
> > > +++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
> > > @@ -240,12 +240,10 @@ int  kp2000_check_uio_irq(struct kp2000_device =
*pcard, u32 irq_num)
> > >       u64 interrupt_mask_inv =3D ~readq(pcard-> sysinfo_regs_base + R=
EG_INTERRUPT_MASK);
> > >       u64 irq_check_mask =3D (1 << irq_num);
> > >
> > > -     if (interrupt_active & irq_check_mask) { // if it's active (int=
errupt pending)
> > > -             if (interrupt_mask_inv & irq_check_mask) {    // and if=
 it's not masked off
> > > -                     return 1;
> > > -             }
> > > -     }
> > > -     return 0;
> > > +     /*
> > > +      * Is the IRQ active (interrupt pending) and not masked off?
> > > +      */
> > > +     return (interrupt_active & interrupt_mask_inv & irq_check_mask)=
 !=3D 0;
> >
> > I have no idea what these bits really are, but try the above with
> > the following values:
>
> interrupt_active indicates which IRQs are active/pending
> 0 =3D not pending
> 1 =3D pending
>
> irq_check_mask has only a single bit set which is which IRQ we're
> testing for Each one is "associated" with one of the UIO "cores" (see
> core_probe.c for how that association is discovered).
>
> interrupt_mask_inv is a bitwise inversion of the HW register.  The HW
> register tells the HW which interrupts to ignore.  In the HW register:
> 0 =3D pass this IRQ up to the host.
> 1 =3D mask the IRQ
> In interrupt_mask_inv:
> 0 =3D ignore this IRQ
> 1 =3D care about this IRQ
>
> This code is checking 3 things:
> - Is there an interrupt for this UIO core
> - Is that interrupt signaled
> - Is the interrupt not masked
>
> Just in case it's not obvious yet: the mask/pending bits allow the HW
> to catch an interrupt but not signal the host until the interrupt is
> unmasked.  This allows interrupts that happen while the IRQ is masked
> to still be handled once the IRQ is un-masked.
>
> >        interrupt_active =3D BIT(0);
> >        interrupt_mask_inv =3D BIT(1);
> >        irq_check_mask =3D (BIT(1) | BIT(0));
> >
> > So in your new code you have:
> >        BIT(0) & BIT(1) & (BIT(1) | BIT(0))
> > which reduces to:
> >        0 & (BIT(1) | BIT(0))
> > which then reduces to:
> >        0
> >
> > The original if statements will return 1.
> > Your new one will return 0.
> >
> > You can't AND interrupt_active with interrupt_mask_inv like you did
> > here, right?
> >
> > Or am I reading this all wrong?

As Matt explained above, irq_check_mask only ever has one bit set:

  u64 irq_check_mask =3D (1 << irq_num);

So:

  interrupt_mask_inv & irq_check_mask

yields irq_check_mask or 0, and:

  interrupt_active & irq_check_mask

yields irq_check_mask or 0, and:

  interrupt_mask_inv & interrupt_active & irq_check_mask

yields irq_check_mask or 0.

> > And what's wrong with the original code here?  What is complaining about
> > it (other than the crazy comment style...)?
>
> I would agree with Greg, if there's nothing complaining about the way
> the original code was written it should probably be left that way.
> This new way seems overly tricky, even if it was proven to do the same
> thing.

This patch was originally part of a larger series of white-space and
formatting changes to cell_probe.c that I put to one side.  It started
out as a change to the formatting of the comments, IIRC.  I was reminded
of it while looking over the recent series by Simon Sandstr=C3=B6m (which
have fixed most of the issues that my series would have addressed).
Conditional blocks that contain nothing but statements returing boolean
constants are a (minor) pet peeve of mine, so I sent the patch by
itself.  Clearly it's not a peeve shared by many people. :)

Happy to drop the patch.

J.

--ctP54qlpMx3WjD+/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEZ8d+2N/NBLDbUxIF0Z7UzfnX9sMFAlzqWJMACgkQ0Z7UzfnX
9sMbmA//WGQDL4vbpoSd+bADXJSmaBLfbrt1zTX6rfacKeqjbgMpwcvOWtmHa/4E
BiBPIO/quZmKtbpsnA/Heksq+Qv4dPXBE087cpTJt5BiC8Y2IXbh16mdjsBPN93W
wa8DHyokvhj0q5fOd1nNj5+fVdQoo79dbLmmcEonCnt8lsXyJspijzmWtZy7xOnG
JSiAM4HQMDDcg25WaueCLvjPqZFBAkg8Ngl63m0qUZNBGU79elD1RmZIdjrxasZC
eiQONnaMggtS9IMcbpvbCzMN4FnfyTkxSlaXTifx4vwzEZOadUk5jBj2mg01Huw6
Gg1Aun+ZuA0b0+OookQ/Jv6U/Y5SSofk7LbUo7mE7EgSPM3j9Q4hafcrggEKBgyJ
qQWGagpcmIBLe1Rl1XTnYlGZDC+XTbURL6wZ2kg7mWmKfIvurxXS67Lpy0pSZ++6
IZNgCnqWIMSEp6BoLMJbIbyZn9Y6umaaADaNgSSH3MNPBG4mGvJ5oeOePPGzI7T2
smD1YXZQFYlk27c36fENPIzpdQcEhKZUO6e48RMJ3q9HTMY/R+klHks60SGPmyHr
PSS6c+N7daj9BP67RyXzR9uvaP9QsJwERIC/MInCiqpPqjBmxNjK1kuJeEvNH40t
v9jUYVQ0sQM31/kgYeeWImzFg4AtQeweWJ0VcHjRN9JfZvOJ2xE=
=o/Pt
-----END PGP SIGNATURE-----

--ctP54qlpMx3WjD+/--

--===============6464679329589179128==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6464679329589179128==--
