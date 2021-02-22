Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A87CF3210C0
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Feb 2021 07:16:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B3D36F526;
	Mon, 22 Feb 2021 06:16:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XFOUDWMShf5I; Mon, 22 Feb 2021 06:16:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97B0D6F478;
	Mon, 22 Feb 2021 06:16:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4A5801BF360
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 06:16:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 461506F478
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 06:16:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GMXE2XM1DreO for <devel@linuxdriverproject.org>;
 Mon, 22 Feb 2021 06:16:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 715466074E
 for <devel@driverdev.osuosl.org>; Mon, 22 Feb 2021 06:16:23 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11M68uO5049303;
 Mon, 22 Feb 2021 06:16:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=vSX/DZCL9K0FwrrmnQEn8Cygh8IZE8Dww0cgcojZH8M=;
 b=GCde95boaXzrVgM0kR7wp2CLdpzDJg98Q5w1MNmsUFUzOV7br5jmSwn8oGa6XDPljm4F
 8Qpa3hpwJ0c7Rc68Lz+j68i/qe8lf6G79LVBVfnLYZ5BRuzqy8IVmWa0XCpTj7slsjru
 nNdarUClyQhfrHFlhF7ZcitKHVtqrBCDXILQJ9XSop+n3nI/+s56WGR+9redFHZiV1gR
 R2mFCzkEIlvGIJAd+Jt4M4d107NRyf+18Evw+VaCjyQRIke11SgKhwNbaggys7rxznf8
 q/3ayx/FtF1/sQQD+J058BHNCbamerbmdGVx77inO7pBsZ4Vo2HaOvdkui5gOUHGO0xu KQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2130.oracle.com with ESMTP id 36tqxbajsn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Feb 2021 06:16:18 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11M6ATO8005822;
 Mon, 22 Feb 2021 06:16:16 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 36ucawmc8w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Feb 2021 06:16:15 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11M6G82C013789;
 Mon, 22 Feb 2021 06:16:09 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sun, 21 Feb 2021 22:16:07 -0800
Date: Mon, 22 Feb 2021 09:15:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Amrit Khera <amritkhera98@gmail.com>
Subject: Re: [PATCH v2] staging: wimax: Fix block comment style issue in
 stack.c
Message-ID: <20210222061559.GK2087@kadam>
References: <20210221163758.2996-1-amritkhera98@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210221163758.2996-1-amritkhera98@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9902
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0
 malwarescore=0 mlxlogscore=999 adultscore=0 bulkscore=0 mlxscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102220056
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9902
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0
 phishscore=0
 mlxlogscore=999 malwarescore=0 clxscore=1011 suspectscore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 priorityscore=1501 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102220056
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
Cc: devel@driverdev.osuosl.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, mail@anirudhrb.com, memxor@gmail.com,
 kuba@kernel.org, johannes@sipsolutions.net, lee.jones@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 21, 2021 at 10:07:59PM +0530, Amrit Khera wrote:
> diff --git a/drivers/staging/wimax/stack.c b/drivers/staging/wimax/stack.c
> index ace24a6dfd2d..345a022810ef 100644
> --- a/drivers/staging/wimax/stack.c
> +++ b/drivers/staging/wimax/stack.c
> @@ -57,17 +57,7 @@ MODULE_PARM_DESC(debug,
>  
>  /*
>   * Authoritative source for the RE_STATE_CHANGE attribute policy

Delete the whole comment.  This sentence doesn't make any sense by
itself once we have removed the rest.

> - *
> - * We don't really use it here, but /me likes to keep the definition
> - * close to where the data is generated.
>   */
> -/*
> -static const struct nla_policy wimax_gnl_re_status_change[WIMAX_GNL_ATTR_MAX + 1] = {
> -	[WIMAX_GNL_STCH_STATE_OLD] = { .type = NLA_U8 },
> -	[WIMAX_GNL_STCH_STATE_NEW] = { .type = NLA_U8 },
> -};

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
