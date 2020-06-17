Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A305E1FD534
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jun 2020 21:10:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3A8F28841A;
	Wed, 17 Jun 2020 19:10:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 87o3Bl2msrfJ; Wed, 17 Jun 2020 19:10:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AA4EA88293;
	Wed, 17 Jun 2020 19:10:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E20301BF429
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 19:10:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DB99A8944C
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 19:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dZ6UHTpgXD+X for <devel@linuxdriverproject.org>;
 Wed, 17 Jun 2020 19:10:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 57799884CD
 for <devel@driverdev.osuosl.org>; Wed, 17 Jun 2020 19:10:18 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05HJ2vLf142471;
 Wed, 17 Jun 2020 19:10:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=mhAjOCK0qv8EHbqezwl/u4xE0OuLg6vcd5uRS+AMk4U=;
 b=ejG5Xxf8X/NVgYvzKEpOt60d6ryq+DukRJeSDhaICKwOl+ecUmj68ZQ7iwMfvdNHA5Sr
 eH1NtD4x6q5/NfrJWvL7T3xu2I40rzi1rgAILePdPyVDxlH+hi2t02aENtyZgQfNE1aX
 OViMBo4chvaSeIyRc/R65/9aehkpQjDyHZaTtesH/rgIhJEcv2EDPrz5mWstjMnwiQV3
 f0nrnxhn3L44nz6KbztfwE5Meq6bB3Qg3zv/3hBnsGhkmQFHDX+8sgrFX+bFXar343Lf
 d2CDm4P78EGwcIgkaKRpaonNAZXiIDkEXjcSLRxUUtNYVfzvyC9+G3KRPadSRlRawqRG oA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 31qeckus38-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 17 Jun 2020 19:10:12 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05HJ3fW4082324;
 Wed, 17 Jun 2020 19:10:12 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 31q65y2yrw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Jun 2020 19:10:11 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05HJAAO2005034;
 Wed, 17 Jun 2020 19:10:10 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 17 Jun 2020 12:10:09 -0700
Date: Wed, 17 Jun 2020 22:10:02 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Zhixu Zhao <zhixu001@126.com>
Subject: Re: [PATCH v2] staging: gasket: core: Fix a coding style issue in
 gasket_core.c
Message-ID: <20200617191002.GP4151@kadam>
References: <20200617161127.32006-1-zhixu001@126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617161127.32006-1-zhixu001@126.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9655
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0
 phishscore=0 bulkscore=0 malwarescore=0 mlxscore=0 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006170144
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9655
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 cotscore=-2147483648 malwarescore=0
 clxscore=1011 adultscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0
 mlxlogscore=999 priorityscore=1501 bulkscore=0 phishscore=0 mlxscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006170144
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Richard Yeh <rcy@google.com>,
 Rob Springer <rspringer@google.com>, Joe Perches <joe@perches.com>,
 Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 18, 2020 at 12:11:27AM +0800, Zhixu Zhao wrote:
> diff --git a/drivers/staging/gasket/gasket_core.c b/drivers/staging/gasket/gasket_core.c
> index 67325fbaf760..28dab302183b 100644
> --- a/drivers/staging/gasket/gasket_core.c
> +++ b/drivers/staging/gasket/gasket_core.c
> @@ -261,6 +261,7 @@ static int gasket_map_pci_bar(struct gasket_dev *gasket_dev, int bar_num)
>  	const struct gasket_driver_desc *driver_desc =
>  		internal_desc->driver_desc;
>  	ulong desc_bytes = driver_desc->bar_descriptions[bar_num].size;
                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Get rid of this as well (below).

> +	struct gasket_bar_data *data;
>  	int ret;
>  
>  	if (desc_bytes == 0)
> @@ -270,31 +271,32 @@ static int gasket_map_pci_bar(struct gasket_dev *gasket_dev, int bar_num)
>  		/* not PCI: skip this entry */
>  		return 0;
>  	}
> +
> +	data = &gasket_dev->bar_data[bar_num];

It would be better to do this in the declaration block so you can change
the earlier two uses in this function:

+	struct gasket_bar_data *data = &gasket_dev->bar_data[bar_num];
-	ulong desc_bytes = driver_desc->bar_descriptions[bar_num].size;
+	ulong desc_bytes = data->size;

...

-	if (driver_desc->bar_descriptions[bar_num].type != PCI_BAR) {
+	if (data->type != PCI_BAR) {

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
