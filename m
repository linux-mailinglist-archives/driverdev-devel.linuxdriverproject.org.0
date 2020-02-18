Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8539D162EB9
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Feb 2020 19:38:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 11607863B7;
	Tue, 18 Feb 2020 18:37:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hmPycKQ+Xtym; Tue, 18 Feb 2020 18:37:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7904A8550D;
	Tue, 18 Feb 2020 18:37:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C57E1BF95A
 for <devel@linuxdriverproject.org>; Tue, 18 Feb 2020 18:37:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 850EF853E6
 for <devel@linuxdriverproject.org>; Tue, 18 Feb 2020 18:37:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Av7s3VFWnnoK for <devel@linuxdriverproject.org>;
 Tue, 18 Feb 2020 18:37:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3B70C827A7
 for <devel@driverdev.osuosl.org>; Tue, 18 Feb 2020 18:37:50 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01IIVMpo074678;
 Tue, 18 Feb 2020 18:37:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=eFbcc45Mbdh5jxFkPEJi8kCAOXjvazSsPwd+3NYtQ1Y=;
 b=jCqXSwrCTB4nabx3i4cRhnQREQ+JU/AdiR7vKYnTu5vJGbsHWvXjxzi3s7YAgJ/hKpzV
 vJs7aVndckq4o+I/otOl6VBTr/IE/ClCRrac82FruFk5QKsjnmlKL7X0D5/fUZ5QkvNn
 qkqc6zjYFIUTOT/PgW8c7j6H8zHvOFhQxT5CfJlHsUbdDTb6jKHzi3ftfIfsl887Rqot
 8uChI18vv5GCPgHx+1LwJKvv0l908hHmkQkrwZvknLTb1peSmIuvTdhAXNyiGLHjZ3is
 f70PorX06D7o72hf7FGSgbJs3mz7r6dC9w/rs2ZHHo/EPt4hdzJiWX50P8RhTtbGCUBA LQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2y8e1hkj83-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 Feb 2020 18:37:48 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01IIbjUA070760;
 Tue, 18 Feb 2020 18:37:47 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2y6t4jsr3y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 Feb 2020 18:37:46 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 01IIbMoj008699;
 Tue, 18 Feb 2020 18:37:22 GMT
Received: from kadam (/10.175.183.98) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 18 Feb 2020 10:37:21 -0800
Date: Tue, 18 Feb 2020 21:37:11 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: Re: [PATCH] staging: bcm2835-camera: call function instead of macro
Message-ID: <20200218183711.GE19641@kadam>
References: <20200218160727.GA17010@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218160727.GA17010@kaaira-HP-Pavilion-Notebook>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9535
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0
 mlxlogscore=999 phishscore=0 mlxscore=0 malwarescore=0 suspectscore=9
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002180127
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9535
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=9
 phishscore=0
 mlxlogscore=999 mlxscore=0 malwarescore=0 clxscore=1011 adultscore=0
 lowpriorityscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002180126
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
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 18, 2020 at 09:37:28PM +0530, Kaaira Gupta wrote:
> Fix checkpatch.pl warning of 'macro argument reuse' in bcm2835-camera.h
> by removing the macro and calling the function, written in macro in
> bcm2835-camera.h, directly in bcm2835-camera.c
> 
> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
>  .../bcm2835-camera/bcm2835-camera.c           | 28 +++++++++++++++----
>  .../bcm2835-camera/bcm2835-camera.h           | 10 -------
>  2 files changed, 22 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> index 1ef31a984741..19b3ba80d0e7 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> @@ -919,9 +919,17 @@ static int vidioc_g_fmt_vid_cap(struct file *file, void *priv,
>  	else
>  		f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
>  	f->fmt.pix.priv = 0;
> -
> -	v4l2_dump_pix_format(1, bcm2835_v4l2_debug, &dev->v4l2_dev, &f->fmt.pix,
> -			     __func__);
> +	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
> +		 "%s: w %u h %u field %u pfmt 0x%x bpl %u sz_img %u colorspace 0x%x priv %u\n",
> +		  __func__,
> +		 (&f->fmt.pix)->width,
> +		 (&f->fmt.pix)->height,
> +		 (&f->fmt.pix)->field,
> +		 (&f->fmt.pix)->pixelformat,
> +		 (&f->fmt.pix)->bytesperline,
> +		 (&f->fmt.pix)->sizeimage,
> +		 (&f->fmt.pix)->colorspace,
> +		 (&f->fmt.pix)->priv);

This is not as nice to look at as the original.  Just ignore the
warning.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
