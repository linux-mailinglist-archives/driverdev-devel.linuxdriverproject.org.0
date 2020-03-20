Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0818918CC24
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 12:05:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE0B086E3F;
	Fri, 20 Mar 2020 11:05:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oySpu9mL6-CK; Fri, 20 Mar 2020 11:05:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 88B7486AD1;
	Fri, 20 Mar 2020 11:05:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B67121BF300
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 11:05:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B356388ABC
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 11:05:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pghFy8oq9-WP for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:05:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 28AD288A5F
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 11:05:04 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02KAqoZr172799;
 Fri, 20 Mar 2020 11:05:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=o4Vz3fMAmZkMeyHbxS+8hpupOxZL84r2sZTkvZwv2TA=;
 b=aPld3xt5QB1tpf0S/l/XsymqRbglqGjRO/SKdGikGwgD8wITajZ4PXrRdOJjhpOzS7JS
 1NU6Bva/U6V1XS4SETE8zju1M/4muLci4WAp5CZpTZq32thu/0xQKErY1z+FGr7lzjFz
 0NQ5z64Dv0FrYeTaXwRBfFdcJlKaeaKrZmBiib0Qd8yVDZ9ccuolQGe+K0MQGlXxDE0Q
 68UzIXJimCctD5OS+il9KKCNbvq3zZVW/c0T5lnnqiSG37K0Q+n/+BOkAB0eZRyZxOSJ
 de/bkYlpndGjHTbvFDr/cq08GT68SynL9Xka6qiymek7TLHBn6FDedXvkntHRUbCIPP8 Tw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2yrq7mcxyw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 20 Mar 2020 11:05:03 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02KAq1A7150692;
 Fri, 20 Mar 2020 11:05:02 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2ys92q5hdn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 20 Mar 2020 11:05:02 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 02KB51rl025349;
 Fri, 20 Mar 2020 11:05:01 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 20 Mar 2020 04:05:00 -0700
Date: Fri, 20 Mar 2020 14:04:53 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Camylla Cantanheide <c.cantanheide@gmail.com>
Subject: Re: [PATCH 2/2] staging: rtl8192u: Corrects 'Avoid CamelCase' for
 variables
Message-ID: <20200320110453.GA4672@kadam>
References: <20200317085130.21213-1-c.cantanheide@gmail.com>
 <20200317085130.21213-2-c.cantanheide@gmail.com>
 <20200317134329.GC4650@kadam>
 <ee182711405229e85b5b5a44c683d5a2609b5ba3.camel@perches.com>
 <CAG3pEr+9tuSYw==qgp3J8r--SdAd8DBMNQqSHCZQc-mkVVuE6w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG3pEr+9tuSYw==qgp3J8r--SdAd8DBMNQqSHCZQc-mkVVuE6w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9565
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=999
 mlxscore=0 spamscore=0 bulkscore=0 adultscore=0 suspectscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003200048
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9565
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 suspectscore=0
 adultscore=0 bulkscore=0 mlxlogscore=999 priorityscore=1501 clxscore=1015
 malwarescore=0 mlxscore=0 phishscore=0 impostorscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003200048
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
Cc: Joe Perches <joe@perches.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 lkcamp@lists.libreplanetbr.org, devel@driverdev.osuosl.org,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Mar 18, 2020 at 02:31:27PM -0300, Camylla Cantanheide wrote:
> Dear Dan Carpenter and Joe Perches,
> 
> Thank you very much for the suggestions, I found the evaluation of both
> very significant. Now, I have another perspective on variables.
> 
> I solved the problem for the *setKey *function, however, when executing the
> checkpatch, more *Checks* of the same type appeared.

If your changed introduces more warnings then you should fix them.  Like
say you rename variables and now the line goes over 80 characters, then
fix the new 80 character warning.  But if it was already over 80
characters then ignore the warning.

> 
> Should I send the second version of the patch, only to the *setKey*
> function or do I resolve all *Checks* for the entire file?

We want patches which are easy to review.  If you change everything in
the file, it will probably be too complicated for me to review.  So I
guess ignore those warnings.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
