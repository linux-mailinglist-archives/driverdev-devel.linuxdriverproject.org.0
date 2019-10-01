Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 21046C4083
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Oct 2019 20:59:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C05BC84031;
	Tue,  1 Oct 2019 18:59:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2wUNybPvatHN; Tue,  1 Oct 2019 18:59:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 49B6E81DFB;
	Tue,  1 Oct 2019 18:59:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F06611BF310
 for <devel@linuxdriverproject.org>; Tue,  1 Oct 2019 18:59:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EC5DE84B01
 for <devel@linuxdriverproject.org>; Tue,  1 Oct 2019 18:59:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QcmToh606dfF for <devel@linuxdriverproject.org>;
 Tue,  1 Oct 2019 18:59:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6A46884B6F
 for <devel@driverdev.osuosl.org>; Tue,  1 Oct 2019 18:59:43 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x91IxYHo170955;
 Tue, 1 Oct 2019 18:59:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=HUjdfKmYAiVYdwx/VKsfp7MDujfbx9y3CuLubHKJmJQ=;
 b=OrmAYS24/I71CUnEQyZTUymcuiWq3LRWiTUg8n1+xpq6/U3nn9Nj4GocSxAnQMyUDQ6D
 dVUMnqhzj9BpFlEoKrm7Q9JWe6SlBVCPOKeSeXXlrZ399R+A7mLrS/tWA2rCp+QjnNa2
 TadeQG8HXt7813ftQ/1ijYxH9XH87l6KkA7kUYw7u35I/9i5+kxdeCTOOejmbUAxTQdI
 3UniJbFJMOLfy2sw3uQ7mrnTqaBRg+opbB30KCJDJhFfYSkRQLLvYr1o2CJx5IJSjJ/g
 6ch4FC0CY/h5kDj+KHdjqhPVqLVTeUD0bM6ibsT/uSWBfDpaxNltJk1JnyDoJEkajDYA +w== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2va05rr5k1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Oct 2019 18:59:38 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x91IxSHw114015;
 Tue, 1 Oct 2019 18:59:38 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2vbsm2g30p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Oct 2019 18:59:37 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x91IxCMH006633;
 Tue, 1 Oct 2019 18:59:13 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 01 Oct 2019 11:59:12 -0700
Date: Tue, 1 Oct 2019 21:58:55 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Denis Efremov <efremov@linux.com>
Subject: Re: [PATCH] staging: rtl8723bs: hal: Fix memcpy calls
Message-ID: <20191001185730.GM29696@kadam>
References: <20190930110141.29271-1-efremov@linux.com>
 <37b195b700394e95aa8329afc9f60431@AcuMS.aculab.com>
 <e4051dcb-10dc-ff17-ec0b-6f51dccdb5bf@linux.com>
 <20191001135649.GH22609@kadam>
 <8d2e8196cae74ec4ae20e9c23e898207@AcuMS.aculab.com>
 <a7c002f7-c6f2-a9ed-0100-acfbafea65c5@linux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a7c002f7-c6f2-a9ed-0100-acfbafea65c5@linux.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9397
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910010152
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9397
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910010152
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

On Tue, Oct 01, 2019 at 06:13:21PM +0300, Denis Efremov wrote:
> Just found an official documentation to this issue:
> https://gcc.gnu.org/gcc-4.9/porting_to.html
> "Null pointer checks may be optimized away more aggressively
> ...
> The pointers passed to memmove (and similar functions in <string.h>) must be non-null
> even when nbytes==0, so GCC can use that information to remove the check after the
> memmove call. Calling copy(p, NULL, 0) can therefore deference a null pointer and crash."
> 

Correct.  In glibc those functions are annotated as non-NULL.

extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
                     size_t __n) __THROW __nonnull ((1, 2));

We aren't going to do that in the kernel.  A second difference is that
in the kernel we use -fno-delete-null-pointer-checks so it doesn't
delete the NULL checks.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
