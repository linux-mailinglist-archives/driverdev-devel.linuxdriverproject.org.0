Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 973A0D9308
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 15:52:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 837F088302;
	Wed, 16 Oct 2019 13:52:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ka9gCf2NOvjj; Wed, 16 Oct 2019 13:52:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C2E77877B5;
	Wed, 16 Oct 2019 13:52:34 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C1EC81BF2AA
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 13:52:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BD16720361
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 13:52:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BG8QFZ7nxO6x
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 13:52:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id 06E8120357
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 13:52:31 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9GDnadY072397;
 Wed, 16 Oct 2019 13:52:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=RT6WwgIAQ124uGpiC/zTSw0NchbyOlxzq3SDduZSmwQ=;
 b=GpxV3Yir75uCm3qsU+Be3dsU9hcQLqlHxSI7TTBBgJvFi3qCwuLgRQqusnTNlQ0DwTc5
 3qreNb1hE3cR/gUZcmRBJkwDecgLG5+8XQgaK1/JTxuNokpgNbaLdDQHEkqr+/K9WNT+
 4MyrAXXwZVmp8i4htnPgz0Rh9z0EtfQY08NlCaSkKqW+j8W8bpWvlXI0mtA5rAOGFdLy
 26yZuj4J/kBzHdO4aXZAdqLgX+Vi/d4RAPD3nVtWqZixfKh9/mUFcgQ9K4N/YLoU99iS
 QfArAsSoEWq+SlO6LTwpscHVdGNP0eRGavGAWaDNUtwFiu/pArHO7YFHCs+Fhwm8HTVF xg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2vk7frewux-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 16 Oct 2019 13:52:19 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9GDgrMt186456;
 Wed, 16 Oct 2019 13:50:18 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2vnf7tdyed-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 16 Oct 2019 13:50:18 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9GDoDs6029673;
 Wed, 16 Oct 2019 13:50:13 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 16 Oct 2019 06:50:13 -0700
Date: Wed, 16 Oct 2019 16:50:02 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH 5/7] PCI/PM: Make power management op coding style
 consistent
Message-ID: <20191016135002.GA24678@kadam>
References: <20191014230016.240912-1-helgaas@kernel.org>
 <20191014230016.240912-6-helgaas@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014230016.240912-6-helgaas@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9411
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=931
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910160121
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9411
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910160122
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
Cc: olaf@aepfle.de, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>, linux-pci@vger.kernel.org,
 Haiyang Zhang <haiyangz@microsoft.com>, driverdev-devel@linuxdriverproject.org,
 linux-hyperv@vger.kernel.org, jackm@mellanox.com,
 Sasha Levin <Alexander.Levin@microsoft.com>, apw@canonical.com,
 marcelo.cerri@canonical.com, vkuznets@redhat.com,
 Michael Kelley <mikelley@microsoft.com>, Bjorn Helgaas <bhelgaas@google.com>,
 jasowang@redhat.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 14, 2019 at 06:00:14PM -0500, Bjorn Helgaas wrote:
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> Some of the power management ops use this style:
> 
>   struct device_driver *drv = dev->driver;
>   if (drv && drv->pm && drv->pm->prepare(dev))
>     drv->pm->prepare(dev);
> 
> while others use this:
> 
>   const struct dev_pm_ops *pm = dev->driver ? dev->driver->pm : NULL;

I like this patch a lot, especially the direct returns.  But it
occurs to me that in the future this conditional would look better as

	const struct dev_pm_ops *pm = driver_to_pm(dev->driver);

or something.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
