Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7715F278DF
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 11:09:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6C27388120;
	Thu, 23 May 2019 09:09:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FY8pWEvaslR6; Thu, 23 May 2019 09:09:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF55F880E7;
	Thu, 23 May 2019 09:09:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 58A3C1BF422
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 09:09:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 550FD84D41
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 09:09:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dIdDxm9ORRau for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 09:09:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 41E198667D
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 09:09:36 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4N94HbX116460;
 Thu, 23 May 2019 09:09:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=cK+Er+gj5m4HRHUWLjAKmLrmA+e9WKEZxpkr8Dvt0+s=;
 b=JBJ9ZmfCpvpy/aqwU3vAJ65BOLRE96242YjlyNDeTjJYwXgjF6Gq3NcwufG9J4dNwlGU
 0a00Z1AYlNFcywHouYsBNLKBs3vd6/CMgEIyPHrFgzyg6Q2gzjIcmchp/YXym3TXeF50
 JWLOCtOEf+EK+2k772swyr8U5YGf2q41BuuBHmV5FWzLVv8M5jHYF4zGIIroiF69hhey
 SYJb0k9PtqaW76zRdd42YJ+s1pyevFHK06L4+GLv+OA+aO7J2tId8DFuxz8XFoGFot4H
 OeXvI83U3GSlQQKVoevcaq4OaHMJ4vhn2LFO2ndqCJX/7T7LddUCSWuZGUcWxDpzR4Oe Vg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2smsk5gytf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 May 2019 09:09:30 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4N999XX136260;
 Thu, 23 May 2019 09:09:29 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2smshf4f7t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 May 2019 09:09:29 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x4N99QA6001722;
 Thu, 23 May 2019 09:09:26 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 23 May 2019 09:09:25 +0000
Date: Thu, 23 May 2019 12:09:18 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jeremy Sowden <jeremy@azazel.net>, Sven Van Asbroeck <TheSven73@gmail.com>
Subject: Re: [PATCH] staging: fieldbus: anybuss: Remove unnecessary variables
Message-ID: <20190523090918.GU31203@kadam>
References: <20190523063504.10530-1-nishka.dasgupta@yahoo.com>
 <20190523072220.GC24998@kroah.com>
 <b8cc12d9-2fe3-754b-be08-f23055a31ffe@yahoo.com>
 <20190523082702.GB28231@azazel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523082702.GB28231@azazel.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9265
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=673
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905230065
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9265
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=708 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905230065
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
Cc: devel@driverdev.osuosl.org, Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
 linux-kernel@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 23, 2019 at 09:27:02AM +0100, Jeremy Sowden wrote:
> On 2019-05-23, at 13:51:18 +0530, Nishka Dasgupta wrote:
> > On 23/05/19 12:52 PM, Greg KH wrote:
> > > On Thu, May 23, 2019 at 12:05:01PM +0530, Nishka Dasgupta wrote:
> > > Also, you forgot to cc: Sven on this patch, please always use the output
> > > of scripts/get_maintainer.pl.
> >
> > Which arguments should I use? If I use --nokeywords, --nogit,
> > --nogit-fallback and --norolestats then only your name and the two
> > mailing lists show up.  (Also, regarding the mailing lists: every mail
> > sent to linux-kernel@vger.kernel.org is bouncing; should I not send to
> > that list anymore?)
> 
> He is listed in the TODO:
> 
>   $ cat drivers/staging/fieldbus/TODO
>   TODO:
>   -Get more people/drivers to use the Fieldbus userspace ABI. It requires
>    verification/sign-off by multiple users.
> 
>   Contact: Sven Van Asbroeck <TheSven73@gmail.com>

Sven, you should add yourself to the MAINTAINERS file.

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
