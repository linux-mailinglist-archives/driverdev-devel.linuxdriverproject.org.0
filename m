Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AE91BA037
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 11:43:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7B32021579;
	Mon, 27 Apr 2020 09:33:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mamuEIbQ+fQ6; Mon, 27 Apr 2020 09:33:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D29EF21544;
	Mon, 27 Apr 2020 09:33:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 125CE1BF3D6
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 09:33:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0144E21544
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 09:33:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jCapGtQHC0PG for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 09:33:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id CFD0C21080
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 09:33:16 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03R9XClf010733;
 Mon, 27 Apr 2020 09:33:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=11qvfcxGS4aOSNS8xBvKoNjWoqLgWCx7bu2daoW/Zo0=;
 b=BTWu60NluZc5UFN/cPDU36l7m8CIvTyu2Iol3/6dEEOmejoi9hnjXSrJUrM99fTUey/8
 YhA0W95PaYTkE11/V2mxEtin3Z2Qgvjwf/pglJ/B9QDdofWbPtCXvmtSLbraMDc5Si0f
 Ge0XpaLe1sc2oX6mT+g7GL12YQr97y9XH5Tce3Wqyp2mAgANF3J9MYZYUEjeu7Po+Xf6
 pZGVv9HqpuK6PJ0rjQS3ASC7lUYpr34Lh39hYNNOCpsluvufoW27t9A8zGM+qc57hQGB
 QNyjWXzARYxjV+u5BrVoeSaQFAV6P7ehgaFOTXxINf1tEExY9exznPbUkPaVPmc+PGav /w== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 30nucerhmv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Apr 2020 09:33:15 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03R9WuP7054902;
 Mon, 27 Apr 2020 09:33:14 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 30my08uuwg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Apr 2020 09:33:14 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 03R9XDQD007531;
 Mon, 27 Apr 2020 09:33:13 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 27 Apr 2020 02:33:12 -0700
Date: Mon, 27 Apr 2020 12:33:06 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Oliver Graute <oliver.graute@gmail.com>
Subject: Re: [PATCH v1] staging: fbtft: fb_st7789v: Initialize the Display
Message-ID: <20200427093306.GU2682@kadam>
References: <1586424337-26602-1-git-send-email-oliver.graute@gmail.com>
 <20200409102013.GP2001@kadam> <20200427083642.GD18436@portage>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427083642.GD18436@portage>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9603
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 spamscore=0
 suspectscore=0 adultscore=0 mlxlogscore=999 bulkscore=0 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004270086
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9603
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 impostorscore=0
 lowpriorityscore=0 phishscore=0 priorityscore=1501 clxscore=1015
 mlxlogscore=999 mlxscore=0 adultscore=0 spamscore=0 suspectscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004270086
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

On Mon, Apr 27, 2020 at 10:36:42AM +0200, Oliver Graute wrote:
> On 09/04/20, Dan Carpenter wrote:
> > On Thu, Apr 09, 2020 at 11:25:32AM +0200, Oliver Graute wrote:
> > > From: Oliver Graute <oliver.graute@kococonnector.com>
> > > 
> > > Set Gamma Values and Register Values for the HSD20_IPS
> > > 
> > > Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
> > > ---
> > >  drivers/staging/fbtft/fb_st7789v.c | 12 ++++++------
> > >  1 file changed, 6 insertions(+), 6 deletions(-)
> > > 
> > > diff --git a/drivers/staging/fbtft/fb_st7789v.c b/drivers/staging/fbtft/fb_st7789v.c
> > > index 84c5af2dc9a0..b0aa96b703a8 100644
> > > --- a/drivers/staging/fbtft/fb_st7789v.c
> > > +++ b/drivers/staging/fbtft/fb_st7789v.c
> > > @@ -17,8 +17,8 @@
> > >  #define DRVNAME "fb_st7789v"
> > >  
> > >  #define DEFAULT_GAMMA \
> > > -	"70 2C 2E 15 10 09 48 33 53 0B 19 18 20 25\n" \
> > > -	"70 2C 2E 15 10 09 48 33 53 0B 19 18 20 25"
> > > +	"D0 05 0A 09 08 05 2E 44 45 0F 17 16 2B 33\n" \
> > > +	"D0 05 0A 09 08 05 2E 43 45 0F 16 16 2B 33"
> > 
> > How do you know this won't break someone else's setup?
> 
> Should I declare an extra define for my values?
> 
> +#define HSD20_IPS_GAMMA \
> +	"D0 05 0A 09 08 05 2E 44 45 0F 17 16 2B 33\n" \
> +	"D0 05 0A 09 08 05 2E 43 45 0F 16 16 2B 33"
> 

That's fine, but it can't be a compile time thing.  Both types of
hardware have to be working/available at run time.

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
