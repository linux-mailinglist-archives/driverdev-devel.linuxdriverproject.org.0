Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F13F1D1171
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 16:39:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68451883AC;
	Wed,  9 Oct 2019 14:39:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zUDCU0lXsz9L; Wed,  9 Oct 2019 14:39:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B31C68836A;
	Wed,  9 Oct 2019 14:39:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E8551BF423
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 14:39:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1842B8836A
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 14:39:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EN6cvv2940so for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 14:39:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6EA7888364
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 14:39:21 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x99ET4r9103806;
 Wed, 9 Oct 2019 14:39:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=Y+rzZ/MPMEJEoxqM7MiXbauMggc4Ms25TgKhJewfStg=;
 b=cwclw6ihXm3WOexfBJoU3Majil8ooUSZpwpupkQGjaThlEdV2awtBgl9LauvrX1Uknka
 Vm46VhcjUPEHkRHc2qI0jy4enEVS/LQUK4Gbp4dB2tTQbLOx9p6zFAydHNJxzg5375za
 BuTScWZSpBPEZfvRy5qNIpk/V0vIl1oPCviYXS0/gU81stCVrkp+756WuRSkR9gFWIwp
 I9t2pfAVKul7pJ22RGXdk2L4Sc6Seey0MeLXm/LSYR6cmBbl+VEzFi+rugu0vxiJFRXh
 UUIa5uFhP5gZJo5ypdhnxlwqGWUKUr8hjF3jwMBypwQtN8nErt+AQYyZO6gHSFOjcUuV 3g== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2vejkun3te-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 14:39:17 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x99EWlXb159064;
 Wed, 9 Oct 2019 14:39:16 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2vgefctcrq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 14:39:16 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x99Ed5MH031000;
 Wed, 9 Oct 2019 14:39:05 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 09 Oct 2019 07:39:04 -0700
Date: Wed, 9 Oct 2019 17:38:55 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Denis Efremov <efremov@linux.com>
Subject: Re: [PATCH] staging: rtl8723bs: hal: Fix memcpy calls
Message-ID: <20191009143855.GE13286@kadam>
References: <20190930110141.29271-1-efremov@linux.com>
 <37b195b700394e95aa8329afc9f60431@AcuMS.aculab.com>
 <e4051dcb-10dc-ff17-ec0b-6f51dccdb5bf@linux.com>
 <20191001135649.GH22609@kadam>
 <8d2e8196cae74ec4ae20e9c23e898207@AcuMS.aculab.com>
 <a7c002f7-c6f2-a9ed-0100-acfbafea65c5@linux.com>
 <20191001185730.GM29696@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001185730.GM29696@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9404
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910090140
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9404
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910090140
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

On Tue, Oct 01, 2019 at 09:58:55PM +0300, Dan Carpenter wrote:
> On Tue, Oct 01, 2019 at 06:13:21PM +0300, Denis Efremov wrote:
> > Just found an official documentation to this issue:
> > https://gcc.gnu.org/gcc-4.9/porting_to.html
> > "Null pointer checks may be optimized away more aggressively
> > ...
> > The pointers passed to memmove (and similar functions in <string.h>) must be non-null
> > even when nbytes==0, so GCC can use that information to remove the check after the
> > memmove call. Calling copy(p, NULL, 0) can therefore deference a null pointer and crash."
> > 
> 
> Correct.  In glibc those functions are annotated as non-NULL.
> 
> extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
>                      size_t __n) __THROW __nonnull ((1, 2));

I was wrong on this.  It's built into GCC so it doesn't matter how it's
annotated.

> 
> We aren't going to do that in the kernel.  A second difference is that
> in the kernel we use -fno-delete-null-pointer-checks so it doesn't
> delete the NULL checks.

But it's true that the kernel has -fno-delete-null-pointer-checks so I
don't think this is worth patching.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
