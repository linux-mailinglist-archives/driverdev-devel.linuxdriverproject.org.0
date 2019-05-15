Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F041ED6E
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 13:10:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C02AD2322B;
	Wed, 15 May 2019 11:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z5-FcYXYX1Ie; Wed, 15 May 2019 11:10:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E198F22D10;
	Wed, 15 May 2019 11:10:07 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E8211BF82B
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:10:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2B9CB85FE4
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rM1I2bUF9cPF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:10:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 71BCC84F2B
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:10:05 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4FB4Cks172208;
 Wed, 15 May 2019 11:09:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=MLckYnMFkVvaYFeXoKWumSNKTJ6tG7kGFws6c4Cui7U=;
 b=FlGfF1gbr/ap6/XA58vRm1djnmDbEomD1oYSlKCU9GijusM/+nze/a9oCxa99CHQyY/R
 yRIvsRCszIsYy3IBkl8KaIJqTF1cymr1+q5lHMAzHTlL5rhLW6//dwEI2gHaSdNn6nAU
 qKDMHgz7GE9FIaxgiUuIG/RwyEkScsF6zDpsFB6fX71vSMNiMQksupLx8SZi4AjWfOCf
 6I3V3Ay16c75l/6n/JwONCpgi7dD+R9O5AqqN3o2QXtGjb68HLK0StQn4jMxhli/1Y6g
 qhzC2CSlHQXxFVR0iGy8wHmwHpvBV0OffjWAjp2cPVNwthHwYCS7MWeU5mOavoDFVHzR AA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2sdnttv1m8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 15 May 2019 11:09:56 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4FB9gVN113026;
 Wed, 15 May 2019 11:09:56 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2sggdsh1vv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 15 May 2019 11:09:56 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4FB9spK023184;
 Wed, 15 May 2019 11:09:55 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 15 May 2019 11:09:54 +0000
Date: Wed, 15 May 2019 14:09:49 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jeremy Sowden <jeremy@azazel.net>
Subject: Re: [PATCH 3/5] staging: kpc2000: added designated initializers to
 two structs.
Message-ID: <20190515110949.GE31203@kadam>
References: <20190515103454.18456-1-jeremy@azazel.net>
 <20190515103454.18456-4-jeremy@azazel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515103454.18456-4-jeremy@azazel.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9257
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905150072
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9257
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905150072
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
Cc: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 15, 2019 at 11:34:52AM +0100, Jeremy Sowden wrote:
> Fixed the following two sparse warnings by using designated
> initializers:
> 
>   drivers/staging/kpc2000/kpc2000/cell_probe.c:101:34: warning: Using plain integer as NULL pointer
>   drivers/staging/kpc2000/kpc2000/cell_probe.c:364:34: warning: Using plain integer as NULL pointer
> 
> Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
> ---
>  drivers/staging/kpc2000/kpc2000/cell_probe.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
> index 30e6f176ddfa..9cb745f4323a 100644
> --- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
> +++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
> @@ -94,7 +94,7 @@ void parse_core_table_entry(struct core_table_entry *cte, const u64 read_val, co
>  static int probe_core_basic(unsigned int core_num, struct kp2000_device *pcard,
>  			    char *name, const struct core_table_entry cte)
>  {
> -    struct mfd_cell  cell = {0};
> +    struct mfd_cell  cell = { .id = core_num, .name = name };
>      struct resource  resources[2];
>  
>      struct kpc_core_device_platdata  core_pdata = {
> @@ -315,7 +315,7 @@ static int probe_core_uio(unsigned int core_num, struct kp2000_device *pcard,
>  
>  static int  create_dma_engine_core(struct kp2000_device *pcard, size_t engine_regs_offset, int engine_num, int irq_num)
>  {
> -    struct mfd_cell  cell = {0};
> +    struct mfd_cell  cell = { .id = engine_num };
>      struct resource  resources[2];
>  

These changes make no sense because we just write over it later.

Maybe you're going to fix it up later in the patch series, perhaps but
that's not how it's done.  Each patch should do "one thing", not "half
and thing and then half a thing later in the series possibly (I am
reviewing the patches in order so I don't know)".

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
