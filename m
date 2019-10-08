Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D35BCF26F
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 08:07:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C470E22270;
	Tue,  8 Oct 2019 06:07:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fay5mXYP-EL1; Tue,  8 Oct 2019 06:07:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 77A4322201;
	Tue,  8 Oct 2019 06:07:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DDD8D1BF289
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 06:07:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DA7CF87E58
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 06:07:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B5NcvPwyIWoK for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 06:07:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6568F87E4C
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 06:07:07 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x98655at054961;
 Tue, 8 Oct 2019 06:07:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=Ps4m7+iwy0Cq1NylW91zJRtqMaHi73Broexx2ci+AkA=;
 b=sRL+AVjv8mEyXCvSH2GvU/H3AtyPqm2fGYkVHpfgxQBGpWilqUjMXU7yAcdHKpDP7T6W
 8Hpk4cJ/E3VBoOwxKNjGgbJpjmwynkTcommVwJj2ewUHGZqrtDzJ1BwlHjxFbWqQ4X+T
 vMuCL8Lntc7rlEUX+3KFnDiIWLBfdo5M+nhx3IEN+umPd5ihmyi555EFWLZlzplMYudC
 yV1JwHhW7LDbTdthcyY0pkBIb70xX040J6p0fWLhRkxVKehHbxKsYBwcemhjNffe71US
 QPynWJNQo/1KF7ss6tFdYthlyLYeRA+m1J9FgjNz3uMeRRYDod6PgoPXM30LJeRJRXht 0w== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2vejkub5kt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Oct 2019 06:07:05 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9862gSM165845;
 Tue, 8 Oct 2019 06:05:04 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2vgefa0kkh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Oct 2019 06:05:04 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9864wjN016374;
 Tue, 8 Oct 2019 06:04:59 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 07 Oct 2019 23:04:58 -0700
Date: Tue, 8 Oct 2019 09:04:49 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: zhengbin <zhengbin13@huawei.com>
Subject: Re: [PATCH 1/6] staging: bcm2835-audio: Remove set but not used
 variable 'status'
Message-ID: <20191008060449.GA12948@kadam>
References: <1570513142-60177-1-git-send-email-zhengbin13@huawei.com>
 <1570513142-60177-2-git-send-email-zhengbin13@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570513142-60177-2-git-send-email-zhengbin13@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9403
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910080062
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9403
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910080062
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
Cc: devel@driverdev.osuosl.org, eric@anholt.net, gregkh@linuxfoundation.org,
 abbotti@mev.co.uk, wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 08, 2019 at 01:38:57PM +0800, zhengbin wrote:
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> index c6f9cf1..8a94c5b 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> @@ -96,13 +96,12 @@ static void audio_vchi_callback(void *param,
>  	struct bcm2835_audio_instance *instance = param;
>  	struct vc_audio_msg m;
>  	int msg_len;
> -	int status;
> 
>  	if (reason != VCHI_CALLBACK_MSG_AVAILABLE)
>  		return;
> 
> -	status = vchi_msg_dequeue(instance->vchi_handle,
> -				  &m, sizeof(m), &msg_len, VCHI_FLAGS_NONE);
> +	vchi_msg_dequeue(instance->vchi_handle,
> +			 &m, sizeof(m), &msg_len, VCHI_FLAGS_NONE);

This looks like a bug in the code.  flags is VCHI_FLAGS_NONE so it can
return -1 and we should check for that.

>  	if (m.type == VC_AUDIO_MSG_TYPE_RESULT) {

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
