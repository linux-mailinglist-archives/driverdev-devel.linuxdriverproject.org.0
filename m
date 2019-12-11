Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A2C11B6CF
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 17:03:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 926F986AC4;
	Wed, 11 Dec 2019 16:03:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aBk1eJeex250; Wed, 11 Dec 2019 16:03:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0F07D869E1;
	Wed, 11 Dec 2019 16:03:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7805E1BF8A8
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 16:03:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7101A87B85
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 16:03:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0mx8-qsh3t03 for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 16:03:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 635B9863FD
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 16:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JC7q0sPt/GRGBIf2Uf74AucDMKhObwoznRVXHT//S3Q=; b=ZlQJFkn9tJIjt29SdqX1PpHMRK
 pTityYajvTA/tvyRey6gPYVYmEMxu+G/zBPejLTSbFE2Gk7trOW6/vtgjB2OYyQNsFRHWIlhLGhAt
 8vM8PVrbairl+z8kzRcI2CVzx2R/PJ4fLSR6P9XQMuonoOFZfQ+VuhuGKM3oVwbJLIFk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1if4SP-0005m0-6C; Wed, 11 Dec 2019 17:03:21 +0100
Date: Wed, 11 Dec 2019 17:03:21 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: FW: [PATCH v2] staging: intel-gwdpa: gswip: Introduce Gigabit
 Ethernet Switch (GSWIP) device driver
Message-ID: <20191211160321.GA21225@lunn.ch>
References: <5f85180573a3fb20238d6a340cdd990f140ed6f0.1576054234.git.jack.ping.chng@intel.com>
 <20191211092738.GA505511@kroah.com>
 <BYAPR11MB317606F8BE2B60C4BAD872F1DE5A0@BYAPR11MB3176.namprd11.prod.outlook.com>
 <c26e56cf-eb04-5992-252a-e66f6029d6ac@linux.intel.com>
 <20191211121724.GA514307@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211121724.GA514307@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 andriy.shevchenko@intel.com, "Chng,
 Jack Ping" <jack.ping.chng@linux.intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, davem@davemloft.net,
 mallikarjunax.reddy@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> > We are trying to upstream the datapath code for Intel new NoC gateway
> > (please refer to intel-gwdpa.txt at the end of the patch). It consists of
> > ethernet, WIFI and passive optics handling. Since the code is quite huge, we
> > have broken it into parts for internal review.
> > 
> > As we have seen past upstream example such as fsl/dpaa, we thought that it
> > is better for us to start the upstreaming of the driver into staging folder
> > to get feedback from the community.
> > 
> > Is this the right approach? Or do we upstream all the drivers into
> > drivers/soc folder when we have all the drivers ready?
> 
> Why is drivers/soc/ the place to put networking drivers?
> 
> Please please please work with the Intel Linux kernel developers who
> know how to do this type of thing and do not require the kernel
> community to teach you all the proper development model and methods
> here.

I see a lot in common with dpaa2 here. You have a non traditional
hardware architecture. That means it does not nicely fit into the tree
as other drivers do.

There also appears to of been a huge amount of code development behind
closed doors, same as dpaa2. And because of the non traditional
architecture, you have had to make all sorts of design decisions. And
because that happened behind closed door, i'm sure some are
wrong. dpaa2 has been in staging for around 2 1/2 years now. It takes
that amount of time to discuss how non traditional hardware should be
supported in Linux, an re-write the drivers as needed because of the
wrong design decisions.

I kind of expect you are going to have a similar experience. So as
well as getting the Intel Linux kernel developers involved for process
and architecture support, you might want to look at how the dpaa2
drivers have evolved, what they got wrong, what they got right. How is
your hardware similar and different. And look at what parts of dpaa2
have moved out of staging, and maybe consider that code as a good
model to follow.

      Andrew
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
