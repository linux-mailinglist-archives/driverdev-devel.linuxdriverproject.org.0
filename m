Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D46A12F703
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Jan 2020 12:14:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 87B6E2152E;
	Fri,  3 Jan 2020 11:14:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WgByh+E-DM5y; Fri,  3 Jan 2020 11:14:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6EBCA21526;
	Fri,  3 Jan 2020 11:14:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D7B071BF376
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 11:14:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D3DA284C20
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 11:14:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B8JbPOu18l5M for <devel@linuxdriverproject.org>;
 Fri,  3 Jan 2020 11:14:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3D82D86838
 for <devel@driverdev.osuosl.org>; Fri,  3 Jan 2020 11:14:11 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 003BEA88057960;
 Fri, 3 Jan 2020 11:14:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=jLVJD85SgTvLBwNiq9vXt6s/uvgAerHrta4ysAK6Qs8=;
 b=dlMcvM0+g7GtVAhDsbCZ2wQcZ33DZ3ll4sFMVumWGHu8en8JwY+hV42iRalTqaAwuQbt
 g+M0+xJw4CQL5EOh1l7W1Yu4aBJA/M7Z9ocr8IDXRnB+YoJDqfbgxHVt8REucHDnfCUp
 69ihReAAmnc/X3awOrQHU6eWYvVIngWfGRtKrQs0hwHr/EE3YWN21XV8EspNZ68iQ/0A
 rS4A2AsnXYuOPV7qk5ryoV4xigE1OMsRYPcd+p6Po/m5ORemyuB4EMJPXM1yFiCWnOQ+
 cstTT8IwYPQLFvogFwQII/OGYOOPmSSuaT73kpcMM9hLoCtVBWCAlayPYjE/eY8mSFIL KQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2x5xftv041-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Jan 2020 11:14:10 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 003BE4qE136396;
 Fri, 3 Jan 2020 11:14:09 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2x8gjbsuwb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Jan 2020 11:14:08 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 003BDa7m022956;
 Fri, 3 Jan 2020 11:13:36 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 03 Jan 2020 03:13:35 -0800
Date: Fri, 3 Jan 2020 14:13:29 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Malcolm Priestley <tvboxspy@gmail.com>
Subject: Re: [PATCH 3/5] staging: vt6656: limit reg output to block size
Message-ID: <20200103111329.GF3911@kadam>
References: <a41f0601-df46-ce6e-ab7c-35e697946e2a@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a41f0601-df46-ce6e-ab7c-35e697946e2a@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9488
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001030107
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9488
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001030107
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Dec 20, 2019 at 09:15:24PM +0000, Malcolm Priestley wrote:
> vnt_control_out appears to fail when BBREG is greater than 64 writes.
> 
> Create new function that will relay an array in no larger than
> the indicated block size.
> 
> It appears that this command has always failed but was ignored by
> driver until the introduction of error checking.
> 
> Cc: stable <stable@vger.kernel.org> # v5.3+

Please add the Fixes tag.

> Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
> ---
>  drivers/staging/vt6656/baseband.c |  4 ++--
>  drivers/staging/vt6656/usbpipe.c  | 17 +++++++++++++++++
>  drivers/staging/vt6656/usbpipe.h  |  5 +++++
>  3 files changed, 24 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
> index 8d19ae71e7cc..4e651b698617 100644
> --- a/drivers/staging/vt6656/baseband.c
> +++ b/drivers/staging/vt6656/baseband.c
> @@ -449,8 +449,8 @@ int vnt_vt3184_init(struct vnt_private *priv)
>  
>  	memcpy(array, addr, length);
>  
> -	ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, 0,
> -			      MESSAGE_REQUEST_BBREG, length, array);
> +	ret = vnt_control_out_blocks(priv, VNT_REG_BLOCK_SIZE,
> +				     MESSAGE_REQUEST_BBREG, length, array);
>  	if (ret)
>  		goto end;
>  
> diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
> index 488ebd98773d..d977d4777e4f 100644
> --- a/drivers/staging/vt6656/usbpipe.c
> +++ b/drivers/staging/vt6656/usbpipe.c
> @@ -76,6 +76,23 @@ int vnt_control_out_u8(struct vnt_private *priv, u8 reg, u8 reg_off, u8 data)
>  			       reg_off, reg, sizeof(u8), &data);
>  }
>  
> +int vnt_control_out_blocks(struct vnt_private *priv,
> +			   u16 block, u8 reg, u16 length, u8 *data)
> +{
> +	int ret = 0, i;
> +
> +	for (i = 0; i < length; i += block) {
> +		u16 len = min_t(int, length - i, block);
> +
> +		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE,
> +				      i, reg, len, data + i);
> +		if (ret)
> +			goto end;
> +	}
> +end:
> +	return ret;

Just do a direct return.  Goto end is pointless.  It hurts readability
because with direct returns we can immediately see that this returns
zero on success.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
