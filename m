Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CC11043AC
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Nov 2019 19:51:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D122089566;
	Wed, 20 Nov 2019 18:51:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dpek-LrNyNGB; Wed, 20 Nov 2019 18:51:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 28A1A8955B;
	Wed, 20 Nov 2019 18:51:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5427D1BF3A8
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 18:51:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4AF33884E0
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 18:51:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pkQJX0uTLsBx for <devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 18:51:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7FE92884FF
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 18:51:13 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAKIn4No011715;
 Wed, 20 Nov 2019 18:51:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=yDB8B98fuOgOqpF833AXkXbwwM7XtZGmTS4XraI7Ldw=;
 b=Kzt17tIfec0WJ64VYsRBtsIYJgKMvKTFjU1cVidSxnJ4XvqxzORpv8jh6VrDuh2MCWSV
 4T92Lljy1LVC9tr8NoggiuNdnoagOKP/NSkqS9o52ReSSdXXVE+eKFip1l42gFeXsSEC
 hzclteY61kAbezsZrQafB6Oc/hp+2Ql6dbfNS3RJLOASO+9wcxDcxiNF5FeUEe9n+NDA
 IFtm7wxhSqPV+TNQdP1bUiqsGVtMHSfN7beXPiIChG+vCeZcARiASiy1Ktncs1ga5uSY
 wSXWPxGy4pi1M5uLdtvm0TyNe0vVY2Si5quoelqQrRti7X+3aIJF6DfD4EG913EXtZAy RA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2wa92pyg98-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 20 Nov 2019 18:51:10 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAKImZ2f186682;
 Wed, 20 Nov 2019 18:51:09 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2wd46wwgfk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 20 Nov 2019 18:51:09 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xAKIp5Qk003372;
 Wed, 20 Nov 2019 18:51:07 GMT
Received: from kadam (/41.210.141.247) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 20 Nov 2019 10:51:04 -0800
Date: Wed, 20 Nov 2019 21:50:47 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Subject: Re: [PATCH 3/3] staging: vchiq: Have vchiq_dump_* functions return
 an error code
Message-ID: <20191120185047.GE5604@kadam>
References: <cover.1574253964.git.marcgonzalez@google.com>
 <b4b5b1c7ec61a25fb3ca3c90687dc80db8a21e90.1574253964.git.marcgonzalez@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b4b5b1c7ec61a25fb3ca3c90687dc80db8a21e90.1574253964.git.marcgonzalez@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9447
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=938
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911200155
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9447
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911200155
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
 linux-rpi-kernel@lists.infradead.org, wahrenst@gmx.net, eric@anholt.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Thanks for the patch.  Looks good.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

On Wed, Nov 20, 2019 at 10:36:48AM -0500, Marcelo Diop-Gonzalez wrote:
>  	copy_bytes = min_t(int, len, context->space - context->actual);
>  	if (copy_bytes == 0)
> -		return;
> +		return 0;
>  	if (copy_to_user(context->buf + context->actual, str,
>  			 copy_bytes))
> -		context->actual = -EFAULT;
                ^^^^^^^^^^^^^^^^^^^^^^^^^

> +		return -EFAULT;
>  	context->actual += copy_bytes;
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In the original code we saved the error code to context->actual, then
we added some bytes

>  	len -= copy_bytes;
>  
> @@ -2109,8 +2108,9 @@ vchiq_dump(void *dump_context, const char *str, int len)
>  
>  		if (copy_to_user(context->buf + context->actual - 1,
                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
and then we tried to use the result to corrupt the user space program.
So this patch is a nice bug fix.

>  				 &cr, 1))
> -			context->actual = -EFAULT;
> +			return -EFAULT;
>  	}
> +	return 0;
>  }

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
