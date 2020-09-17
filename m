Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DF426DC9E
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 15:16:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D6242878A6;
	Thu, 17 Sep 2020 13:16:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SJPwMNWY3B4H; Thu, 17 Sep 2020 13:16:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A7CFA878C7;
	Thu, 17 Sep 2020 13:16:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AD6401BF592
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 13:16:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A51DF87606
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 13:16:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sVaGn6bp6b0C for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 13:16:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0A1A9875FF
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 13:16:03 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08HDF94R191683;
 Thu, 17 Sep 2020 13:15:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=5CbLmgITuVkqkFczc34ggox0p6HVp0zkDBlqxycTwzg=;
 b=y2lyX+h85UIrFjMPlZFK+zvbr7kOVi+d+2Se7Np3DWIxTcOBpQmgK9qcaBM9SJ2yUt/5
 4/DXHW/niq1G7676El/PJ9QrTpvV2kBv2yUz1sTEmlsOzMO1jv7haDG8U3yV+8ufdgMJ
 V+USwsMGsPYQl11bu4d4eAtdxkh2oYXO/QUctgSU6ah+E85asMERpC/JPuPYaKXDHMwT
 OcNRn884hxXDYm2BLeWNwkBUzvVTTnGl5CgZyGfslQhzHh5xYqAqDxkEHET0c/xJ7cO9
 p9yOngAxcUjAllLG1NafauUKgaNqaz10zMha1zao8RbtNmvm/Ke0VhNVlXX3QRevJAk8 Wg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 33gp9mh71k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 17 Sep 2020 13:15:59 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08HDFvk1002688;
 Thu, 17 Sep 2020 13:15:58 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 33hm34u9y4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 17 Sep 2020 13:15:58 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 08HDFnLD003602;
 Thu, 17 Sep 2020 13:15:49 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 17 Sep 2020 13:15:48 +0000
Date: Thu, 17 Sep 2020 16:15:39 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [RFC PATCH] Add bridge driver to connect sensors to CIO2 device
 via software nodes on ACPI platforms
Message-ID: <20200917131539.GR4282@kadam>
References: <20200916213618.8003-1-djrscally@gmail.com>
 <20200917103343.GW26842@paasikivi.fi.intel.com>
 <20200917104941.GP4282@kadam>
 <20200917122529.GJ3956970@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200917122529.GJ3956970@smile.fi.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9746
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 bulkscore=0 mlxlogscore=999
 malwarescore=0 mlxscore=0 phishscore=0 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009170101
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9746
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxlogscore=999
 adultscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 phishscore=0
 spamscore=0 priorityscore=1501 suspectscore=0 impostorscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009170101
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
Cc: devel@driverdev.osuosl.org, robh@kernel.org, jorhand@linux.microsoft.com,
 linux-media@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, kieran.bingham@ideasonboard.com,
 Daniel Scally <djrscally@gmail.com>, kitakar@gmail.com,
 Sakari Ailus <sakari.ailus@linux.intel.com>, bingbu.cao@intel.com,
 mchehab@kernel.org, davem@davemloft.net, tian.shu.qiu@intel.com,
 yong.zhi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 17, 2020 at 03:25:29PM +0300, Andy Shevchenko wrote:
> On Thu, Sep 17, 2020 at 01:49:41PM +0300, Dan Carpenter wrote:
> > On Thu, Sep 17, 2020 at 01:33:43PM +0300, Sakari Ailus wrote:
> 
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
> 
> Ha-ha. It's actually a counter argument to your stuff because above is the same as
> 
> 	while (i--)
> 		cleanup(&bridge.sensors[i]);
> 
> with pretty much unsigned int i.

With vanilla "int i;" you can't go wrong because both styles work as
expected.  I was just giving examples of real life bugs that I have seen
involving unsigned iterators.

54313503f9a3 ("drm/amdgpu: signedness bug in amdgpu_cs_parser_init()")

Here are a couple more bugs involving unsigned iterators...

d72cf01f410a ("drm/mipi-dbi: fix a loop in debugfs code")
ce6c1cd2c324 ("pinctrl: nsp-gpio: forever loop in nsp_gpio_get_strength()")

I've change a lot of variables unsigned as well.  For min_t() then it
should *always* be an unsigned type.

It's pretty rare to iterate over 2 billion times in the kernel, but
there are times when you might want to do that.  Normally you would
want to declare the iterator as an unsigned ong in that case.  But most
of the time iterators should just be "int i;" to prevent bugs.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
