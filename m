Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A29833EB5F
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 09:25:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B26B44EDC2;
	Wed, 17 Mar 2021 08:25:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DMJjLFnKjiRc; Wed, 17 Mar 2021 08:25:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5755F4ED75;
	Wed, 17 Mar 2021 08:25:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E25321BF85D
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 08:25:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CB95E4ED75
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 08:25:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tYjhQKmBw9lu for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 08:25:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B5D444ED69
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 08:25:27 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12H8F5Uw194508;
 Wed, 17 Mar 2021 08:25:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=pdZMzujUdwXM28Kiro9cV8IrchmYRMYL5a9SIEWpHbw=;
 b=sLVD2K/gAHk9idGSOetbGbCyWhrezihmP6dGOOEg2sDUND6TN8apTqR+lmPofzpoVemk
 +cwTEHHL7jrQUYF0NlWB38UpxfWIGDdp06y52OS+gT6/bRtWXjD4+b1KYlu+JeWzp5bM
 f17jJjLb7T6PeUxcUkOR70N5mlrgE7e5AoODM5WCCISzR0sI2QdMefh/G/M1TUEoJHNP
 HPVugdObIUHyWTb4uboce8qUpGie4ckPb8NgLp2YuE4hlPGWoatVjvX4sc0ucMvPCmh3
 LsibpDMrI96APOKYq3fkBmm8ePtmFjpGng2N3C1eJua0Vx5OByLVqn3BQV4c0gPL+d4r tw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 378nbmb67f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Mar 2021 08:25:26 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12H8AjRv057215;
 Wed, 17 Mar 2021 08:25:25 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 3796yuhp34-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Mar 2021 08:25:25 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 12H8PNxu031044;
 Wed, 17 Mar 2021 08:25:24 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 17 Mar 2021 01:25:22 -0700
Date: Wed, 17 Mar 2021 11:25:14 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Anish Udupa <udupa.anish@gmail.com>
Subject: Re: [PATCH] drivers: staging: qlge: Fixed an alignment issue.
Message-ID: <20210317082514.GY2087@kadam>
References: <CAPDGunMo-ORwDme4ckui5kxxW6-Ho1J_MjcTkxdDdKLMDrCFdg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDGunMo-ORwDme4ckui5kxxW6-Ho1J_MjcTkxdDdKLMDrCFdg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9925
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 malwarescore=0 spamscore=0
 bulkscore=0 mlxlogscore=999 mlxscore=0 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103170063
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9925
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 impostorscore=0
 malwarescore=0 adultscore=0 mlxscore=0 clxscore=1011 mlxlogscore=999
 lowpriorityscore=0 phishscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103170063
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 16, 2021 at 09:26:34PM +0530, Anish Udupa wrote:
> The * of the comment was not aligned properly. Ran checkpatch and
> found the warning. Resolved it in this patch.
> 
> Signed-off-by: Anish Udupa <udupa.anish@gmail.com>
> ---
>  drivers/staging/qlge/qlge_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
> index 5516be3af898..bfd7217f3953 100644
> --- a/drivers/staging/qlge/qlge_main.c
> +++ b/drivers/staging/qlge/qlge_main.c
> @@ -3816,7 +3816,7 @@ static int qlge_adapter_down(struct qlge_adapter *qdev)
>   qlge_tx_ring_clean(qdev);
> 
>   /* Call netif_napi_del() from common point.
> - */
> + */

This has already been fixed upstream.  You should be working against
linux-next or staging-next.

https://lore.kernel.org/driverdev-devel/20210216101945.187474-1-ducheng2@gmail.com/

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
