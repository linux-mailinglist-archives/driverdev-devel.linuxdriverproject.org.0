Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 967AF100BEE
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Nov 2019 20:03:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C217D22011;
	Mon, 18 Nov 2019 19:03:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wtLQEDuL6eLW; Mon, 18 Nov 2019 19:03:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CF48321579;
	Mon, 18 Nov 2019 19:03:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C1D61BF344
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 19:03:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8581721579
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 19:03:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qysk8ir4XBD2 for <devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 19:03:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id CAB862013C
 for <devel@driverdev.osuosl.org>; Mon, 18 Nov 2019 19:03:23 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAIIx11A038796;
 Mon, 18 Nov 2019 19:03:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=i6LaNW7WMQqK56JkmDqqLpA59fZ3vDebVpzWRdgrgaw=;
 b=WDSqF+TpKiNH5FwTaRjglyihwZeFyW1/okhznb0TZ25WMAknb73+Ny8pmR9Q/yT4ytrn
 dP6uGl/VJjRqog7iKPPgcl1hnbpO+paYWZdXlzlJSt2soXRWdGE4tuUNSXyKIVyF4tHG
 9B1iXVHD4PdwpbcaPZVjen9DjA9won5pVjPa4l4RPkKEDtv8FS2isuteguTVcmZyvZsb
 CvvKnIdo3BPMGUNyvb+Ed8cSsqUBOieF93dtKF7txG5jMc6zGRGB+128YsAKFvb1Frdv
 dxMbBhZbPFGEYZDKEuY2obDDoG8+NU+qlnwzbRHssVrwLThJEY3u9Y6vVoJee4KMs7Wv 8w== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2wa9rqa6cv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 18 Nov 2019 19:03:22 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAIIwOQm106979;
 Mon, 18 Nov 2019 19:03:21 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2wbxgb8ceu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 18 Nov 2019 19:03:21 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xAIJ3Jlm016806;
 Mon, 18 Nov 2019 19:03:19 GMT
Received: from kadam (/41.210.141.115) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 18 Nov 2019 11:03:18 -0800
Date: Mon, 18 Nov 2019 22:01:28 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Giovanni Gherdovich <bobdc9664@seznam.cz>
Subject: Re: [PATCH] staging: octeon: indent with tabs instead of spaces
Message-ID: <20191118190018.GA5604@kadam>
References: <20191118183852.3699-1-bobdc9664@seznam.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191118183852.3699-1-bobdc9664@seznam.cz>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9445
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=870
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911180161
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9445
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=936 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911180161
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
 linux-kernel@vger.kernel.org, Aaro Koskinen <aaro.koskinen@iki.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 18, 2019 at 07:38:52PM +0100, Giovanni Gherdovich wrote:
> Remove a coding style error from the Octeon driver's tree and keep
> checkpatch.pl a little quieter.
> 
> Being a white-spaces patch the chances of breakage are minimal; we don't
> have the hardware to run this driver so we built it with COMPILE_TEST
> enabled on an x86 machine.

Next time put this sort of comment under the --- cut off line so that we
sound like we're bursting with confidence in the permanent git log.  ;)

> 
> Signed-off-by: Giovanni Gherdovich <bobdc9664@seznam.cz>
> ---
  ^^^

>  drivers/staging/octeon/octeon-stubs.h | 32 ++++++++++++++++----------------
>  1 file changed, 16 insertions(+), 16 deletions(-)

Anyway, looks good.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
