Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8455826F7AF
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Sep 2020 10:06:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1DB3620411;
	Fri, 18 Sep 2020 08:06:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GgyjfM487Wtn; Fri, 18 Sep 2020 08:06:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0540F2E1F5;
	Fri, 18 Sep 2020 08:05:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D30CC1BF3FC
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 08:05:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CF91C877C3
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 08:05:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X6i1oXDmjQnD for <devel@linuxdriverproject.org>;
 Fri, 18 Sep 2020 08:05:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2B93687626
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 08:05:54 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08I83mvt192647;
 Fri, 18 Sep 2020 08:05:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=FwzhrR6pIZT+ddO5HaCmr7glfRurUVeHrfqvesMmzJA=;
 b=OjUABHgStFfv1CkX6AQwRtXJUXjBH0AkIeV0zBZrDu+Ryz3eHaqiUi/wTGLWwAkme4mi
 Jntda+uCcBDcdtGph54CcMENWADtFDlzI3Gwhc0Tk3xa7jUT8b/NjeodkN0R8FroMrfE
 V4EfxU8H8Iy0WzyNA1kXqrKPdAJdloMYv7syCm4A9hoNw5w0muNaqUd+VKI4hVFgRqbA
 Ed47cP7Ix/k8LBfO/yKP74fMVey4y3SUtAiPNs8MvxUZArrfMmStHdLzWhRQ0iBLJiyT
 7Rp4JFt4gdusisIY4wJYD5zP/SneygwYvq2ic56xV0W4BZ1Hr3xQUQVDwTo6BCWUKTIt 9A== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 33gnrrdnx4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 18 Sep 2020 08:05:48 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08I80tFr079657;
 Fri, 18 Sep 2020 08:03:48 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 33megaxe6x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 18 Sep 2020 08:03:48 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 08I83iix026517;
 Fri, 18 Sep 2020 08:03:44 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 18 Sep 2020 08:03:44 +0000
Date: Fri, 18 Sep 2020 11:03:35 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Daniel Scally <djrscally@gmail.com>
Subject: Re: [RFC PATCH] Add bridge driver to connect sensors to CIO2 device
 via software nodes on ACPI platforms
Message-ID: <20200918080335.GT4282@kadam>
References: <20200916213618.8003-1-djrscally@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200916213618.8003-1-djrscally@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9747
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxscore=0 spamscore=0
 mlxlogscore=999 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009180067
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9747
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 spamscore=0
 lowpriorityscore=0 malwarescore=0 mlxscore=0 bulkscore=0 suspectscore=0
 clxscore=1015 mlxlogscore=999 adultscore=0 priorityscore=1501
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009180067
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
 kieran.bingham@ideasonboard.com, linux-kernel@vger.kernel.org,
 kitakar@gmail.com, sakari.ailus@linux.intel.com, bingbu.cao@intel.com,
 mchehab@kernel.org, davem@davemloft.net, tian.shu.qiu@intel.com,
 yong.zhi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I ran Smatch over the code and it spotted an off by one.

On Wed, Sep 16, 2020 at 10:36:18PM +0100, Daniel Scally wrote:
> +#define MAX_CONNECTED_DEVICES			4
> +#define SWNODE_SENSOR_HID			0
> +#define SWNODE_SENSOR_PORT			1
> +#define SWNODE_SENSOR_ENDPOINT			2
> +#define SWNODE_CIO2_PORT			3
> +#define SWNODE_CIO2_ENDPOINT			4
> +#define SWNODE_NULL_TERMINATOR			5
   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

> +struct sensor {
> +	struct device *dev;
> +	struct software_node swnodes[5];
                             ^^^^^^^^^^
This needs to be 6 instead of 5 to prevent memory corruption.

> +	struct property_entry sensor_props[6];
> +	struct property_entry cio2_props[3];
> +	struct fwnode_handle *fwnode;
> +};


> +		nodes[SWNODE_NULL_TERMINATOR]   = SOFTWARE_NODE_NULL;
                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Here.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
