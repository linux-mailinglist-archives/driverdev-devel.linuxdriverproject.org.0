Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D31211AA97
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 13:17:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4467B87E2F;
	Wed, 11 Dec 2019 12:17:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KGMerbovzZ8Y; Wed, 11 Dec 2019 12:17:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 730B787E01;
	Wed, 11 Dec 2019 12:17:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CAB051BF4D5
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 12:17:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C78F386E48
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 12:17:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C0Kk3BQF4nAd for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 12:17:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2067486DB0
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 12:17:27 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6ADEA214D8;
 Wed, 11 Dec 2019 12:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576066646;
 bh=1n4dRkvvdCKETj6YqGunEjOSbdyLrGPyEqXt3M6/6wg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=THftVLfHvoU6YrX83eDiFEHMqmQzvJgd5DeuwSKhX2F4lhHXMy+pikZZxyRETijp3
 kESWxqIVEK0BKR/gxeZZm9zuT6lD22QmeIKDUw9Cp0JkHxatXzo3qrCedCfutgWWAH
 IZpPzdBjNzNsHQheWPxZC3At7oJRHln1BdIH3CcA=
Date: Wed, 11 Dec 2019 13:17:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: "Chng, Jack Ping" <jack.ping.chng@linux.intel.com>
Subject: Re: FW: [PATCH v2] staging: intel-gwdpa: gswip: Introduce Gigabit
 Ethernet Switch (GSWIP) device driver
Message-ID: <20191211121724.GA514307@kroah.com>
References: <5f85180573a3fb20238d6a340cdd990f140ed6f0.1576054234.git.jack.ping.chng@intel.com>
 <20191211092738.GA505511@kroah.com>
 <BYAPR11MB317606F8BE2B60C4BAD872F1DE5A0@BYAPR11MB3176.namprd11.prod.outlook.com>
 <c26e56cf-eb04-5992-252a-e66f6029d6ac@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c26e56cf-eb04-5992-252a-e66f6029d6ac@linux.intel.com>
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
Cc: devel@driverdev.osuosl.org, cheol.yong.kim@intel.com,
 andriy.shevchenko@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, davem@davemloft.net,
 mallikarjunax.reddy@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Dec 11, 2019 at 06:37:42PM +0800, Chng, Jack Ping wrote:
> Hi Greg,
> 
> > -----Original Message-----
> > From: Greg KH <gregkh@linuxfoundation.org>
> > Sent: Wednesday, December 11, 2019 5:28 PM
> > To: Chng, Jack Ping <jack.ping.chng@intel.com>
> > Cc: devel@driverdev.osuosl.org; Kim, Cheol Yong <cheol.yong.kim@intel.com>; Shevchenko, Andriy <andriy.shevchenko@intel.com>; netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Amireddy Mallikarjuna reddy <mallikarjunax.reddy@linux.intel.com>; davem@davemloft.net
> > Subject: Re: [PATCH v2] staging: intel-gwdpa: gswip: Introduce Gigabit Ethernet Switch (GSWIP) device driver
> > 
> > On Wed, Dec 11, 2019 at 04:57:28PM +0800, Jack Ping CHNG wrote:
> > > This driver enables the Intel's LGM SoC GSWIP block.
> > > GSWIP is a core module tailored for L2/L3/L4+ data plane and QoS functions.
> > > It allows CPUs and other accelerators connected to the SoC datapath to
> > > enqueue and dequeue packets through DMAs.
> > > Most configuration values are stored in tables such as Parsing and
> > > Classification Engine tables, Buffer Manager tables and Pseudo MAC
> > > tables.
> > Odd line wrapping :(
> > 
> > > Signed-off-by: Jack Ping CHNG <jack.ping.chng@intel.com>
> > > Signed-off-by: Amireddy Mallikarjuna reddy
> > > <mallikarjunax.reddy@linux.intel.com>
> > > ---
> > > Changes on v2:
> > > - Renamed intel-dpa to intel-gwdpa
> > > - Added intel-gwdpa.txt(Intel Gateway Datapath Architecture)
> > > - Added TODO (upstream plan)
> > 
> > > +Upstream plan
> > > +--------------
> > > +
> > > +      GSWIP  CQM  PP  DPM     DCDP
> > > +        |     |    |   |        |
> > > +        |     |    |   |        |
> > > +        V     V    V   V        V
> > > +        -------------------------------------( drivers/staging/intel-gwdpa/* )
> > > +                            |  (move to soc folder)
> > > +                            V
> > > +                    -------------------------(
> > > + drivers/soc/intel/gwdpa-*/* )
> > > +
> > > +                            Eth driver  Wireless/
> > > +                                |       WAN driver
> > > +                                |         |
> > > +                                V         V
> > > +                             ----------------( drivers/net/ethernet/intel )
> > > +                                             ( drivers/net/wireless )
> > > +                                             ( drivers/net/wan)
> > > +
> > > +* Each driver will have a TODO list.
> > Again, what kind of plan is this?  It's just a "these files need to be moved to this location" plan?
> > 
> > Why not do that today?
> > 
> > What is keeping this code from being accepted in the "correct" place today?  And why do you want it in staging?  You know it takes even more work to do things here, right?  Are you ready to sign up for that work (hint, you didn't add your names to the MAINTAINER file, so I worry about that...)
> 
> Thanks for the reply.
> 
> We are trying to upstream the datapath code for Intel new NoC gateway
> (please refer to intel-gwdpa.txt at the end of the patch). It consists of
> ethernet, WIFI and passive optics handling. Since the code is quite huge, we
> have broken it into parts for internal review.
> 
> As we have seen past upstream example such as fsl/dpaa, we thought that it
> is better for us to start the upstreaming of the driver into staging folder
> to get feedback from the community.
> 
> Is this the right approach? Or do we upstream all the drivers into
> drivers/soc folder when we have all the drivers ready?

Why is drivers/soc/ the place to put networking drivers?

Please please please work with the Intel Linux kernel developers who
know how to do this type of thing and do not require the kernel
community to teach you all the proper development model and methods
here.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
