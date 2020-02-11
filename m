Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4493A1591CD
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 15:24:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3FF13844A5;
	Tue, 11 Feb 2020 14:24:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hxDb7P1u08Cl; Tue, 11 Feb 2020 14:24:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C117884030;
	Tue, 11 Feb 2020 14:24:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2399B1BF3E6
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 14:24:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1F9BC85D22
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 14:24:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9kzmZxw9dCUv for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 14:24:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8CE6E81B40
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 14:24:47 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01BE8TeY039237;
 Tue, 11 Feb 2020 14:24:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=PpYYwjfoBRikygNpgflbPjeJfJ8t4TVGHGA07sm2hFQ=;
 b=SlWK4bpqL19iHWpiuiq87GCSLAHcSqOGrGwcA5O+frS+zQLvF/B/4Ij2N6vju1Zm1Epg
 gNySD+4SWyjAttwyeafLhsYDh54N43PICK2dGTdM9YakvYNsDoLrOAk8eqccAH9JtncN
 b+d8UI+tY/Tea90BZyjQkwi4TuyXp9IMQpUfCs6+MCn4V97YRxir69ovdUgVMlK6JVSQ
 5P1Wbt2G1197BSRrPQm5QItMNb2qahzD/k29NNm+kK2M/T8wMtQ6A8sJqT9oVqadwyiA
 OuJY7iqP9W30pfuq/WHS7cCCQE20K2qTXdWwb/XWn7xcKBApix13OY+43na3VL0nr9/2 Mg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2y2jx63ugf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 11 Feb 2020 14:24:44 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01BE8Sxt108489;
 Tue, 11 Feb 2020 14:24:44 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2y26sr7vp7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Feb 2020 14:24:44 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 01BEOgAu010402;
 Tue, 11 Feb 2020 14:24:42 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 11 Feb 2020 06:24:41 -0800
Date: Tue, 11 Feb 2020 17:24:33 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] staging: vc04_services: remove set but unused
 variable 'local_entity_uc'
Message-ID: <20200211142433.GG1778@kadam>
References: <20200211134356.59904-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211134356.59904-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9527
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 mlxscore=0
 malwarescore=0 bulkscore=0 spamscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002110107
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9527
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 malwarescore=0
 priorityscore=1501 adultscore=0 phishscore=0 impostorscore=0 spamscore=0
 bulkscore=0 lowpriorityscore=0 mlxscore=0 suspectscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002110107
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
Cc: devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, marcgonzalez@google.com,
 linux-kernel@vger.kernel.org, nachukannan@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 nishkadg.linux@gmail.com, jamal.k.shareef@gmail.com,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 11, 2020 at 09:43:56PM +0800, YueHaibing wrote:
> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c: In function vchiq_use_internal:
> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2346:16:
>  warning: variable local_entity_uc set but not used [-Wunused-but-set-variable]
> 
> commit bd8aa2850f00 ("staging: vc04_services: Get of even more suspend/resume states")
> left behind this unused variable.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index c456ced..d30d24d 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -2343,7 +2343,7 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
>  	enum vchiq_status ret = VCHIQ_SUCCESS;
>  	char entity[16];
>  	int *entity_uc;
> -	int local_uc, local_entity_uc;
> +	int local_uc;
>  
>  	if (!arm_state)
>  		goto out;
> @@ -2367,7 +2367,6 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
>  
>  	write_lock_bh(&arm_state->susp_res_lock);
>  	local_uc = ++arm_state->videocore_use_count;
> -	local_entity_uc = ++(*entity_uc);
                          ^^
This ++ is required.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
