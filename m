Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8646C144D20
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jan 2020 09:19:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 25DE081E6F;
	Wed, 22 Jan 2020 08:19:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dgUsxuQ4Hgyo; Wed, 22 Jan 2020 08:19:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08FEC81B7F;
	Wed, 22 Jan 2020 08:19:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8FF241BF2FB
 for <devel@linuxdriverproject.org>; Wed, 22 Jan 2020 08:19:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8CA6E85660
 for <devel@linuxdriverproject.org>; Wed, 22 Jan 2020 08:19:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 60LSyj-GUj_z for <devel@linuxdriverproject.org>;
 Wed, 22 Jan 2020 08:19:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 930B585572
 for <devel@driverdev.osuosl.org>; Wed, 22 Jan 2020 08:19:35 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00M8IhCN041195;
 Wed, 22 Jan 2020 08:19:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=uWz8eBHkgeZjITXN+B+A8IBMNj27yjCWOIaSt0VAyxA=;
 b=m5SR2jNBsD7bKa33po2xbgW/FAuQ9XGEBLxEAzCnzmTY0DMFtab76AjgBAH6mkz2FGLq
 2ePvW3XnakSiOxVVsVqJ6wgQYjrjDIU5wMXORM8I5hGT6Ise3MjSwNiQpT2kvhWfGKg1
 Oeud6+cku57pkGh5VJu9tidaUApLO7FlxFPm9Srz2WuyguCsfEIvCl9wdEjDS5La2h6B
 vONIWK+F54NhbRm2/spqIu+WW6tqGFOhUz0KJ+Di2Gg8DyOajTD8vxaLHWz4Zcxd+0e2
 MOn5JAEF+aUb6jFmnpeQpISvcAFHev6DfflEcOn35tPmNodhlt0/hRgbV0n6ZDihf3bV pg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2xkseuj7wk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 Jan 2020 08:19:34 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00M8J7pF188324;
 Wed, 22 Jan 2020 08:19:33 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2xnpfqqvr0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 Jan 2020 08:19:33 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 00M8I16Q024075;
 Wed, 22 Jan 2020 08:18:01 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 22 Jan 2020 00:18:00 -0800
Date: Wed, 22 Jan 2020 11:17:53 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sandesh Kenjana Ashok <sandeshkenjanaashok@gmail.com>
Subject: Re: [PATCH] staging: mt7621-pinctrl: Align code by cleanup long lines
Message-ID: <20200122081753.GE1847@kadam>
References: <20200121195218.GA10666@SandeshPC>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121195218.GA10666@SandeshPC>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9507
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001220075
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9507
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001220075
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
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jan 21, 2020 at 08:52:18PM +0100, Sandesh Kenjana Ashok wrote:
> Cleanup lines over 80 characters in pinctrl-rt2880.c.
> Issue found by checkpatch.pl
> 
> Signed-off-by: Sandesh Kenjana Ashok <sandeshkenjanaashok@gmail.com>
> ---
>  drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
> index d0f06790d38f..254d4eb88f5f 100644
> --- a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
> +++ b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
> @@ -159,8 +159,8 @@ static int rt2880_pmx_group_enable(struct pinctrl_dev *pctrldev,
>  }
>  
>  static int rt2880_pmx_group_gpio_request_enable(struct pinctrl_dev *pctrldev,
> -						struct pinctrl_gpio_range *range,
> -						unsigned int pin)
> +					struct pinctrl_gpio_range *range,
> +					unsigned int pin)
>  {
>  	struct rt2880_priv *p = pinctrl_dev_get_drvdata(pctrldev);

Now it has a new warning.

CHECK: Alignment should match open parenthesis
#162: FILE: drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c:162:
+static int rt2880_pmx_group_gpio_request_enable(struct pinctrl_dev *pctrldev,
+                                       struct pinctrl_gpio_range *range,

Just leave it.  The original is fine.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
