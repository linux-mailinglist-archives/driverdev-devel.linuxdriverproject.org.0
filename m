Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38877263D8
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 14:30:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4EEDB86E77;
	Wed, 22 May 2019 12:30:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3luTWb8amDfo; Wed, 22 May 2019 12:30:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 34AFC86DFF;
	Wed, 22 May 2019 12:30:15 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6982A1BF2BB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:30:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 65D4485CB8
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:30:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O-CnyUWlifSl
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:30:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 899B2857A4
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:30:11 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D2D982173C;
 Wed, 22 May 2019 12:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558528211;
 bh=50li5D2xrYOFwhfWwVEACVcuIzNZQkj56JwBFoC3QdU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SENvXDMhDNBZUzK6Z5RGf1NKWA9azeny1n0mXn5w9zx0F5ubdihEQNR4eDEnPm7F9
 0zMs1T9figSPNssFDbGSTHWx4cWhiKnqX/FsJrQs9jQpCBR2LbWIfqyiZpDe4+KwJj
 zsXqTa+T3KEA1z+O2sLnlJJO2fr+E0d0eAXQgaMM=
Date: Wed, 22 May 2019 14:30:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v3 3/6] staging: kpc2000: simplified kp2000_device
 retrieval in device attributes call-backs.
Message-ID: <20190522123008.GA24298@kroah.com>
References: <20190517073057.GA2631@kroah.com>
 <20190517110315.10646-1-jeremy@azazel.net>
 <20190517110315.10646-4-jeremy@azazel.net>
 <20190517115451.GA1279@kroah.com> <20190521112312.GI31203@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521112312.GI31203@kadam>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 21, 2019 at 02:23:13PM +0300, Dan Carpenter wrote:
> On Fri, May 17, 2019 at 01:54:51PM +0200, Greg KH wrote:
> > On Fri, May 17, 2019 at 12:03:12PM +0100, Jeremy Sowden wrote:
> > >  static ssize_t  show_attr(struct device *dev, struct device_attribute *attr, char *buf)
> > >  {
> > > -    struct pci_dev *pdev = to_pci_dev(dev);
> > > -    struct kp2000_device *pcard;
> > > -
> > > -    if (!pdev)  return -ENXIO;
> > > -    pcard = pci_get_drvdata(pdev);
> > > -    if (!pcard)  return -ENXIO;
> > > +    struct kp2000_device *pcard = dev_get_drvdata(dev);
> > 
> > Wait, dev_get_drvdata() is not returning you the same pointer that
> > pci_get_drvdata() does.  So I think this is now broken :(
> > 
> 
> It looks sort of weird but it's fine.
> 
> > What this should look like is this:
> > 	struct pci_dev *pdev = to_pci_dev(dev);
> > 	struct kp200_device *pcard = pci_get_drvdata(pdev);
> > 
> > 	if (!pcard)
> > 		return -ENODEV;
> > 
> > that is IF the driver really is setting the pci dev data to NULL when
> > the device is removed from the driver.  Is it?
> 
> Yes.  The pci_get_drvdata() is only set to NULL after we remove the
> sysfs files so pci_get_drvdata() always returns a valid pointer.

Ugh, I am wrong, it's not as if I didn't actually write the
dev_get_drvdata() and pci_get_drvdata() code 15+ years ago, you would
think I would have remembered something like this :(

Anyway, patches look good, sorry for the noise...

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
