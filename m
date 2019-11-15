Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 663E7FDE88
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Nov 2019 14:04:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 371E624E91;
	Fri, 15 Nov 2019 13:04:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id twIi649QjO3x; Fri, 15 Nov 2019 13:04:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0B6D020469;
	Fri, 15 Nov 2019 13:04:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A36691BF34D
 for <devel@linuxdriverproject.org>; Fri, 15 Nov 2019 13:04:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 97951889DE
 for <devel@linuxdriverproject.org>; Fri, 15 Nov 2019 13:04:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BbUEEWSd9f4H for <devel@linuxdriverproject.org>;
 Fri, 15 Nov 2019 13:04:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D95EB88659
 for <devel@driverdev.osuosl.org>; Fri, 15 Nov 2019 13:04:22 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAFCx9Ue167692;
 Fri, 15 Nov 2019 13:04:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=NFSSVbjhEqElsrA73XhmCVdsI7Nss0hsHyVS7FwP2+Q=;
 b=YQVJAjOD8u/DCdzbTWgjB6kB+86XbwfNvVG7HB4og2jcOuYIoorw9Q0nkqXYcYRYisSN
 aepKCWa+8+eYyaAJ3vCuvuCAxqGNJYt/T/V07mfYHzTeQo0Gy/ggjPSc0Vc98o2b30ul
 wtXquJGr3i3w8r/zQiIYaXbhGct+RBGyxizIoCLdpAGfNU8GwaV4T7UQQmWSLq6/hBwU
 oP2OyO7QXXejzW08cEid5+zGbKT/76G/p51uxVcWg5xjdIWdMshHO9vtZzBKNhgff9a4
 Vam6PKjXqF83Nz2Y/U7zL6RKBmqe40HuI9EQLO5rpaip/GGr3Qnm3sGc1oSR8u82aGyS mw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2w9gxpk4b3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 15 Nov 2019 13:04:16 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAFCx7p0167338;
 Fri, 15 Nov 2019 13:04:15 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2w9h14fam4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 15 Nov 2019 13:04:15 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xAFD48Hx001873;
 Fri, 15 Nov 2019 13:04:08 GMT
Received: from kadam.lan (/129.205.23.165)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 15 Nov 2019 05:04:08 -0800
Date: Fri, 15 Nov 2019 16:03:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Beniamin Bia <beniamin.bia@analog.com>
Subject: Re: [PATCH v4 2/4] iio: adc: ad7091r5: Add scale and external VREF
 support
Message-ID: <20191115130359.GE19101@kadam.lan>
References: <20191115122316.20893-1-beniamin.bia@analog.com>
 <20191115122316.20893-2-beniamin.bia@analog.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115122316.20893-2-beniamin.bia@analog.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9441
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911150120
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9441
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911150120
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com, lars@metafoo.de,
 biabeniamin@outlook.com, Michael.Hennerich@analog.com,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de, Paul Cercueil <paul.cercueil@analog.com>,
 jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 15, 2019 at 02:23:14PM +0200, Beniamin Bia wrote:
> @@ -216,6 +240,21 @@ int ad7091r_probe(struct device *dev, const char *name,
>  			return ret;
>  	}
>  
> +	st->vref = devm_regulator_get_optional(dev, "vref");
> +	if (IS_ERR(st->vref)) {
> +		if (PTR_ERR(st->vref) == EPROBE_DEFER)
                                      ^^^^^^^^^^^^^^^
Missing - on EPROBE_DEFER.

> +			return -EPROBE_DEFER;
> +
> +		st->vref = NULL;
> +	} else {
> +		ret = regulator_enable(st->vref);
> +		if (ret)
> +			return ret;
> +		ret = devm_add_action_or_reset(dev, ad7091r_remove, st);
> +		if (ret)
> +			return ret;
> +		}

Curly brace is indented an extra tab.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
