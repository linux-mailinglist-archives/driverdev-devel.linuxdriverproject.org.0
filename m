Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA9120032A
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jun 2020 10:03:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A31F288E0F;
	Fri, 19 Jun 2020 08:03:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wu90J2lLVsx9; Fri, 19 Jun 2020 08:03:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F6C488C9F;
	Fri, 19 Jun 2020 08:03:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 59AB01BF23F
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 08:03:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5266088DDE
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 08:03:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v37v47AvS6X4 for <devel@linuxdriverproject.org>;
 Fri, 19 Jun 2020 08:03:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5645988C9F
 for <devel@driverdev.osuosl.org>; Fri, 19 Jun 2020 08:03:31 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05J7vJqF059174;
 Fri, 19 Jun 2020 08:03:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=xEU8+BG5WDf89HFXRTc9CWHMnYULgKeN/ikjmBRtzSY=;
 b=nxBqBRmNRCkbQMiPtVhnFJqMGJOOS9o58am1We3Qj1xEXVK2rMOqSROlatxqlNjwi9BC
 wx/fw1wsQGAGI9KJNFpvogZJz/6nUdT0dUznRDbeffRkPf/1dBofXnfAH18/p0cufh7H
 WBYro/M2f+XJkURm0lRNbxXAgzz5f6YO+//OrPBxHgvMeKCY7jPbTIJEjFTkW0ar+08V
 l5KtzpJh2v6vTe4wxVYL6ZzTc5/yU7Cp++MzMzZX9KxASGolRsK6S8CvS5eG7efDJhrO
 Cy8hPDurWJK3OC2DTC4z84kNj9B6uozPkoZJ2Bca/a4gRbVSYAlmzQDf9NmW4or06Ed5 7w== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 31qecm3wfx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 19 Jun 2020 08:03:30 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05J7xFPq106416;
 Fri, 19 Jun 2020 08:01:29 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 31q66r3hdt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Jun 2020 08:01:29 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05J81S6w026868;
 Fri, 19 Jun 2020 08:01:28 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 19 Jun 2020 01:01:27 -0700
Date: Fri, 19 Jun 2020 11:01:22 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Garrit Franke <garritfranke@gmail.com>
Subject: Re: [PATCH] staging: vc04_services: vchiq_arm: replace bitshift with
 BIT macro
Message-ID: <20200619080121.GV4151@kadam>
References: <20200618160258.77915-1-garritfranke@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618160258.77915-1-garritfranke@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9656
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 adultscore=0 phishscore=0
 mlxscore=0 bulkscore=0 malwarescore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006190057
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9656
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 cotscore=-2147483648 malwarescore=0
 clxscore=1015 adultscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0
 mlxlogscore=999 priorityscore=1501 bulkscore=0 phishscore=0 mlxscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006190057
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
 nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 18, 2020 at 06:02:59PM +0200, Garrit Franke wrote:
> This should prevent possible overflowing bits by using the BIT macro in
> vchiq_core

There is no reason to think that these will overflow.  For that to
happen we would need to be using a 64bit with a 1 << 31 shift.

			if (flags & BIT(i)) {
                            ^^^^^
Is "flags" a 64 bit and can "i" go up to 31?  Just say that it's a clean
up.

> 
> Signed-off-by: Garrit Franke <garritfranke@gmail.com>
> ---
>  .../interface/vchiq_arm/vchiq_core.c          | 22 +++++++++----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> index ae9183db44ee..5a6d2bd59ec0 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> @@ -39,9 +39,9 @@ struct vchiq_openack_payload {
>  };
>  
>  enum {
> -	QMFLAGS_IS_BLOCKING     = (1 << 0),
> -	QMFLAGS_NO_MUTEX_LOCK   = (1 << 1),
> -	QMFLAGS_NO_MUTEX_UNLOCK = (1 << 2)
> +	QMFLAGS_IS_BLOCKING     = BIT(0),
> +	QMFLAGS_NO_MUTEX_LOCK   = BIT(1),
> +	QMFLAGS_NO_MUTEX_UNLOCK = BIT(2)
>  };
>  
>  /* we require this for consistency between endpoints */
> @@ -526,14 +526,14 @@ request_poll(struct vchiq_state *state, struct vchiq_service *service,
>  		do {
>  			value = atomic_read(&service->poll_flags);
>  		} while (atomic_cmpxchg(&service->poll_flags, value,
> -			value | (1 << poll_type)) != value);
> +			value | BIT(poll_type)) != value);
>  
>  		do {
>  			value = atomic_read(&state->poll_services[
>  				service->localport>>5]);
>  		} while (atomic_cmpxchg(
>  			&state->poll_services[service->localport>>5],
> -			value, value | (1 << (service->localport & 0x1f)))
> +			value, value | BIT((service->localport & 0x1f)))
                                           ^                         ^
Too many parentheses.

Otherwise it looks fine.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
