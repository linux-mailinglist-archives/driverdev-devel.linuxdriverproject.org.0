Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A1319D249
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Apr 2020 10:32:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2E6A48712A;
	Fri,  3 Apr 2020 08:32:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KYEBGNwXwDi4; Fri,  3 Apr 2020 08:32:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 20CE286D04;
	Fri,  3 Apr 2020 08:32:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 20A6B1BF34E
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 08:32:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 14AB888942
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 08:32:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lR6vH3A0RUbf for <devel@linuxdriverproject.org>;
 Fri,  3 Apr 2020 08:32:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7BA5888920
 for <devel@driverdev.osuosl.org>; Fri,  3 Apr 2020 08:32:37 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0338OFmP055609;
 Fri, 3 Apr 2020 08:32:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=ss086libaRnicgxivCFTmSK24emVikB4VIk29pxOOEY=;
 b=vZd1D3Y7F64qs8Q8Cy649TJgKeHskxw5L8yLqRWz7J6FaoQOUJ9ODdwVZ2wK6Y24L2Aj
 OsLkQIcY+rYGXDB27HMp0FCNqP9zb+OUfqMk3lvoP+03eywzxU0+7qDzWYYJQhF2iwWs
 eBbuBJuiG/P7z6wUwX0ftzg+L4YKOSgGaw4Cq7ox8FAEo0zi1edAAqyNN4HNN3ww1UMS
 ceSRdPmgcn4pMcuOv8uFTAR02+SJ+xk/IAtmzhVHVmisEeL0wtd0E6W+cNO/cnvp57zl
 9IJMlVvVJOc382Vrqiqa7cCf8HgvQIK5mZQERaCjaBP6y6g5CicrLgXkAecISe8jdknu tw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 303yunj9wt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Apr 2020 08:32:35 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0338WNeM052226;
 Fri, 3 Apr 2020 08:32:35 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 302g4x20dw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Apr 2020 08:32:35 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0338WXuW020986;
 Fri, 3 Apr 2020 08:32:33 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 03 Apr 2020 01:32:33 -0700
Date: Fri, 3 Apr 2020 11:32:25 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: Re: [PATCH 1/2] staging: gasket: Fix 4 over 80 char warnings
Message-ID: <20200403083225.GX2001@kadam>
References: <20200402053617.826678-1-jbwyatt4@gmail.com>
 <20200402053617.826678-2-jbwyatt4@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402053617.826678-2-jbwyatt4@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9579
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0 suspectscore=0
 mlxscore=0 spamscore=0 malwarescore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004030072
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9579
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 lowpriorityscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 mlxlogscore=999 bulkscore=0
 suspectscore=0 mlxscore=0 spamscore=0 impostorscore=0 clxscore=1015
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
 Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Apr 01, 2020 at 10:36:16PM -0700, John B. Wyatt IV wrote:
> Fix 4 over 80 char warnings by caching long enum values into local
> variables.
> 
> All enums are only used once inside each function (and once inside
> the entire file).
> 
> Reported by checkpatch.
> 
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
>  drivers/staging/gasket/apex_driver.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
> index 46199c8ca441..f48209ec7d24 100644
> --- a/drivers/staging/gasket/apex_driver.c
> +++ b/drivers/staging/gasket/apex_driver.c
> @@ -253,6 +253,8 @@ static int apex_get_status(struct gasket_dev *gasket_dev)
>  /* Enter GCB reset state. */
>  static int apex_enter_reset(struct gasket_dev *gasket_dev)
>  {
> +	int idle_gen_reg = APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER;
> +

Sorry, but I also hate these where we have a one time use temporary
variable to get around the 80 character rule.  Generally, avoid pointless
indirection.  The original code is better.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
