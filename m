Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CB6E6DA4
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Oct 2019 08:57:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3BD1987089;
	Mon, 28 Oct 2019 07:57:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W1MkNQcR2scy; Mon, 28 Oct 2019 07:57:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3EBC186DEE;
	Mon, 28 Oct 2019 07:57:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C63F1BF425
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 07:57:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 07CDA84B23
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 07:57:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dtLrUhwirpWV for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 07:57:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 765EC844C1
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 07:57:51 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9S7s6n4177032;
 Mon, 28 Oct 2019 07:57:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=jQ6PJCli6p5m7RwQspPzyqTvse7VkcpWcjvd3zOJ4+A=;
 b=HAQhKnprpT+rni6UrLSaaxlllVPKP9qFG9g/DnYovW+Mey13732trRR/riMkNnRM66Fn
 gl7+/0Gc0h4RVBzI/RlvZ5ewCa+Jh8JsFdLxEhMof//9KM4oWmqxuAg6Iu22b74X/Hg5
 b325kHQWHNF2LPUsPxCy7bAdIUu6yqsZlHjduOVuIjVUEkR9w2u6qSeZGqM9IRXopZJT
 tl25BUtCGQvLWQPAl8gIpD1LotwFU0P6kx+GMTjOEkDLAeWyzHqNozAKQHHEKnZHfarK
 PJJOeZcQU6AkeYMFNqBs9JumOrSSdf5aqsQH78Kfl9E5zmX+aFSOgTBx1R/sE+tLebyS jA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2vvumf50na-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 28 Oct 2019 07:57:50 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9S7s07f105156;
 Mon, 28 Oct 2019 07:57:50 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2vw09f7h59-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 28 Oct 2019 07:57:50 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9S7vmEl029995;
 Mon, 28 Oct 2019 07:57:49 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 28 Oct 2019 00:57:47 -0700
Date: Mon, 28 Oct 2019 10:57:38 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
Subject: Re: [RESEND PATCH] staging: gasket: Fix lines ending with a '('
Message-ID: <20191028075738.GC1944@kadam>
References: <20191025232935.GA813@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025232935.GA813@cristiane-Inspiron-5420>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9423
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910280079
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9423
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910280079
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When I see a RESEND in the subject, that means you are tell us we messed
up and accidentally ignored your patch.  So then we have to figure out
what went wrong with the process and so we don't mess up again.

It would help us if you put a note under the --- cut off like "I sent
this a month ago and never received a response.  Here is a link to the
email archive so I know that it made it to the list."

I recently had an issue like this where I complained that my patch
wasn't applied and the maintainer said "Oh.  That's odd.  I have it
written down in patchword that I emailed you to ask you do fix the bug
in a different way."  So these sorts of mistakes happen.

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
