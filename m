Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E121A26D997
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 12:52:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8CD8F2E191;
	Thu, 17 Sep 2020 10:52:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MAn7n13F-pZ0; Thu, 17 Sep 2020 10:52:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B4CDE2E181;
	Thu, 17 Sep 2020 10:52:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6DF3C1BF387
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 10:52:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EFDF087555
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 10:51:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PCW9l7RYQ1-s for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 10:51:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5ACE48754A
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 10:51:57 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08HAmPgZ173583;
 Thu, 17 Sep 2020 10:51:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=128JYvB1/lmV8xI78ndvYWC8FeCoUJpVcSljx9SrvpM=;
 b=BgicA9ehoRykkgTkNpjKAwj/XN7TtpnaePV4WmuvWeT2mqC1TRh6WLVaL4T8NkFQQLvt
 oAhaYrwk4G5HijzeIMZKgAPUwxsa8yEASN/XkHzKjdFoDrFXVdEGBdF8Ka0YjHoDflaV
 bWGkroDeTkLZHB66X2EjxXxmXIcs7Z4PeGegZMXYUigmZcH7YTmvjSGMdZ0PNHRdzESg
 DjLdDhR5axaXvG4fM6ZOaiXT6Da5JvJZHvFDVLyM3xqQ9RUfQSnEhiDwxhqdKeHREg89
 K7Zkac9PX+layGgGUWIlkGmma6sR54e/C46HhAbN9FRdIsvb0rxrba9Xlme32YHUefKg rw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 33j91dt402-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 17 Sep 2020 10:51:53 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08HAinTl095421;
 Thu, 17 Sep 2020 10:49:53 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 33h893gq3a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 17 Sep 2020 10:49:53 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 08HAnp23028997;
 Thu, 17 Sep 2020 10:49:51 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 17 Sep 2020 10:49:50 +0000
Date: Thu, 17 Sep 2020 13:49:41 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [RFC PATCH] Add bridge driver to connect sensors to CIO2 device
 via software nodes on ACPI platforms
Message-ID: <20200917104941.GP4282@kadam>
References: <20200916213618.8003-1-djrscally@gmail.com>
 <20200917103343.GW26842@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200917103343.GW26842@paasikivi.fi.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9746
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 spamscore=0 adultscore=0
 suspectscore=0 mlxscore=0 bulkscore=0 mlxlogscore=999 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009170082
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9746
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 impostorscore=0
 priorityscore=1501 malwarescore=0 suspectscore=0 mlxlogscore=999
 clxscore=1015 adultscore=0 lowpriorityscore=0 spamscore=0 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009170083
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

On Thu, Sep 17, 2020 at 01:33:43PM +0300, Sakari Ailus wrote:
> > +static int connect_supported_devices(void)
> > +{
> > +	struct acpi_device *adev;
> > +	struct device *dev;
> > +	struct sensor_bios_data ssdb;
> > +	struct sensor *sensor;
> > +	struct property_entry *sensor_props;
> > +	struct property_entry *cio2_props;
> > +	struct fwnode_handle *fwnode;
> > +	struct software_node *nodes;
> > +	struct v4l2_subdev *sd;
> > +	int i, ret;
> 
> unsigned int i
> 

Why?

For list iterators then "int i;" is best...  For sizes then unsigned is
sometimes best.  Or if it's part of the hardware spec or network spec
unsigned is best.  Otherwise unsigned variables cause a ton of bugs.
They're not as intuitive as signed variables.  Imagine if there is an
error in this loop and you want to unwind.  With a signed variable you
can do:

	while (--i >= 0)
		cleanup(&bridge.sensors[i]);

There are very few times where raising the type maximum from 2 billion
to 4 billion fixes anything.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
