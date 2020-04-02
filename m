Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0256E19BD82
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 10:20:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4DB9486FCD;
	Thu,  2 Apr 2020 08:20:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lONzcdJTAluw; Thu,  2 Apr 2020 08:20:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E164A86FCE;
	Thu,  2 Apr 2020 08:20:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1CA971BF3AF
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 08:20:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 189D988026
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 08:20:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oiAk9Mc4rNXF for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 08:20:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 893FE87F73
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 08:20:08 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0328In6m148305;
 Thu, 2 Apr 2020 08:20:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=S0KcJ+/HxSntHkE6YeHdP5O/WgQiF9EjD5DgCzgQWDU=;
 b=KUww6XPN5EVJX/b3dnxhJiNJrcq35B07mDJOfskt23N+RtGqvCc+Nr5mQz6joMGW7SbU
 c+6gjRGpYq7rW912nBhFQ9MnGL528P7ws3Mcl4qmzEC7CQsttj31oZ/MMKEY8MVR4me+
 yC/9oRS5dSb4lEmw3PbH7O6N50Ox0J2BzNUPYzOSQgy4KtJ7ZIS6wmqtvSChW5uiOY1O
 xeuoNCcAGg/qLk3VX7FKs85BIHyGjTRquuweQsG4IcKyyITi5Mggri4kjUTbrqefr1L9
 fuPhsTA9FEuflnaAJkmHOuwWGbV8MsDW5sBMjExP/97UweDyLrhGMXKHunIHQjBuNGvY NQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 303aqhtaj4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 02 Apr 2020 08:20:07 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0328H7fx126298;
 Thu, 2 Apr 2020 08:20:07 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 304sjnswnj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 02 Apr 2020 08:20:06 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0328K4Bo023025;
 Thu, 2 Apr 2020 08:20:04 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 02 Apr 2020 01:20:03 -0700
Date: Thu, 2 Apr 2020 11:19:56 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: aimannajjar <aiman.najjar@hurranet.com>
Subject: Re: [PATCH v2 1/5] staging: rtl8712: fix checkpatch long-line warning
Message-ID: <20200402081956.GF2001@kadam>
References: <20200327080429.GB1627562@kroah.com>
 <cover.1585353747.git.aiman.najjar@hurranet.com>
 <6a4d94b4e5446f4665dc11290ed1351661554f01.1585353747.git.aiman.najjar@hurranet.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6a4d94b4e5446f4665dc11290ed1351661554f01.1585353747.git.aiman.najjar@hurranet.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9578
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 adultscore=0 mlxscore=0
 malwarescore=0 phishscore=0 suspectscore=2 mlxlogscore=999 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004020075
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9578
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0 clxscore=1015
 malwarescore=0 impostorscore=0 mlxlogscore=999 spamscore=0 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=2
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004020075
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
 Larry Finger <Larry.Finger@lwfinger.net>, linux-kernel@vger.kernel.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Mar 27, 2020 at 08:08:07PM -0400, aimannajjar wrote:
> This patch fixes these two long-line checkpatch warnings
> in rtl871x_xmit.c:
> 
> WARNING: line over 80 characters
> \#74: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:74:
> +       * Please allocate memory with the sz = (struct xmit_frame) * NR_XMITFRAME,
> 
> WARNING: line over 80 characters
> \#79: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:79:
> +               kmalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4, GFP_ATOMIC);
> 
> Signed-off-by: aimannajjar <aiman.najjar@hurranet.com>
> ---
>  drivers/staging/rtl8712/rtl871x_xmit.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
> index f0b85338b567..628e4bad1547 100644
> --- a/drivers/staging/rtl8712/rtl871x_xmit.c
> +++ b/drivers/staging/rtl8712/rtl871x_xmit.c
> @@ -71,12 +71,13 @@ int _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
>  	_init_queue(&pxmitpriv->apsd_queue);
>  	_init_queue(&pxmitpriv->free_xmit_queue);
>  	/*
> -	 * Please allocate memory with the sz = (struct xmit_frame) * NR_XMITFRAME,
> +	 * Please allocate memory with sz = (struct xmit_frame) * NR_XMITFRAME,
>  	 * and initialize free_xmit_frame below.
>  	 * Please also apply  free_txobj to link_up all the xmit_frames...

Probably you could delete the "Please ".

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
