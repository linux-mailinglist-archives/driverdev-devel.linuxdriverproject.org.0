Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE3229AAFE
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Oct 2020 12:37:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 61D818727E;
	Tue, 27 Oct 2020 11:37:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xMafyKAw4BCv; Tue, 27 Oct 2020 11:37:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D28E187186;
	Tue, 27 Oct 2020 11:37:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6CF961BF859
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 11:37:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 694E58718E
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 11:37:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nj-D2CjIMmRD for <devel@linuxdriverproject.org>;
 Tue, 27 Oct 2020 11:37:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6DE6C87186
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 11:37:10 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09RBTYfE107093;
 Tue, 27 Oct 2020 11:37:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=aouPZYz7RHmgR1uBUCoJ/MlA+M3+3yydiD3bS8FR5Us=;
 b=rEVHArto74ziLYsECKdwjKOPZYyjz2vjtnFyN3cmBTYiWMjkriqJfwiHZQ5ydoDq+GNt
 eLfSGw6dcwFNiEoi+s56Kw9G3Ws+iXiDbl4Vyy7inhNYVmkGPiwc4GFjmT+Blks9h+9S
 qgpsuBs3Mev3n0ZDzTbZ/QjU8llDXh35e9YD+CdT8g6I5OnEsw5qhm8KXg4AgMRca6+x
 fPatnE4xKmCg4Fl1wYmWc9T3joGUlSpc1N+2cpmWEECeG7gWGecGi6IWEtkASWlGOAQ2
 JnB3tzMHwUVxr+QCOvF+76qDxkNqFBtSPcL3uzN6kFpSThIdHxf+EmyzFRFZA7ACzwPK tQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 34c9sashwq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 27 Oct 2020 11:37:09 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09RBUV61047945;
 Tue, 27 Oct 2020 11:37:09 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 34cwum97p2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Oct 2020 11:37:09 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 09RBb80h029465;
 Tue, 27 Oct 2020 11:37:08 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 27 Oct 2020 04:37:07 -0700
Date: Tue, 27 Oct 2020 14:37:02 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Elena Afanasova <eafanasova@gmail.com>
Subject: Re: [PATCH] staging/rtl8192u/ieee80211: fix line length exceeds 100
 columns
Message-ID: <20201027113702.GU1042@kadam>
References: <20201020151111.35848-1-eafanasova@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201020151111.35848-1-eafanasova@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9786
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxscore=0 bulkscore=0
 spamscore=0 adultscore=0 malwarescore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010270076
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9786
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 impostorscore=0
 mlxlogscore=999 malwarescore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 phishscore=0 clxscore=1015 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010270076
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 20, 2020 at 08:11:11AM -0700, Elena Afanasova wrote:
> Reported by checkpatch.pl.

The commit message should be considered like an separate thing from the
subject.  On my email client, I normally read either just the subject or
just the commit message.  It looks something like this:

https://lore.kernel.org/driverdev-devel/20201020151748.35937-1-eafanasova@gmail.com/T/#t

Do you see the subject?  It's far away from the commit message.

Here is how I would write this commit message:

Subject: [PATCH] Staging: rtl8192u: split up long lines

Checkpatch complains that these lines are over 100 characters so let's
split them up.

Some people care about verb tenses or whatever but most maintainers
don't.  I don't.  I only care about if I can basically see what you
are changing and why.  This patch doesn't affect runtime, but if it
did, then I would like some comments about what the bug looks like to
the user.  Basically if I can understand the commit message then it's
fine, and obviously "Reported by checkpatch.pl" is not sufficient to
understand what's going on.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
