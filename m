Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F650AF826
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 10:41:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A9C686501;
	Wed, 11 Sep 2019 08:41:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uQTHfve97Zq2; Wed, 11 Sep 2019 08:41:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2644F865D0;
	Wed, 11 Sep 2019 08:41:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CD80C1BF5A3
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 08:41:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C759385792
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 08:41:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xG7G4HHFjWaE for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 08:41:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C178F8578C
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 08:41:29 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8B8dTsY028594;
 Wed, 11 Sep 2019 08:41:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=xGO9SBAbulRLI7ZbRakTvABa/JaF87+OoWtKT13pbQg=;
 b=DUgrt1P17LA7+GB2zwXXKjr6o0liEZ+Z/cOoOr26XPv+RfaSurzXWIfMV/+sZMjbeUl8
 MPFXEC5QTLfyFlPJdbOvHoTPf+qgb9SIemU65U8dxhJnMEw9ft4JIZFYH+rY7bzApVXf
 PxUb6QxiZJH+hhMkqX/MCUU9tUMq5zotLkE/6sndqLpi2tpuk0jEl92eSfL2uvqk+eqr
 WyDqkEYvVRRB1hBLmpoqIYipvAr2Pr73SQdVzKmGhk99yERyOQ9wSfMKdBbhunJsM4em
 ajdDyfhdcmcykuIikw0fB/otFpmEglzb+k8gO+Q/7xkBpaWqlRHU7FV7Exsb0eM1e2mZ vQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2uw1jy8d54-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 Sep 2019 08:41:28 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8B8c85I192973;
 Wed, 11 Sep 2019 08:41:28 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2uxk0t0864-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 Sep 2019 08:41:27 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x8B8fJYx019409;
 Wed, 11 Sep 2019 08:41:21 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 11 Sep 2019 01:41:19 -0700
Date: Wed, 11 Sep 2019 11:41:11 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sandro Volery <sandro@volery.com>
Subject: Re: [PATCH] Staging: exfat: Avoid use of strcpy
Message-ID: <20190911084111.GG15977@kadam>
References: <20190911055749.GA10786@volery>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911055749.GA10786@volery>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9376
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909110082
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9376
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909110082
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 valdis.kletnieks@vt.edu, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 11, 2019 at 07:57:49AM +0200, Sandro Volery wrote:
> Replaced strcpy with strscpy in exfat_core.c.
> 
> Signed-off-by: Sandro Volery <sandro@volery.com>
> ---
>  drivers/staging/exfat/exfat_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
> index da8c58149c35..c71b145e8a24 100644
> --- a/drivers/staging/exfat/exfat_core.c
> +++ b/drivers/staging/exfat/exfat_core.c
> @@ -2964,7 +2964,7 @@ s32 resolve_path(struct inode *inode, char *path, struct chain_t *p_dir,
>  	if (strlen(path) >= (MAX_NAME_LENGTH * MAX_CHARSET_SIZE))
>  		return FFS_INVALIDPATH;
>  
> -	strcpy(name_buf, path);
> +	strscpy(name_buf, path, sizeof(name_buf));

It checked strlen() earlier so we know that it can't overflow but, oh
wow, the "name_buf" is a shared buffer.  wow wow wow.  This seems very
racy.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
