Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 159EF21811
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 14:18:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD9BC84056;
	Fri, 17 May 2019 12:18:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H9SZYXlz53J3; Fri, 17 May 2019 12:18:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B5E983754;
	Fri, 17 May 2019 12:18:22 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 892521BF267
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 12:18:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 833BC22854
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 12:18:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DJ5Ujdz0YbgU
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 12:18:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by silver.osuosl.org (Postfix) with ESMTPS id C5F4420798
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IndPlICbfq4eJ1bClZIg/7P5hWkUm9tsFWBMuBRsGBY=; b=YwfRo3jYzQ5cUQP/GCjwye0Kbw
 /DsmCd+BPVsg1FHjLs2tl3nn1tivDIQS89WOBMqh+MbHHgwqIKMu4JTaMdOjmGiONdJW9kWdldT3j
 BzgZ38GhuuuHfX/58ffcSW2eaqQP2m3OcLTyimZaa2E53h8CorPnVATrnlD/DiyqhMhNsSRKiGp8P
 ZPS3bNHuAsZkbvL+B1xz6y2Hroa3yNMGMGZwVRjSKE7ULYW/8iMQTPlaLFZAuyDvmiAKSniWejC2I
 kI0Ky86q5M5spSqirOqYPFK/H7JjHQCU5NO1G4Tft9/iduky3VCS4WxNKSqHuSwYE/zPX+Mj8pmdS
 ZRXAlDSQ==;
Received: from ec2-34-241-25-124.eu-west-1.compute.amazonaws.com
 ([34.241.25.124] helo=azazel.net)
 by kadath.azazel.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <jeremy@azazel.net>)
 id 1hRboT-0005UT-Ia; Fri, 17 May 2019 13:18:13 +0100
Date: Fri, 17 May 2019 13:18:11 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v3 3/6] staging: kpc2000: simplified kp2000_device
 retrieval in device attributes call-backs.
Message-ID: <20190517121811.GA24859@azazel.net>
References: <20190517073057.GA2631@kroah.com>
 <20190517110315.10646-1-jeremy@azazel.net>
 <20190517110315.10646-4-jeremy@azazel.net>
 <20190517115451.GA1279@kroah.com>
MIME-Version: 1.0
In-Reply-To: <20190517115451.GA1279@kroah.com>
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
Content-Type: multipart/mixed; boundary="===============4086012374279326080=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4086012374279326080==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wac7ysb48OaltWcw"
Content-Disposition: inline


