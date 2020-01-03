Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC6712F6EE
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Jan 2020 11:58:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 852DD2153F;
	Fri,  3 Jan 2020 10:58:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TAR0ZjCa0qAJ; Fri,  3 Jan 2020 10:58:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 09CA8203E8;
	Fri,  3 Jan 2020 10:58:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3FF511BF3A7
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 10:58:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3C25F2001C
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 10:58:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ufx4E1h5POyF for <devel@linuxdriverproject.org>;
 Fri,  3 Jan 2020 10:58:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 7CA7B20018
 for <devel@driverdev.osuosl.org>; Fri,  3 Jan 2020 10:58:20 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 003AsMfK042688;
 Fri, 3 Jan 2020 10:58:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=WQAjsNb8UezHEE84WHliwqQWBV3ylPUPC7Bykr9qFRc=;
 b=OBaCqFDMpnaeKpgVV1PMhVyJdie9lkWbwYqJSe8SxQf476kb62z/Ctm34wP/1GjBo+jw
 DPs8s5tDEUkJbVesnaHOj6DYStp5N+nO0BwDFgbk6wssIvC0SgAfSIA767xEB/k1CUKg
 7STqQDsEL1vln/XMWaHLjWltkT/kvMmWE8C0W6vCwCiqVTn2z0D9yY/grM6ZC0/N4qtL
 41hZQpKj+8b/qWH2auDnsKOu2eXFYxMn0Y4NZwLC0ZLaY4J7rj1xkeSGmjOitCFRhV+X
 AkEfqJ/++iLNKJSZbOEry2D3wnt5VjYcnaNQ6CWz5xRlNKZcWsZITz9EJnWOstXE9zQW Ug== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2x5xftux48-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Jan 2020 10:58:19 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 003AiW39080334;
 Fri, 3 Jan 2020 10:58:19 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2x8gjbsbwv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Jan 2020 10:58:19 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 003AwEZi029193;
 Fri, 3 Jan 2020 10:58:14 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 03 Jan 2020 02:58:14 -0800
Date: Fri, 3 Jan 2020 13:58:08 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Malcolm Priestley <tvboxspy@gmail.com>
Subject: Re: [PATCH 1/5] staging: vt6656: Fix non zero logical return of,
 usb_control_msg
Message-ID: <20200103105734.GD3911@kadam>
References: <08e88842-6f78-a2e3-a7a0-139fec960b2b@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <08e88842-6f78-a2e3-a7a0-139fec960b2b@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9488
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001030102
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9488
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001030103
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
 Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Dec 20, 2019 at 09:14:59PM +0000, Malcolm Priestley wrote:
> Starting with commit 59608cb1de1856
> ("staging: vt6656: clean function's error path in usbpipe.c")
> the usb control functions have returned errors throughout driver
> with only logical variable checking.

Use the Fixes tag for this.

Fixes: 59608cb1de18 ("staging: vt6656: clean function's error path in usbpipe.c")

12 digits to the hash.  Add Quentin to the CC list.

> 
> However, usb_control_msg return the amount of bytes transferred
> this means that normal operation causes errors.
> 
> Correct the return function so only return zero when transfer
> is successful.
> 
> Cc: stable <stable@vger.kernel.org> # v5.3+
> Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
> ---
>  drivers/staging/vt6656/usbpipe.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
> index d3304df6bd53..488ebd98773d 100644
> --- a/drivers/staging/vt6656/usbpipe.c
> +++ b/drivers/staging/vt6656/usbpipe.c
> @@ -59,7 +59,9 @@ int vnt_control_out(struct vnt_private *priv, u8 request, u16 value,
>  
>  	kfree(usb_buffer);
>  
> -	if (ret >= 0 && ret < (int)length)
> +	if (ret == (int)length)

No need for this cast (no need in the original either).

> +		ret = 0;
> +	else
>  		ret = -EIO;

It would be better to preserve the error codes from usb_control_msg().

	if (ret == length)
		ret = 0;
	else if (ret >= 0)
		ret = -EIO;

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
