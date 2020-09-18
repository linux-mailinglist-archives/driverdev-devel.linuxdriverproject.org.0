Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E153226F602
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Sep 2020 08:41:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 61A6E2E1C2;
	Fri, 18 Sep 2020 06:40:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w4bzo-qOL57a; Fri, 18 Sep 2020 06:40:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 361C52E1C0;
	Fri, 18 Sep 2020 06:40:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CBA351BF9BA
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 06:40:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BC379871D2
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 06:40:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TBi2e6b9VgOj for <devel@linuxdriverproject.org>;
 Fri, 18 Sep 2020 06:40:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0EAA0871CE
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 06:40:51 +0000 (UTC)
IronPort-SDR: NaldM6EfdWhdPkVAo9LGqI0Cs0OYvxtV92WuK7ExpUmnS9arqsMYrqoMTumlgpZsHax9b9n2XJ
 sx0f4DxXTr6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="157262662"
X-IronPort-AV: E=Sophos;i="5.77,274,1596524400"; d="scan'208";a="157262662"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 23:40:49 -0700
IronPort-SDR: /eF7IF2j1x7n1JHSe18rHooFEKh3iBpe6c6o7ZFey4vATigNWf85BIqU9ZIQAdLQ+RY6897kLT
 EThJEbfk+/aA==
X-IronPort-AV: E=Sophos;i="5.77,274,1596524400"; d="scan'208";a="307770713"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 23:40:45 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 25BDB20815; Fri, 18 Sep 2020 09:40:43 +0300 (EEST)
Date: Fri, 18 Sep 2020 09:40:43 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [RFC PATCH] Add bridge driver to connect sensors to CIO2 device
 via software nodes on ACPI platforms
Message-ID: <20200918064043.GE26842@paasikivi.fi.intel.com>
References: <20200916213618.8003-1-djrscally@gmail.com>
 <20200917103343.GW26842@paasikivi.fi.intel.com>
 <20200917104941.GP4282@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200917104941.GP4282@kadam>
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
Cc: devel@driverdev.osuosl.org, robh@kernel.org, mchehab@kernel.org,
 jorhand@linux.microsoft.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, kieran.bingham@ideasonboard.com,
 Daniel Scally <djrscally@gmail.com>, kitakar@gmail.com, yong.zhi@intel.com,
 bingbu.cao@intel.com, andriy.shevchenko@linux.intel.com, davem@davemloft.net,
 tian.shu.qiu@intel.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,

On Thu, Sep 17, 2020 at 01:49:41PM +0300, Dan Carpenter wrote:
> On Thu, Sep 17, 2020 at 01:33:43PM +0300, Sakari Ailus wrote:
> > > +static int connect_supported_devices(void)
> > > +{
> > > +	struct acpi_device *adev;
> > > +	struct device *dev;
> > > +	struct sensor_bios_data ssdb;
> > > +	struct sensor *sensor;
> > > +	struct property_entry *sensor_props;
> > > +	struct property_entry *cio2_props;
> > > +	struct fwnode_handle *fwnode;
> > > +	struct software_node *nodes;
> > > +	struct v4l2_subdev *sd;
> > > +	int i, ret;
> > 
> > unsigned int i
> > 
> 
> Why?
> 
> For list iterators then "int i;" is best...  For sizes then unsigned is
> sometimes best.  Or if it's part of the hardware spec or network spec
> unsigned is best.  Otherwise unsigned variables cause a ton of bugs.
> They're not as intuitive as signed variables.  Imagine if there is an
> error in this loop and you want to unwind.  With a signed variable you
> can do:
> 
> 	while (--i >= 0)
> 		cleanup(&bridge.sensors[i]);
> 
> There are very few times where raising the type maximum from 2 billion
> to 4 billion fixes anything.

There's simply no need for the negative integers here. Sizes (as it's a
size here) are unsigned, too, so you'd be comparing signed and unsigned
numbers later in the function.

-- 
Regards,

Sakari Ailus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
