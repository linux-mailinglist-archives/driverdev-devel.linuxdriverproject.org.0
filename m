Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3057A31F687
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 10:26:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C8E0987067;
	Fri, 19 Feb 2021 09:26:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t6Y4MJAz9nm4; Fri, 19 Feb 2021 09:26:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9171F86FFB;
	Fri, 19 Feb 2021 09:26:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E1A31BF853
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 09:26:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9ACE286FFB
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 09:26:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kTyVN4FuUd3c for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 09:26:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EF32186E2E
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 09:26:43 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11J9OqRU022352;
 Fri, 19 Feb 2021 09:26:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=+jSkHsONTkTAseVQX+sbaAc6sHzUxCQX5x/sMxZIGnw=;
 b=VWWO5tkc6ARoeLA2pZ2HJX/Cx2EZlcWKG94D1ZVPy5oY2slSwJQDd3DcGSq3gaQfdh8Q
 QeoFEOPKQtEacgT1TPVKpHYXV9CaZljb2iGe7+RNzQL4lljkGVbKgjWA474ccJ3APoZQ
 FUKiXCh8qPWm9AyBfRvX2wd1CQ6R58lZ7PFb4Gkl6KcYslQdTh2KI8lVclm4HctnGaE9
 fuCBAXhczlwXtJ9OWbhoyjbVL68aPu+buKitrHX4chhXarzuhyS8yXnsehhaemqlMOYY
 1zKA4IM7vAJkkNJl7YylOqINM2DyLuL+HQn5hWIdQsb4tNalFBgJurhd8ghM9dWQAUSd sA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 36p49bgxhu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Feb 2021 09:26:38 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11J9KVhH115387;
 Fri, 19 Feb 2021 09:26:36 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 36prbrxcvr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Feb 2021 09:26:36 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11J9QX7b022082;
 Fri, 19 Feb 2021 09:26:33 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 19 Feb 2021 01:26:32 -0800
Date: Fri, 19 Feb 2021 12:26:21 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: David Laight <David.Laight@ACULAB.COM>
Subject: Re: [PATCH] staging: comedi: cast to (unsigned int *)
Message-ID: <20210219092621.GU2087@kadam>
References: <20210217165907.9777-1-atulgopinathan@gmail.com>
 <YC1T06VCh0K2BBW5@kroah.com> <20210217181000.GB10124@atulu-ubuntu>
 <YC1fzjVOwiqzO1nb@kroah.com>
 <3cfef23d-8d4a-205c-61e8-cbe8c9a0c0f4@mev.co.uk>
 <21a953261eb44e7ba302cfe74d8efa2d@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <21a953261eb44e7ba302cfe74d8efa2d@AcuMS.aculab.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9899
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 spamscore=0 mlxscore=0
 phishscore=0 adultscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102190073
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9899
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 impostorscore=0 mlxlogscore=999
 adultscore=0 malwarescore=0 phishscore=0 clxscore=1011 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102190073
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
 Greg KH <gregkh@linuxfoundation.org>, 'Ian Abbott' <abbotti@mev.co.uk>,
 Atul Gopinathan <atulgopinathan@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 19, 2021 at 09:03:59AM +0000, David Laight wrote:
> > It's kind of moot anyway because the patch is outdated.  But the reason
> > for the ___force is that the same `struct comedi_cmd` is used in both
> > user and kernel contexts.  In user contexts, the `chanlist` member
> > points to user memory and in kernel contexts it points to kernel memory
> > (copied from userspace).
> 
> Can't you use a union of the user and kernel pointers?
> (Possibly even anonymous?)
> Although, ideally, keeping them in separate fields is better.
> 8 bytes for a pointer isn't going make a fat lot of difference.
> 

Creating a union is worse than adding casts.  With the casts, at least
you know that you're doing something dangerous.  It's good that it looks
scary because it is scary.

Keeping them in separate fields is a good idea, but this is part of the
user space API so it's not possible.

The best we can do is adding some more comments so people know why we
are doing the scary casts.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
