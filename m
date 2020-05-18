Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D9D1D7847
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 May 2020 14:16:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BDC0F207A1;
	Mon, 18 May 2020 12:16:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qpPIVDffACDK; Mon, 18 May 2020 12:16:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 836A82049B;
	Mon, 18 May 2020 12:16:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B37A11BF3BA
 for <devel@linuxdriverproject.org>; Mon, 18 May 2020 12:16:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B03DA8803E
 for <devel@linuxdriverproject.org>; Mon, 18 May 2020 12:16:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pljaELVN-FPZ for <devel@linuxdriverproject.org>;
 Mon, 18 May 2020 12:16:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 00B9288012
 for <devel@driverdev.osuosl.org>; Mon, 18 May 2020 12:16:41 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04IC7O8c136864;
 Mon, 18 May 2020 12:16:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=PA11GNuXBy9RL/56rySqViCyV7Jpit5qeutUc8R5BlQ=;
 b=ECOMsx1cknIujnLn6wnq5hPh6xlnKhUC5Yzfntt94B954sJh4D20vgAtC2ROeWT0f0xo
 fkFP4RV+cWmQfi5sMeW976x5yv2rpDEWqIFkwJzm2UW42gbHB1kzCmZgTy6CIJbfQgvI
 L/nR7G4EZkrl++tuJb7R5J3rReIKOcl56vL39vsnvP6qogx+dQSG2f2dSpiZdqJQDOUr
 hleYp0DVvGeoXJZTrJQB122Nl7H60VbjkI6rbJ7WWcyjX6hkUDlNxOr8FsMTIaplbu4l
 i3J2SV+xr7egwqcMR2j2fMVAZ3bsdN3IiUhlvLjjZo0WpHFMKypRjYYRw552PLQtmvtA yw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 3128tn6a0g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 18 May 2020 12:16:39 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04ICCTUC069018;
 Mon, 18 May 2020 12:16:39 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 313ghyrdyh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 18 May 2020 12:16:38 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04ICGYEr023418;
 Mon, 18 May 2020 12:16:36 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 18 May 2020 05:16:34 -0700
Date: Mon, 18 May 2020 15:16:27 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Joe Perches <joe@perches.com>
Subject: Re: [RFC PATCH] staging: rtl8192u: indicate_packets() can be static
Message-ID: <20200518121627.GG2078@kadam>
References: <20200517165819.136715-1-pterjan@google.com>
 <20200517202216.GA24634@8c544063f25c>
 <ec2fa70939ab20dc7c454897b0b8ed08570dca80.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ec2fa70939ab20dc7c454897b0b8ed08570dca80.camel@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9624
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 spamscore=0 malwarescore=0
 mlxscore=0 adultscore=0 bulkscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005180111
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9624
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0
 bulkscore=0 spamscore=0
 clxscore=1011 cotscore=-2147483648 suspectscore=0 lowpriorityscore=0
 adultscore=0 phishscore=0 mlxlogscore=999 mlxscore=0 priorityscore=1501
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005180110
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
Cc: devel@driverdev.osuosl.org, kbuild-all@lists.01.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Pascal Terjan <pterjan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, May 17, 2020 at 01:49:50PM -0700, Joe Perches wrote:
> On Mon, 2020-05-18 at 04:22 +0800, kbuild test robot wrote:
> > Signed-off-by: kbuild test robot <lkp@intel.com>
> > ---
> 
> This doesn't apply on Linus' tree or -next so perhaps the
> robot should put what tree and branch patches like these
> are meant to be applied on after the --- line
> 

It's supposed to apply on top of the email which it is replying to.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
