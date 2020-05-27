Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2564E1E4482
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 15:52:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3B3978688A;
	Wed, 27 May 2020 13:52:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oZOR7KwzoEr6; Wed, 27 May 2020 13:52:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0921E863AC;
	Wed, 27 May 2020 13:52:37 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 191AB1BF34E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 13:52:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1451E87E25
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 13:52:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZwFzQSKOr95z
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 13:52:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 659C787E24
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 13:52:33 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04RDputp191276;
 Wed, 27 May 2020 13:52:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=lIdedtOlo7RE2YaX5ehqN9Flcew7LGOX0kOwTTifpIM=;
 b=JWglneK+g9plZQEA1syiMSUUJBUhspoMzX/x0kBSrt5jUHwLxmBcsBUHDaCYc1LqGXXN
 zo1RCSL3DbxpvvAtXsKdqpMQ3H7Vh0Q9eiQFvA7JZjH+ghIxCgN7ugYSKFoBDHY7mcVo
 W4NNuyCXULieGXUl4RUqvS1FBxGi5Gi59vdfEi7PzOri+1lzQZP5FM9LvxXDHODiya7O
 Vv4dLsBkiaNniZ3eQ5nhEiZ1vMbvLWvXwA3i2RM9DoWx2DGhRJNrPmn5+1dgRsNqpG5+
 IGtQS07DObZ7x6e5J6HzJuDsBPxSL3G757VhOvLrS+a/TWMtev30GeJfrP73DSXUMhtO fg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 316u8qyjev-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 27 May 2020 13:52:32 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04RDhaBs078550;
 Wed, 27 May 2020 13:52:31 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 317j5rx34c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 27 May 2020 13:52:31 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04RDqUrp006904;
 Wed, 27 May 2020 13:52:31 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 27 May 2020 06:52:30 -0700
Date: Wed, 27 May 2020 16:52:24 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH v4] drivers: most: add USB adapter driver
Message-ID: <20200527135224.GC30374@kadam>
References: <1590585268-25423-1-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590585268-25423-1-git-send-email-christian.gromm@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9633
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 spamscore=0 suspectscore=0
 mlxlogscore=999 mlxscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005270104
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9633
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0
 priorityscore=1501 spamscore=0 cotscore=-2147483648 suspectscore=0
 phishscore=0 clxscore=1015 mlxlogscore=999 bulkscore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005270105
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
Cc: gregkh@linuxfoundation.org, driverdev-devel@linuxdriverproject.org,
 linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 27, 2020 at 03:14:28PM +0200, Christian Gromm wrote:
> This patch adds the usb driver source file most_usb.c and
> modifies the Makefile and Kconfig accordingly.
> 
> Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> ---
> v2:
> Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>         - don't remove usb driver from staging area
>         - don't touch staging/most/Kconfig
>         - remove subdirectory for USB driver and put source file into
>           drivers/most
> v3:
>         - submitted fixes found during code audit to staging version
>           first to be able to resend single patch that adds the driver
> v4:
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> 	
>         submitted patch set that fixes issues found during code audit
> 	to staging version first to be able to resend single patch that
> 	adds the driver. The patch series included:
> 
> 	- use function sysfs_streq
> 	- add missing put_device calls
> 	- use correct error codes
> 	- replace code to calculate array index
> 	- don't use error path to exit function on success
> 	- move allocation of URB out of critical section
> 	- return 0 instead of variable
> 	- change return value of function drci_rd_reg
> 	- don't use expressions that might fail in a declaration
> 	- change order of function parameters

Thanks for doing this.  I'm sorry that I am behind on reviewing code so
I hadn't gotten to that patchset yet.

> +static unsigned int get_stream_frame_size(struct device *dev,
> +					  struct most_channel_config *cfg)
> +{
> +	unsigned int frame_size;
> +	unsigned int sub_size = cfg->subbuffer_size;
> +
> +	if (!sub_size) {
> +		dev_warn(dev, "Misconfig: Subbuffer size zero.\n");
> +		return 0;
> +	}
> +	switch (cfg->data_type) {
> +	case MOST_CH_ISOC:
> +		frame_size = AV_PACKETS_PER_XACT * sub_size;
> +		break;
> +	case MOST_CH_SYNC:
> +		if (cfg->packets_per_xact == 0) {
> +			dev_warn(dev, "Misconfig: Packets per XACT zero\n");
> +			frame_size = 0;
> +		} else if (cfg->packets_per_xact == 0xFF) {
> +			frame_size = (USB_MTU / sub_size) * sub_size;
> +		} else {
> +			frame_size = cfg->packets_per_xact * sub_size;
> +		}
> +		break;
> +	default:
> +		dev_warn(dev, "Query frame size of non-streaming channel\n");
> +		break;

frame_size isn't initialized on this path.

> +	}
> +	return frame_size;
> +}

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
