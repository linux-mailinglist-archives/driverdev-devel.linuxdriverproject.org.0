Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC35A1BCC02
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 21:02:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 899378761A;
	Tue, 28 Apr 2020 19:02:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FVwBRKgEG6ZE; Tue, 28 Apr 2020 19:02:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D8D1987605;
	Tue, 28 Apr 2020 19:02:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0C4CD1BF3C4
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 19:02:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ED9A7228BD
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 19:02:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jzYuE4FW4Z5T for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 19:02:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id 357EA2277A
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 19:02:09 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03SIxHSA091425;
 Tue, 28 Apr 2020 19:02:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=+5iXYoqsuyxXZ24Vp+LdjRiIUsJCP86KqCL8PYesp/w=;
 b=umkbl7GvWWTOdwT/RqYhC/dBjta460HKqs/eqkjEg2nXysNvtKNYE6xA4VVhcOLvf7Mk
 hO0Du1BmMf+KBFoLJQS0fz/7Tgpbc07hqJ4n4DjerHGWrUyiUKzpxZDv+11y2i9J8k4u
 qSgnEEFUBrB9iiHtwfk+ylq++IHECXmP0jhY0BsJmI780PPmZqc0nv8kRGghsc6slK0y
 chRsuUoJYrMEgPSec7WsIwXhKzrIVgjKaGMKNUYI6dkjLpN0E8ceOVU5XR47iJ1Hyhkw
 d1JQn7FpZdX4NzACpSIlZvrTSf9rbpaKw2pR23ibHQWO4JdOVqSLLiE8XSEpmnqBL4Wq XQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 30p2p0780j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 Apr 2020 19:02:08 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03SIufcA157860;
 Tue, 28 Apr 2020 19:00:07 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 30mxpgqsff-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 Apr 2020 19:00:07 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 03SJ05pw019518;
 Tue, 28 Apr 2020 19:00:05 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 28 Apr 2020 12:00:04 -0700
Date: Tue, 28 Apr 2020 21:59:57 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Oliver Graute <oliver.graute@gmail.com>
Subject: Re: [PATCH v1] staging: fbtft: fb_st7789v: Initialize the Display
Message-ID: <20200428185957.GL2014@kadam>
References: <1586424337-26602-1-git-send-email-oliver.graute@gmail.com>
 <20200409102013.GP2001@kadam> <20200427083642.GD18436@portage>
 <20200427093306.GU2682@kadam> <20200427123625.GE18436@portage>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427123625.GE18436@portage>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9605
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 malwarescore=0
 mlxscore=0 bulkscore=0 adultscore=0 phishscore=0 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004280150
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9605
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 clxscore=1015
 bulkscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 mlxscore=0 suspectscore=0 mlxlogscore=999 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004280150
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

On Mon, Apr 27, 2020 at 02:36:25PM +0200, Oliver Graute wrote:
> On 27/04/20, Dan Carpenter wrote:
> > On Mon, Apr 27, 2020 at 10:36:42AM +0200, Oliver Graute wrote:
> > > On 09/04/20, Dan Carpenter wrote:
> > > > On Thu, Apr 09, 2020 at 11:25:32AM +0200, Oliver Graute wrote:
> > > > > From: Oliver Graute <oliver.graute@kococonnector.com>
> > > > > 
> > > > > Set Gamma Values and Register Values for the HSD20_IPS
> > > > > 
> > > > > Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
> > > > > ---
> > > > >  drivers/staging/fbtft/fb_st7789v.c | 12 ++++++------
> > > > >  1 file changed, 6 insertions(+), 6 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/staging/fbtft/fb_st7789v.c b/drivers/staging/fbtft/fb_st7789v.c
> > > > > index 84c5af2dc9a0..b0aa96b703a8 100644
> > > > > --- a/drivers/staging/fbtft/fb_st7789v.c
> > > > > +++ b/drivers/staging/fbtft/fb_st7789v.c
> > > > > @@ -17,8 +17,8 @@
> > > > >  #define DRVNAME "fb_st7789v"
> > > > >  
> > > > >  #define DEFAULT_GAMMA \
> > > > > -	"70 2C 2E 15 10 09 48 33 53 0B 19 18 20 25\n" \
> > > > > -	"70 2C 2E 15 10 09 48 33 53 0B 19 18 20 25"
> > > > > +	"D0 05 0A 09 08 05 2E 44 45 0F 17 16 2B 33\n" \
> > > > > +	"D0 05 0A 09 08 05 2E 43 45 0F 16 16 2B 33"
> > > > 
> > > > How do you know this won't break someone else's setup?
> > > 
> > > Should I declare an extra define for my values?
> > > 
> > > +#define HSD20_IPS_GAMMA \
> > > +	"D0 05 0A 09 08 05 2E 44 45 0F 17 16 2B 33\n" \
> > > +	"D0 05 0A 09 08 05 2E 43 45 0F 16 16 2B 33"
> > > 
> > 
> > That's fine, but it can't be a compile time thing.  Both types of
> > hardware have to be working/available at run time.
> 
> ok, what is the proper way to handover the gamma values during run time?

Can you detect which are appropriate and set that in the probe()
function?

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
