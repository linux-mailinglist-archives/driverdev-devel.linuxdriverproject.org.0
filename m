Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 949F1C355C
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Oct 2019 15:18:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 80AC885E69;
	Tue,  1 Oct 2019 13:17:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nK5MjZK3r4V4; Tue,  1 Oct 2019 13:17:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 148DC85E7D;
	Tue,  1 Oct 2019 13:17:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E9F0E1BF28D
 for <devel@linuxdriverproject.org>; Tue,  1 Oct 2019 13:17:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D162620517
 for <devel@linuxdriverproject.org>; Tue,  1 Oct 2019 13:17:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dtHsPlgHeXwH for <devel@linuxdriverproject.org>;
 Tue,  1 Oct 2019 13:17:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id D2490204F1
 for <devel@driverdev.osuosl.org>; Tue,  1 Oct 2019 13:17:26 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x91DDbdU191350;
 Tue, 1 Oct 2019 13:17:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=2CaoF5N6B1PLkCP4DaoWaEz16b+2iGGcswNGpgHzJMk=;
 b=A5xDwPGJAvWyON+A6egUaUghA6inUvt5JB/nWDXJXDZv4isjXeiXY0qCat2pbEZQCGZZ
 C6pjaKfUxYsGRHQlqynJ3EeZ/NV1+FP/C0rzOfRrHiUKIVha+zFoDfLjgXJ5JYmf6ayh
 CD+Qi0uWBgHeOlr5nimp+lbdf9YuvXR2GDvitsGwtztCIQhJBXI8mVal7IfMMF+BYeN2
 N46OP+O8SR4O2YWHHBqYs1581Z1JlptkkO9mdOBLcf0TqB4QVOXsXc40QFhe+4TrXdVV
 t+ADZhHbyNv3l+SfnGsnAs2KQJcEbM20p2SsNFQ7lFgsSuS97Mbu2PFJzzjS/zNyjQ1x lA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2v9yfq5r6n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Oct 2019 13:17:25 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x91DDrq3130787;
 Tue, 1 Oct 2019 13:17:25 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2vbmpyj7fw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Oct 2019 13:17:24 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x91DHNC2031371;
 Tue, 1 Oct 2019 13:17:23 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 01 Oct 2019 06:17:23 -0700
Date: Tue, 1 Oct 2019 16:17:17 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jesse Barton <jessebarton95@gmail.com>
Subject: Re: [PATCH 3/3] Staging: exfat: exfat_super.c Fixed coding style
 issues.
Message-ID: <20191001131717.GD22609@kadam>
References: <20190929002119.20689-1-jessebarton95@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190929002119.20689-1-jessebarton95@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9396
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910010120
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9396
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910010120
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
Cc: devel@driverdev.osuosl.org, valdis.kletnieks@vt.edu,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Sep 28, 2019 at 07:21:19PM -0500, Jesse Barton wrote:
> Fixed Coding Style issues

Which ones?

> 
> Signed-off-by: Jesse Barton <jessebarton95@gmail.com>
> ---
>  drivers/staging/exfat/exfat_super.c | 29 +++++++++--------------------
>  1 file changed, 9 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
> index 3c7e2b7c2195..b9656ec06144 100644
> --- a/drivers/staging/exfat/exfat_super.c
> +++ b/drivers/staging/exfat/exfat_super.c
> @@ -640,8 +640,7 @@ static int ffs_lookup_file(struct inode *inode, char *path, struct file_id_t *fi
>  	return ret;
>  }
>  
> -static int ffs_create_file(struct inode *inode, char *path, u8 mode,
> -			 struct file_id_t *fid)
> +static int ffs_create_file(struct inode *inode, char *path, u8 mode, struct file_id_t *fid)

I think now checkpatch will complain that the line is too long?  What we
want here is:

static int ffs_create_file(struct inode *inode, char *path, u8 mode,
			   struct file_id_t *fid)

[tab][tab][tab][space][space][space]struct file_id_t *fid)

So they line up.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
