Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2271A325C
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Apr 2020 12:16:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0C90386B5E;
	Thu,  9 Apr 2020 10:16:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GBKy9-bmLPl8; Thu,  9 Apr 2020 10:16:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E951686AC8;
	Thu,  9 Apr 2020 10:16:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D611E1BF2CC
 for <devel@linuxdriverproject.org>; Thu,  9 Apr 2020 10:16:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D29E286AC8
 for <devel@linuxdriverproject.org>; Thu,  9 Apr 2020 10:16:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gpi_Miy-Uyze for <devel@linuxdriverproject.org>;
 Thu,  9 Apr 2020 10:16:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D7D0A8699B
 for <devel@driverdev.osuosl.org>; Thu,  9 Apr 2020 10:16:31 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 039ADtZl069500;
 Thu, 9 Apr 2020 10:16:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=39Ni081FXBK7Yqe2dP5DkBkYVP3K7UrlF3aJOoZyVRU=;
 b=mjDUXopOwz5JjapBHkk4egTZ+9hEIiMoV1gq+KdePC/2pa/W+f5m5Ah5GZ09RJk2IU1Q
 GqQR9h9HPdQb1gYMMLAa05i3R8jfnGUyR6ggHA0q1nN94s3vH/QjM/+xIdL5fp4NYFuB
 511yMNHDqedn0vhfyvcKroOoMt+9f0M4nMv9wK65RAHJtrJePS2T5ialLOfnpa01mA1j
 Hq6MuIXoOvOdSqrrKmMSK4YcR/xgLy/+5aF8ZtfUqV6TW28l/wRhmfUxAN2Q/UVTiM/s
 1x9vDJp4rvMzLVoAiyUSDLjXOfEHUOGSaSiOSYQIXu83++uRlYv5mRLix+cE0SqyG/Pg VA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 3091m10nsc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 09 Apr 2020 10:16:29 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 039ABlp1070488;
 Thu, 9 Apr 2020 10:14:29 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 3091m7fj9e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 09 Apr 2020 10:14:29 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 039AEO0q032019;
 Thu, 9 Apr 2020 10:14:24 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 09 Apr 2020 03:14:23 -0700
Date: Thu, 9 Apr 2020 13:14:16 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Oliver Graute <oliver.graute@gmail.com>
Subject: Re: [PATCH v1] staging: fbtft: fb_st7789v: enabled inversion
Message-ID: <20200409101416.GN2001@kadam>
References: <1586424250-25897-1-git-send-email-oliver.graute@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586424250-25897-1-git-send-email-oliver.graute@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9585
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 bulkscore=0 mlxscore=0
 malwarescore=0 spamscore=0 adultscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004090077
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9585
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxlogscore=999 mlxscore=0
 priorityscore=1501 phishscore=0 suspectscore=0 bulkscore=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 clxscore=1011
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004090077
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 gregkh@linuxfoundation.org, Oliver Graute <oliver.graute@kococonnector.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 09, 2020 at 11:24:05AM +0200, Oliver Graute wrote:
> From: Oliver Graute <oliver.graute@kococonnector.com>
> 
> Enable inversion mode
> 
> Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
> ---
>  drivers/staging/fbtft/fb_st7789v.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/staging/fbtft/fb_st7789v.c b/drivers/staging/fbtft/fb_st7789v.c
> index 3c3f387936e8..84c5af2dc9a0 100644
> --- a/drivers/staging/fbtft/fb_st7789v.c
> +++ b/drivers/staging/fbtft/fb_st7789v.c
> @@ -120,6 +120,10 @@ static int init_display(struct fbtft_par *par)
>  	write_reg(par, PWCTRL1, 0xA4, 0xA1);
>  
>  	write_reg(par, MIPI_DCS_SET_DISPLAY_ON);
> +
> +	/* enable inversion mode */
> +	write_reg(par, 0x21);

Use the define and delete the comment.

	write_reg(par, MIPI_DCS_ENTER_INVERT_MODE);

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
