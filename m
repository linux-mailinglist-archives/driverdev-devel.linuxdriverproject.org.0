Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F3134C3671
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Oct 2019 15:57:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD87A86ADB;
	Tue,  1 Oct 2019 13:57:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fFZSLHWzfNBF; Tue,  1 Oct 2019 13:57:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AC4EE869C7;
	Tue,  1 Oct 2019 13:57:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0C21A1BF967
 for <devel@linuxdriverproject.org>; Tue,  1 Oct 2019 13:57:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F3C412042D
 for <devel@linuxdriverproject.org>; Tue,  1 Oct 2019 13:57:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ol0dfyaIXetI for <devel@linuxdriverproject.org>;
 Tue,  1 Oct 2019 13:57:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id E366F2152C
 for <devel@driverdev.osuosl.org>; Tue,  1 Oct 2019 13:57:18 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x91DiIdE070140;
 Tue, 1 Oct 2019 13:57:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=7NxNlqn0YOBGFrAVM08bANlLn524Zi8Hql56hdiSIX4=;
 b=Z4YvyUsyFByaV+0qmxNLgUFcvrqzA4adjPogsAs1PbyKsVJS5VYRULwebBlKH0IfmUS9
 FX0IpbHje//0+KqjVu6AyO/nkV3V7u67Lzl0t5LrY8z/9DNu12WqSWjAL7fFOVku+B6S
 2NEP6FSe1RG0LnuAV9FTCTv5qA7X3bShvDHiYFyHSZZsYF3uUxLlnZZMRvZfGoTBovtf
 bZ8jJSdiZ8rK6WZujmJkODZTvt4GUMRfIipQMTUJ3FyZxG/iKoe5D1GHrDRTV4o+EPiK
 JNUwbZ+QnKptZKZLpFpbA6NGpSncV9Xy52ktgRJxkykpJyiBwSNdFLBryFzfNxhu71tH yg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2v9xxup42p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Oct 2019 13:57:14 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x91DhcO7147373;
 Tue, 1 Oct 2019 13:57:14 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2vbsm21aj5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Oct 2019 13:57:14 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x91Dv8sT028275;
 Tue, 1 Oct 2019 13:57:08 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 01 Oct 2019 06:57:07 -0700
Date: Tue, 1 Oct 2019 16:56:49 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Denis Efremov <efremov@linux.com>
Subject: Re: [PATCH] staging: rtl8723bs: hal: Fix memcpy calls
Message-ID: <20191001135649.GH22609@kadam>
References: <20190930110141.29271-1-efremov@linux.com>
 <37b195b700394e95aa8329afc9f60431@AcuMS.aculab.com>
 <e4051dcb-10dc-ff17-ec0b-6f51dccdb5bf@linux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e4051dcb-10dc-ff17-ec0b-6f51dccdb5bf@linux.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9396
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=952
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910010125
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9396
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910010125
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Jes Sorensen <jes.sorensen@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, David Laight <David.Laight@ACULAB.COM>,
 Bastien Nocera <hadess@hadess.net>, Dmitry Vyukov <dvyukov@google.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 30, 2019 at 05:25:43PM +0300, Denis Efremov wrote:
> On 9/30/19 4:18 PM, David Laight wrote:
> > From: Denis Efremov
> >> Sent: 30 September 2019 12:02
> >> memcpy() in phy_ConfigBBWithParaFile() and PHY_ConfigRFWithParaFile() is
> >> called with "src == NULL && len == 0". This is an undefined behavior.
> > 
> > I'm pretty certain it is well defined (to do nothing).
> 
> Well, technically you are right. However, UBSAN warns about passing NULL
> to memcpy and from the formal point of view this is an undefined behavior [1].
> There were a discussion [2] about interesting implication of assuming that
> memcpy with 0 size and NULL pointer is fine. This could result in that compiler
> assume that pointer is not NULL.

That's true for glibc memcpy() but not for the kernel memcpy().  In the
kernel there are lots of places which do a zero size memcpy().

The glibc attitude is "the standard allows us to put knives here" so
let's put knives everywhere in the path.  And the GCC attitude is let's
silently remove NULL checks instead of just printing a warning that the
NULL check isn't required...  It could really make someone despondent.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
