Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1066026F7CE
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Sep 2020 10:16:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 296E02E1EE;
	Fri, 18 Sep 2020 08:16:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jAM0eJbW98Fy; Fri, 18 Sep 2020 08:16:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BCD962E1E7;
	Fri, 18 Sep 2020 08:16:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 737801BF3FC
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 08:16:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6FA028762B
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 08:16:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TcRnfbKE+QJG for <devel@linuxdriverproject.org>;
 Fri, 18 Sep 2020 08:16:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 244F487482
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 08:16:27 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08I8F2p2070722;
 Fri, 18 Sep 2020 08:16:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=XZIYm24yndlWZXI5R5Yn+Q8BksLATNq+z3yjFm3AtHA=;
 b=YUz17olhIiyfVpmLPeUEvUXXTHm+DPpH6IRUD1lcgVzol0cilLunRafThRgfumbumdr+
 UiXy6Pi95Gwx1Yi7zv2j0JpOcOEf8NGzOYpgMIw6vBlNVTWMVDJAGi1lvGlHfbJUNz3n
 UAlmcADOI/wYQisZZ6qCEB5GLixnD+KFuxSzCsOdXtPOOe2XM3WNBN/QxL5vCeSn8fmx
 Bby4JNT3jKL4c2RbapJdgyvyPpilx7G17FlXjK3f+a+dSvXO+CfMkaCETdUTJ+O26t0+
 e0o5D8nGnkuApKk6njKVp4FhSD0rQuxG2Z0PnjfutDkIRkimakPLLNcrvdZrTIlfmpGc pQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 33gp9mnn63-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 18 Sep 2020 08:16:24 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08I8G1hN106137;
 Fri, 18 Sep 2020 08:16:24 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 33hm36dvus-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 18 Sep 2020 08:16:24 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 08I8GKxn007685;
 Fri, 18 Sep 2020 08:16:20 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 18 Sep 2020 08:16:20 +0000
Date: Fri, 18 Sep 2020 11:16:09 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [RFC PATCH] Add bridge driver to connect sensors to CIO2 device
 via software nodes on ACPI platforms
Message-ID: <20200918081609.GR18329@kadam>
References: <20200916213618.8003-1-djrscally@gmail.com>
 <20200917103343.GW26842@paasikivi.fi.intel.com>
 <20200917104941.GP4282@kadam>
 <20200918064043.GE26842@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200918064043.GE26842@paasikivi.fi.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9747
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 bulkscore=0 mlxlogscore=999
 malwarescore=0 mlxscore=0 phishscore=0 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009180069
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9747
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxlogscore=999
 adultscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 phishscore=0
 spamscore=0 priorityscore=1501 suspectscore=0 impostorscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009180069
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
Cc: devel@driverdev.osuosl.org, robh@kernel.org,
 andriy.shevchenko@linux.intel.com, jorhand@linux.microsoft.com,
 linux-media@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, kieran.bingham@ideasonboard.com,
 Daniel Scally <djrscally@gmail.com>, yong.zhi@intel.com, bingbu.cao@intel.com,
 mchehab@kernel.org, davem@davemloft.net, tian.shu.qiu@intel.com,
 kitakar@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 18, 2020 at 09:40:43AM +0300, Sakari Ailus wrote:
> Hi Dan,
> 
> On Thu, Sep 17, 2020 at 01:49:41PM +0300, Dan Carpenter wrote:
> > On Thu, Sep 17, 2020 at 01:33:43PM +0300, Sakari Ailus wrote:
> > > > +static int connect_supported_devices(void)
> > > > +{
> > > > +	struct acpi_device *adev;
> > > > +	struct device *dev;
> > > > +	struct sensor_bios_data ssdb;
> > > > +	struct sensor *sensor;
> > > > +	struct property_entry *sensor_props;
> > > > +	struct property_entry *cio2_props;
> > > > +	struct fwnode_handle *fwnode;
> > > > +	struct software_node *nodes;
> > > > +	struct v4l2_subdev *sd;
> > > > +	int i, ret;
> > > 
> > > unsigned int i
> > > 
> > 
> > Why?
> > 
> > For list iterators then "int i;" is best...  For sizes then unsigned is
> > sometimes best.  Or if it's part of the hardware spec or network spec
> > unsigned is best.  Otherwise unsigned variables cause a ton of bugs.
> > They're not as intuitive as signed variables.  Imagine if there is an
> > error in this loop and you want to unwind.  With a signed variable you
> > can do:
> > 
> > 	while (--i >= 0)
> > 		cleanup(&bridge.sensors[i]);
> > 
> > There are very few times where raising the type maximum from 2 billion
> > to 4 billion fixes anything.
> 
> There's simply no need for the negative integers here. Sizes (as it's a
> size here) are unsigned, too, so you'd be comparing signed and unsigned
> numbers later in the function.

I'm not trying to be rude, I'm honestly puzzled by this...

The "i" variable is not a size, it's an iterator...  Comparing signed
and unsigned isn't necessarily a problem, but the only comparison in
this case is here:

   253          struct property_entry *cio2_props;
   254          struct fwnode_handle *fwnode;
   255          struct software_node *nodes;
   256          struct v4l2_subdev *sd;
   257          int i, ret;
   258  
   259          for (i = 0; i < ARRAY_SIZE(supported_devices); i++) {
                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
That's obviously fine.  The compiler knows at compile time the value of
ARRAY_SIZE().  I feel like there must be a static checker which
complains about this?  ARRAY_SIZE() is size_t.

   260                  adev = acpi_dev_get_first_match_dev(supported_devices[i],
   261                                                      NULL, -1);
   262  
   263                  if (!adev)
   264                          continue;
   265  

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
