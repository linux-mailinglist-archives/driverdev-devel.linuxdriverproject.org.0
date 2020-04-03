Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D8F19D23F
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Apr 2020 10:31:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 42ACA870ED;
	Fri,  3 Apr 2020 08:30:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lNb8yKAaZrwi; Fri,  3 Apr 2020 08:30:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0FC8686D24;
	Fri,  3 Apr 2020 08:30:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 321C01BF34E
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 08:30:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2E54C88920
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 08:30:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lj6DOiQw7U6b for <devel@linuxdriverproject.org>;
 Fri,  3 Apr 2020 08:30:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A19B288909
 for <devel@driverdev.osuosl.org>; Fri,  3 Apr 2020 08:30:54 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0338OeTf056043;
 Fri, 3 Apr 2020 08:30:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=oNePCKvCxUpIIS0f2ZbYU7jLe+9Z1XA0+v4YImT1gPc=;
 b=Fh3XWJDcRKgJNcBua9lUzc/+L3/EUI5I3ScY7oaxgqSABO88x+BFmuxWhz5N6yTR0mSD
 DvR+e2jxZIHvG0KZpcYMfvJYsS4zSoBYMyJSJBxYRqfypzqqybSb69Jij3MC9hpdcXn6
 embcvUUulZtut1h5nqM4NDh95T6lByt/tR/BL7DDM5OIN6ZdOJQVQ7L4NVFyZmgDE6h6
 T+8RWGz9ULvEyLjORP2MFGrpn3djtT5tIwVkgtVrS/9630RgMClTClr6S4TSNpEOpBii
 8Iw7dKRRDnWZf9aLhn9iOSgqr85gkvTOhxv29pRJxAAz51r0isxSYa+wAw+y/OyH5uhk dA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 303yunj9ku-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Apr 2020 08:30:53 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0338NA8X010005;
 Fri, 3 Apr 2020 08:30:53 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 304sjs422x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Apr 2020 08:30:53 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0338Upce019918;
 Fri, 3 Apr 2020 08:30:51 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 03 Apr 2020 01:30:51 -0700
Date: Fri, 3 Apr 2020 11:30:43 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: Re: [PATCH] staging: fsl-dpaa2: ethsw: Fix parenthesis alignment
Message-ID: <20200403083043.GW2001@kadam>
References: <20200402023310.816245-1-jbwyatt4@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402023310.816245-1-jbwyatt4@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9579
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 adultscore=0 mlxscore=0
 malwarescore=0 phishscore=0 suspectscore=0 mlxlogscore=999 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004030071
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9579
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 lowpriorityscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 mlxlogscore=999 bulkscore=0
 suspectscore=0 mlxscore=0 spamscore=0 impostorscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004030071
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
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 Ioana Ciornei <ioana.ciornei@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Apr 01, 2020 at 07:33:10PM -0700, John B. Wyatt IV wrote:
> Fix 2 parenthesis alignment issues.
> 
> Reported by checkpatch.
> 
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
>  drivers/staging/fsl-dpaa2/ethsw/ethsw.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
> index 676d1ad1b50d..546ad376df99 100644
> --- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
> +++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
> @@ -1094,7 +1094,8 @@ static int swdev_port_obj_del(struct net_device *netdev,
>  
>  static int
>  ethsw_switchdev_port_attr_set_event(struct net_device *netdev,
> -		struct switchdev_notifier_port_attr_info *port_attr_info)
> +				    struct switchdev_notifier_port_attr_info
> +				    *port_attr_info)

I feel like the end result is worse than the original code because of
how the type and the parameter name are on different lines.  Sorry.  :/

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
