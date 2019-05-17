Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBEA21812
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 14:19:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ECE4A31518;
	Fri, 17 May 2019 12:19:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 41aFA8rPY7w8; Fri, 17 May 2019 12:19:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 62D31313B5;
	Fri, 17 May 2019 12:19:11 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ED17D1BF267
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 12:19:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E7DDF87920
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 12:19:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9oJvWhOt3ykb
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 12:19:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0013787918
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 12:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kAnrHwMhEDE9Xb0+FBs0fJY+ayP3el8qDax/d8XHC7w=; b=XR3qnjN3IXiS5RS+C0sV3Nor4A
 uWDA1ZBaOjX5TEioWgJ9VI6SRKFtF7Odj/YlOvclTOs1ZH3uWW8B8fcNImD4WbQlPTGYgY7XLLY1N
 2dNkJWpSlDpNKbllhuOsPbbVtc2oAfRNGrA46w8nKbgpBizSOwxbQB+YdTVgC4YjStlDEPHZmYcih
 fENZsElL0xO1Z4BVh1g7dEMDqbnNQ91J4NPxBBRF+18vVPMloVuVBqs8V4cS4zFejQOCVLmY2k4TM
 9l9Zxc8Gn54IX9FgHQdQy+oIitbaix998qFWeCgVbee3k4vZKMZgfgGh+wWBNuuQA/s5G08leilG3
 aorR2cYg==;
Received: from ec2-34-241-25-124.eu-west-1.compute.amazonaws.com
 ([34.241.25.124] helo=azazel.net)
 by kadath.azazel.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <jeremy@azazel.net>)
 id 1hRbpK-0005VB-6U; Fri, 17 May 2019 13:19:06 +0100
Date: Fri, 17 May 2019 13:19:04 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v3 6/6] staging: kpc2000: use IDA to assign card numbers.
Message-ID: <20190517121904.GB24859@azazel.net>
References: <20190517073057.GA2631@kroah.com>
 <20190517110315.10646-1-jeremy@azazel.net>
 <20190517110315.10646-7-jeremy@azazel.net>
 <20190517115013.GA662@kroah.com>
MIME-Version: 1.0
In-Reply-To: <20190517115013.GA662@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 34.241.25.124
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
Cc: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Content-Type: multipart/mixed; boundary="===============0427674727464269847=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0427674727464269847==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Fba/0zbH8Xs+Fj9o"
Content-Disposition: inline


--Fba/0zbH8Xs+Fj9o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 2019-05-17, at 13:50:13 +0200, Greg KH wrote:
> On Fri, May 17, 2019 at 12:03:15PM +0100, Jeremy Sowden wrote:
> > Previously the next card number was assigned from a static int local
> > variable, which was read and later incremented.  This was not
> > thread- safe, so now we use an IDA instead.
>
> An ida is not thread safe either.

Most of the IDR's I looked at were protected by locks, but none of the
IDA's ...

> But, you are onlyu touching this from the pci probe/release functions,
> which are guaranteed to never race for a specific driver, so you could
> use a static int if you were just worried about the race.

... guessing this is why.

> So the changelog really isn't correct here :(

Will fix.

