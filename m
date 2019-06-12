Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CC241E24
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 09:46:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1EE2184539;
	Wed, 12 Jun 2019 07:46:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9u8tTuitrHnN; Wed, 12 Jun 2019 07:46:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A063C8443A;
	Wed, 12 Jun 2019 07:46:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 565411BF33D
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 07:46:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 52CE622270
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 07:46:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PIk5v6AODbqb for <devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 07:46:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id A94FA22610
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 07:46:02 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 01FD72063F;
 Wed, 12 Jun 2019 07:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560325562;
 bh=HBZmv5Jn4n9YMcC+WRXXHUaGqXSrdl/9dvlD6Nov5CE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V93fDOv58OVuF84Uc+57iq7ktK3sbLn4eXKDOQ0FdpBC8DVe+hcp9xwb8VFhDhpk/
 zJ+HbHKsCpFAu+Ivji7vr5PkY+YAqVUAXAqB0sWyp7EKrSpblnJM3dN6s2DbZueMI9
 ivUk4cQDgo+1ohgOriBPHRPFm41Gc2Xlk+qKZL7M=
Date: Wed, 12 Jun 2019 09:46:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 2/2] staging: kpc2000: remove unnecessary comments in
 kp2000_pcie_probe
Message-ID: <20190612074600.GA17100@kroah.com>
References: <20190610200535.31820-1-simon@nikanor.nu>
 <20190610200535.31820-3-simon@nikanor.nu>
 <20190612073936.GD1915@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612073936.GD1915@kadam>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jun 12, 2019 at 10:39:36AM +0300, Dan Carpenter wrote:
> On Mon, Jun 10, 2019 at 10:05:35PM +0200, Simon Sandstr=F6m wrote:
> > @@ -349,9 +340,7 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
> >  		goto err_remove_ida;
> >  	}
> >  =

> > -	/*
> > -	 * Step 4: Setup the Register BAR
> > -	 */
> > +	// Setup the Register BAR
> =

> Greg, are we moving the C++ style comments?  Linus is fine with them.  I
> don't like them but whatever...

I don't like them either.  I'm only "ok" with them on the very first
line of the file.  Linus chose // to make it "stand out" from the normal
flow of the file, which is fine for an SPDX line.  So putting these in
here like this is not ok to me.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
