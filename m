Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C6D37210
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Jun 2019 12:51:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 951C4204D0;
	Thu,  6 Jun 2019 10:51:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U4j5bzHhgq2z; Thu,  6 Jun 2019 10:51:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3F3AF204BF;
	Thu,  6 Jun 2019 10:51:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 63D921BF426
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 10:51:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 607AD87360
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 10:51:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9aN0sfm3xNtu for <devel@linuxdriverproject.org>;
 Thu,  6 Jun 2019 10:51:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3042E87937
 for <devel@driverdev.osuosl.org>; Thu,  6 Jun 2019 10:51:20 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x56An497115142;
 Thu, 6 Jun 2019 10:51:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=CYdJIrBU83khStvSGVg8ySuKn6WPb/kbQ9bMGPSCHnc=;
 b=GSZG8tnYFAcH0V8tG4YkdSsjjld/zZCLtpm1Ujt/QdqJ9BBwlR9lR8poTAQgxfG9BCAW
 SHtrAZFWpYRTkml/xdOmDCl5NAz6QcKXf39DHB+vN8RcdyBvYHBSf+IobnHdO9E+Bj4B
 pYICfwUIKzxhiqKwc8GV1FFy3fMUrcIxotPoMPdmqFcmOKAR0L00Uj1LVbL0c9xOWVyl
 Vd7WpTu8EZPIG+I6x4uEEw++49QhBNcWOASuvuHYBmkWM1HzcsqA+XwwhxQ6llaDocFh
 T1EwzxQgsiin1KV+FSxLgbCJ9gfuiK8aK6jAipVAyTvSXgAkbL2yWEJoROeqswH6zjsT Xg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2suj0qqjvd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 06 Jun 2019 10:51:18 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x56AofFx017801;
 Thu, 6 Jun 2019 10:51:18 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2swnhcmfv8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 06 Jun 2019 10:51:17 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x56ApGXE022658;
 Thu, 6 Jun 2019 10:51:16 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 06 Jun 2019 03:51:15 -0700
Date: Thu, 6 Jun 2019 13:51:08 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] Staging: emxx_udc: fix warning "sum of probable
 bitmasks, consider |"
Message-ID: <20190606105108.GL31203@kadam>
References: <20190603185412.GA11183@hari-Inspiron-1545>
 <20190603190457.GA6487@kroah.com>
 <20190605063443.GA5248@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605063443.GA5248@hari-Inspiron-1545>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9279
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906060079
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9279
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906060079
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Nishad Kamdar <nishadkamdar@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jun 05, 2019 at 12:04:43PM +0530, Hariprasad Kelam wrote:
> On Mon, Jun 03, 2019 at 09:04:57PM +0200, Greg Kroah-Hartman wrote:
> > On Tue, Jun 04, 2019 at 12:24:12AM +0530, Hariprasad Kelam wrote:
> > > Knowing the fact that operator '|' is faster than '+'.
> > > Its better we replace + with | in this case.
> > > 
> > > Issue reported by coccicheck
> > > drivers/staging/emxx_udc/emxx_udc.h:94:34-35: WARNING: sum of probable
> > > bitmasks, consider |
> > > 
> > > Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> > > ---
> > >  drivers/staging/emxx_udc/emxx_udc.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
> > > index b8c3dee..88d6bda 100644
> > > --- a/drivers/staging/emxx_udc/emxx_udc.h
> > > +++ b/drivers/staging/emxx_udc/emxx_udc.h
> > > @@ -91,7 +91,7 @@ int vbus_irq;
> > >  #define BIT30		0x40000000
> > >  #define BIT31		0x80000000
> > 
> > All of those BITXX defines should be removed and the "real" BIT(X) macro
> > used instead.
> Yes will send separate patch  to address this.
> > 
> > > -#define TEST_FORCE_ENABLE		(BIT18 + BIT16)
> > > +#define TEST_FORCE_ENABLE		(BIT18 | BIT16)
> > 
> > It really doesn't matter, a good compiler will have already turned this
> > into a constant value so you really do not know if this is less/faster
> > code or not, right?
> > 
> > Did you look at the output to verify this actually changed anything?
> > 
> > thanks,
> > 
> > greg k-h
> 
> Ok . Treating this as false postive from coccicheck.

I liked the patch.  | is way more normal and readable than +.  It's just
the commit message was bogus.

I would be very surprised if this coccicheck found anything that wasn't
a compile time constant like this.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
