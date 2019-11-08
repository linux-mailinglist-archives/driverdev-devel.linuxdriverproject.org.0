Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B956F4513
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Nov 2019 11:55:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DDCA385FB0;
	Fri,  8 Nov 2019 10:55:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id znyrV8S-Zxgt; Fri,  8 Nov 2019 10:55:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2E12E85FAA;
	Fri,  8 Nov 2019 10:55:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B6331BF298
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 10:55:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 225D287C9C
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 10:55:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7+2I+2L+khdU for <devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 10:55:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 76AAF87C89
 for <devel@driverdev.osuosl.org>; Fri,  8 Nov 2019 10:55:52 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA8AsJnj040693;
 Fri, 8 Nov 2019 10:55:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=0I56CIW7IhXRaus+/lFEaLNLK2HcD+ZbLGBqaX03oow=;
 b=YKYbNwzHPGwYQKugCt3krp4d5TQuvtnjyTDpbPlThK+DwTTQMtHmyYUhfqWaNnt2vJjo
 o27GQXCkZDhk6l5Nh7UxnoYujhRSLKKRVBYhpJSoviMDq0bsiuykMDh59XU2dU+zB33Q
 h5wARrMa3mAAVxJir+y+l9puABXvVtYZ60470aRece3urOAHZmPLdnnkXQSnZX+8zsPh
 yxCd/3oVMvsiwucC60Cd4uMFen1ersUdjYABo0zJg+eCfVeXIpgWE3UBms7PgRlRDRZb
 GuN45k0zDufiDNYfVcAyR6pwrPav5I7F3xuy1Jj6QqLOv6p8i+Dz8Ir7ZAYMaUXvtcgR 5Q== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2w41w14jyf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 08 Nov 2019 10:55:47 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA8AsVQK023409;
 Fri, 8 Nov 2019 10:55:46 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2w4k31jj1y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 08 Nov 2019 10:55:46 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xA8ArXJ0021477;
 Fri, 8 Nov 2019 10:53:33 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 08 Nov 2019 02:53:33 -0800
Date: Fri, 8 Nov 2019 13:53:19 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Beniamin Bia <beniamin.bia@analog.com>
Subject: Re: [PATCH v3 1/4] iio: adc: Add support for AD7091R5 ADC
Message-ID: <20191108105213.GR10409@kadam>
References: <20191107150759.5937-1-beniamin.bia@analog.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107150759.5937-1-beniamin.bia@analog.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9434
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1910280000 definitions=main-1911080107
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9434
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1910280000
 definitions=main-1911080107
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
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, nicolas.ferre@microchip.com, robh+dt@kernel.org,
 pmeerw@pmeerw.net, mchehab+samsung@kernel.org, paulmck@linux.ibm.com,
 Paul Cercueil <paul.cercueil@analog.com>, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Nov 07, 2019 at 05:07:56PM +0200, Beniamin Bia wrote:
> +static int ad7091r_set_mode(struct ad7091r_state *st, enum ad7091r_mode mode)
> +{
> +	int ret, conf;
> +
> +	switch (mode) {
> +	case AD7091R_MODE_SAMPLE:
> +		conf = 0;
> +		break;
> +	case AD7091R_MODE_COMMAND:
> +		conf = AD7091R_REG_CONF_CMD;
> +		break;
> +	case AD7091R_MODE_AUTOCYCLE:
> +		conf = AD7091R_REG_CONF_AUTO;
> +		break;
> +	default:
> +		ret = -EINVAL;
> +		break;

return -EINVAL;

> +	}
> +
> +	ret = regmap_update_bits(st->map, AD7091R_REG_CONF,
> +				 AD7091R_REG_CONF_MODE_MASK, conf);


otherwise conf is uninitialized.

> +	if (ret)
> +		return ret;
> +
> +	st->mode = mode;
> +
> +	return ret;

return 0;

> +}
> +
> +static int ad7091r_set_channel(struct ad7091r_state *st, unsigned int channel)
> +{
> +	unsigned int foo;

Use unsigned int dummy.

> +	int ret;
> +

Otherwise it looks ok to me.  (Not a domain expert).

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