--wac7ysb48OaltWcw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 2019-05-17, at 13:54:51 +0200, Greg KH wrote:
> On Fri, May 17, 2019 at 12:03:12PM +0100, Jeremy Sowden wrote:
> > The call-backs used the same recipe to get the pcard from dev:
> >
> >   struct pci_dev *pdev = to_pci_dev(dev);
> >   struct kp2000_device *pcard;
> >
> >   if (!pdev) return -ENXIO;
> >   pcard = pci_get_drvdata(pdev);
> >   if (!pcard) return -ENXIO;
> >
> > where to_pci_dev is a wrapper for container_of.
> >
> > However, pci_set_drvdata is called before the sysfs files are
> > created:
> >
> >   int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
> >   {
> >     // ...
> >
> >     pcard = kzalloc(sizeof(struct kp2000_device), GFP_KERNEL);
> >
> >     // ...
> >
> >     pcard->pdev = pdev;
> >     pci_set_drvdata(pdev, pcard);
> >
> >     // ...
> >
> >     err = sysfs_create_files(&(pdev->dev.kobj), kp_attr_list);
> >
> > Therefore, to_pci_dev and pci_get_drvdata cannot return NULL, and
> > pcard can be initialized directly from dev:
> >
> >   struct kp2000_device *pcard = dev_get_drvdata(dev);
> >
> > Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
> > ---
> >  drivers/staging/kpc2000/kpc2000/core.c | 24 +++---------------------
> >  1 file changed, 3 insertions(+), 21 deletions(-)
> >
> > diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
> > index eb8bac62d33d..9425c4dbc2f2 100644
> > --- a/drivers/staging/kpc2000/kpc2000/core.c
> > +++ b/drivers/staging/kpc2000/kpc2000/core.c
> > @@ -24,12 +24,7 @@
> >    ******************************************************/
> >  static ssize_t  show_attr(struct device *dev, struct device_attribute *attr, char *buf)
> >  {
> > -    struct pci_dev *pdev = to_pci_dev(dev);
> > -    struct kp2000_device *pcard;
> > -
> > -    if (!pdev)  return -ENXIO;
> > -    pcard = pci_get_drvdata(pdev);
> > -    if (!pcard)  return -ENXIO;
> > +    struct kp2000_device *pcard = dev_get_drvdata(dev);
>
> Wait, dev_get_drvdata() is not returning you the same pointer that
> pci_get_drvdata() does.  So I think this is now broken :(

I'm confused.  Perhaps I'm looking at the wrong code.

Here are pci_get_drvdata:

  static inline void *pci_get_drvdata(struct pci_dev *pdev)
  {
          return dev_get_drvdata(&pdev->dev);
  }

and dev_get_drvdata:

  static inline void *dev_get_drvdata(const struct device *dev)
  {
          return dev->driver_data;
  }

Starting withing with dev and using to_pci_dev, we have:

  pci_get_drvdata(to_pci_dev(dev))

which is the same as:

  dev_get_drvdata(&(to_pci_dev(dev)->dev)

which is the same as:

  dev_get_drvdata(dev)

isn't it?

> What this should look like is this:
> 	struct pci_dev *pdev = to_pci_dev(dev);
> 	struct kp200_device *pcard = pci_get_drvdata(pdev);
>
> 	if (!pcard)
> 		return -ENODEV;
>
> that is IF the driver really is setting the pci dev data to NULL when
> the device is removed from the driver.  Is it?

It sets it to NULL after removing the sysfs files and disabling the
device:

    lock_card(pcard);
    // ...
    sysfs_remove_files(&(pdev->dev.kobj), kp_attr_list);
    // ...
    pci_disable_device(pcard->pdev);
    pci_set_drvdata(pdev, NULL);
    unlock_card(pcard);
    kfree(pcard);

Can the show functions get called after pci_set_drvdata is called?

J.

--wac7ysb48OaltWcw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEZ8d+2N/NBLDbUxIF0Z7UzfnX9sMFAlzepnsACgkQ0Z7UzfnX
9sM4sg/5ARHsHVLNWX6nXlPAwW8FUDMXaO5wVWNdbdks7lFt0rvI28CSdHzoVUnC
KhLpbWvm5/ZVvl9PUMkxmDcLzufuDz/4iZLWjYOxDXUutC0XKhEOTKD7ZJsczS+h
rVjyOesnK2+8b8Iyz08pG1oxlJqTHESulGZdYpt/t5O92Hn0ROY73S8MgnpiK06r
nyrSS/vg/LVzDcgj4hR5vJx2R+AV1q23lDi7/kLlSzE/H1IhbVgDm47PqpjOUnbE
i2kXATo3qRFbqz2HbnD9ym59wVNT1X5gmMqsXcFF6IStaHw5mtJOZnLr0biyCBVX
RzY/VlQHVwHCYoF/M8xxchUpww8qD5GTlsgfGsLlo1hc/lNAX2Pdw/gaexOc5BnZ
e5E18OSK2vM++iItFJdeCzny+c8bpESM1/rEoDDBT3zmquw9cNXAMYdILeyh6HlI
jhE/gPNLjBHyro8ke7Btb2bSZjD3ZD4kIdz3qnXvG03E3nLPU8GTYXx9nCnm4QXd
VEjVUBysBCvLe6vE0G7To0mr3iguQ+MQ5T4E7LivvMqwev1w0Ie2AY1mLjB6zcKu
e8ErZXXmjurW20vaMcbtqIAyoK74RPu7ev+OEgB1NQQbUVrVkL7LUHlI/tqP4qG5
yQxQlFzPHgr933lRWMoOjj4NWdhLGHMT4N15AER7vLKMxiDI82Y=
=lkHB
-----END PGP SIGNATURE-----

--wac7ysb48OaltWcw--

--===============4086012374279326080==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4086012374279326080==--
