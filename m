Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8572A217EC
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 13:55:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 68CA331393;
	Fri, 17 May 2019 11:54:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1j5w4+VvmK8n; Fri, 17 May 2019 11:54:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5E94231446;
	Fri, 17 May 2019 11:54:57 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EDFD71BF30A
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:54:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EAE7E87C16
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:54:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q4i2UOsIjXU7
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:54:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BB667878A4
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:54:53 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 18A9D20815;
 Fri, 17 May 2019 11:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558094093;
 bh=2GQBRvbd/3K0AXqKUR4xpv4KN3Znn8NyZSG+DQMo538=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZfjR8BpKhuI0IAUubutuPn1XGuID/OKN57Jo4RfJnOl1D3L/itondTkutKpKLYtFM
 OWJkKmHsIw3RbsUC4hXy58hbSUbw5Y0VBXE+ywo2dgipMdzZT8URdc/wcXSgQd0Ise
 GvnYRZ3nnP5C49krs1JFiiCOvc7b0mFX3Ab8E/1k=
Date: Fri, 17 May 2019 13:54:51 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jeremy Sowden <jeremy@azazel.net>
Subject: Re: [PATCH v3 3/6] staging: kpc2000: simplified kp2000_device
 retrieval in device attributes call-backs.
Message-ID: <20190517115451.GA1279@kroah.com>
References: <20190517073057.GA2631@kroah.com>
 <20190517110315.10646-1-jeremy@azazel.net>
 <20190517110315.10646-4-jeremy@azazel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517110315.10646-4-jeremy@azazel.net>
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

On Fri, May 17, 2019 at 12:03:12PM +0100, Jeremy Sowden wrote:
> The call-backs used the same recipe to get the pcard from dev:
> 
>   struct pci_dev *pdev = to_pci_dev(dev);
>   struct kp2000_device *pcard;
> 
>   if (!pdev) return -ENXIO;
>   pcard = pci_get_drvdata(pdev);
>   if (!pcard) return -ENXIO;
> 
> where to_pci_dev is a wrapper for container_of.
> 
> However, pci_set_drvdata is called before the sysfs files are created:
> 
>   int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
>   {
>     // ...
> 
>     pcard = kzalloc(sizeof(struct kp2000_device), GFP_KERNEL);
> 
>     // ...
> 
>     pcard->pdev = pdev;
>     pci_set_drvdata(pdev, pcard);
> 
>     // ...
> 
>     err = sysfs_create_files(&(pdev->dev.kobj), kp_attr_list);
> 
> Therefore, to_pci_dev and pci_get_drvdata cannot return NULL, and pcard
> can be initialized directly from dev:
> 
>   struct kp2000_device *pcard = dev_get_drvdata(dev);
> 
> Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
> ---
>  drivers/staging/kpc2000/kpc2000/core.c | 24 +++---------------------
>  1 file changed, 3 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
> index eb8bac62d33d..9425c4dbc2f2 100644
> --- a/drivers/staging/kpc2000/kpc2000/core.c
> +++ b/drivers/staging/kpc2000/kpc2000/core.c
> @@ -24,12 +24,7 @@
>    ******************************************************/
>  static ssize_t  show_attr(struct device *dev, struct device_attribute *attr, char *buf)
>  {
> -    struct pci_dev *pdev = to_pci_dev(dev);
> -    struct kp2000_device *pcard;
> -
> -    if (!pdev)  return -ENXIO;
> -    pcard = pci_get_drvdata(pdev);
> -    if (!pcard)  return -ENXIO;
> +    struct kp2000_device *pcard = dev_get_drvdata(dev);

Wait, dev_get_drvdata() is not returning you the same pointer that
pci_get_drvdata() does.  So I think this is now broken :(

What this should look like is this:
	struct pci_dev *pdev = to_pci_dev(dev);
	struct kp200_device *pcard = pci_get_drvdata(pdev);

	if (!pcard)
		return -ENODEV;

that is IF the driver really is setting the pci dev data to NULL when
the device is removed from the driver.  Is it?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