> > Updated TODO.
> >
> > Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
> > ---
> >  drivers/staging/kpc2000/TODO           |  1 -
> >  drivers/staging/kpc2000/kpc2000/core.c | 15 ++++++++++++---
> >  2 files changed, 12 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/kpc2000/TODO b/drivers/staging/kpc2000/TODO
> > index 669fe5bf9637..47530e23e940 100644
> > --- a/drivers/staging/kpc2000/TODO
> > +++ b/drivers/staging/kpc2000/TODO
> > @@ -1,6 +1,5 @@
> >  - the kpc_spi driver doesn't seem to let multiple transactions (to different instances of the core) happen in parallel...
> >  - The kpc_i2c driver is a hot mess, it should probably be cleaned up a ton.  It functions against current hardware though.
> > -- pcard->card_num in kp2000_pcie_probe() is a global variable and needs atomic / locking / something better.
> >  - would be nice if the AIO fileops in kpc_dma could be made to work
> >      - probably want to add a CONFIG_ option to control compilation of the AIO functions
> >  - if the AIO fileops in kpc_dma start working, next would be making iov_count > 1 work too
> > diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
> > index 80141514f7d1..3a90cdad3eb4 100644
> > --- a/drivers/staging/kpc2000/kpc2000/core.c
> > +++ b/drivers/staging/kpc2000/kpc2000/core.c
> > @@ -1,4 +1,5 @@
> >  // SPDX-License-Identifier: GPL-2.0+
> > +#include <linux/idr.h>
> >  #include <linux/init.h>
> >  #include <linux/module.h>
> >  #include <linux/pci.h>
> > @@ -18,6 +19,7 @@
> >  #include <linux/jiffies.h>
> >  #include "pcie.h"
> >
> > +static DEFINE_IDA(card_num_ida);
> >
> >  /*******************************************************
> >    * SysFS Attributes
> > @@ -230,7 +232,6 @@ int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
> >  {
> >      int err = 0;
> >      struct kp2000_device *pcard;
> > -    static int card_count = 1;
> >      int rv;
> >      unsigned long reg_bar_phys_addr;
> >      unsigned long reg_bar_phys_len;
> > @@ -250,8 +251,13 @@ int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
> >      //}
> >
> >      //{ Step 2: Initialize trivial pcard elements
> > -    pcard->card_num = card_count;
> > -    card_count++;
> > +    rv = ida_simple_get(&card_num_ida, 1, INT_MAX, GFP_KERNEL);
> > +    if (rv < 0) {
> > +	err = rv;
> > +	dev_err(&pdev->dev, "probe: failed to get card number (%d)\n", err);
> > +	goto out2;
> > +    }
> > +    pcard->card_num = rv;
>
> When writing new code, you could use the correct coding style please.
>
> Why is 'rv' even needed here?  Just use err.

Will fix.

> >      scnprintf(pcard->name, 16, "kpcard%d", pcard->card_num);
> >
> >      mutex_init(&pcard->sem);
> > @@ -428,6 +434,8 @@ int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
> >      pci_disable_device(pcard->pdev);
> >    out3:
> >      unlock_card(pcard);
> > +    ida_simple_remove(&card_num_ida, pcard->card_num);
> > +  out2:
> >      kfree(pcard);
> >      return err;
> >  }
> > @@ -461,5 +469,6 @@ void  kp2000_pcie_remove(struct pci_dev *pdev)
> >      pci_disable_device(pcard->pdev);
> >      pci_set_drvdata(pdev, NULL);
> >      unlock_card(pcard);
> > +    ida_simple_remove(&card_num_ida, pcard->card_num);
> >      kfree(pcard);
> >  }
>
> You forgot to call ida_destroy() when the module is unloaded :(
>
> Yeah, it's not obvious, and is supposed to be fixed up soon, but for now
> you still need to do that.

Nuts.  Missed it.  Will fix.

Thanks for the review.

J.

--Fba/0zbH8Xs+Fj9o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEZ8d+2N/NBLDbUxIF0Z7UzfnX9sMFAlzeprgACgkQ0Z7UzfnX
9sP7dhAAtM+QBxEJrOM4142uIrEG3nchT0Jua1Q+Z31u7+8HaKatFBnvBw2pS900
bLAiTTjLzgYGlBprvaLgS62kU5y/ysnDVI/1YjhwmotLdd3FZ1cqEdp4iBKeuzSw
5GlOYwVzW9F9zGUh4N+OMqAPJDoB4ibbmgRQuPrHi57NOjBQ/KFVwENn1j73tgT1
Uv4XI+9QtncOnCLOXRds1jmN6DfG6rh9J3vYWGFvjQ8aksqNmovdIEQ3HvxauyWq
gvmJCACaadw0eZpgbDEuCHWefH+OkXNBQxieR1Bo1YEdmGH/SfMZMLdGXhmjKhpd
LqOh8q8HrNmfxUTZKEaptj4veoBeX1AAiulTRfq6BPJ2uKF1qSKTZyGz+HtNioVy
gBE5GwT5H71qj1AqIU+nv1K23xHomp7wR5dEWYYQwTD+eKWX/XnpfwpfV5h21YA5
fQifsazS865oAb0kp3Wb/RyHQMpZCcwMkSMQw4999OYAKtn+taxBVV0k8UU/beFN
Q8A+dgAUdzoTJIEN+dRTnGpfsXsbI6Qh73epPJeCJsEeH4pwr2qlHxp2dXSo4Yt/
11c9R/8QOY1LcWHt64WugKFhP46dQ4guLeAzycxibAlWI/uNvDc8CudM2xppZIBg
oiAOT4oLYatI6immweaLRKOfKHTocLA1eqjzoGtTKMR9P53q1E4=
=Huzt
-----END PGP SIGNATURE-----

--Fba/0zbH8Xs+Fj9o--

--===============0427674727464269847==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0427674727464269847==--
