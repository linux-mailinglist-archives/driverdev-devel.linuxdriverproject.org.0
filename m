Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E73581B0802
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Apr 2020 13:50:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E2FFF87C20;
	Mon, 20 Apr 2020 11:50:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2HKBnHbiZL52; Mon, 20 Apr 2020 11:50:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 494E287532;
	Mon, 20 Apr 2020 11:50:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E7FD21BF429
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 11:50:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E1DAD87532
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 11:50:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BB2h+Ok44Isu for <devel@linuxdriverproject.org>;
 Mon, 20 Apr 2020 11:50:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 224F386F85
 for <devel@driverdev.osuosl.org>; Mon, 20 Apr 2020 11:50:54 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03KBmReK180764;
 Mon, 20 Apr 2020 11:50:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=s2LVxJ+JZrr/smGblvIHLVLe9Ff645vXk6rZ9nwVGHk=;
 b=BvqWTbbdwCaJNEcQvWj7f5O3DBXF1OR7xWgCcOOZCRnaBe2TuyBK7s0jB4C25hc2BHz9
 8aIvdGzlvkv6tvEJ8FuHPuexzSeSL6vdqtlYOY+F7oggBxFpIh0lHfwiYh1QBMD3gtbB
 +UQXFZpUPNOxbqhEnOi9cd0DQ9QmlALdbiE4I9TfY0M7tghW1Yu2YidUnYqSA8ufq3SI
 OEf1uk+Y6cu3zZCPXHZ4j+XlPVBqc38vB+APR0rRNCXyLdQyrGGvc9HCxJ3JozG8z+3L
 tzqb1CgMeg6ux3lA+fYyMMGZEEt/4LPczgoQX/u/8RluWQu4eyrCDZ357mzk/CuSOcbq 5g== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 30fsgkpq1g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 20 Apr 2020 11:50:53 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03KBlUpN017851;
 Mon, 20 Apr 2020 11:50:52 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 30gb3qaej3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 20 Apr 2020 11:50:52 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 03KBoo16019766;
 Mon, 20 Apr 2020 11:50:51 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 20 Apr 2020 04:50:50 -0700
Date: Mon, 20 Apr 2020 14:50:44 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: carlosteniswarrior@gmail.com
Subject: Re: [PATCH 2/2] Staging: rtl8188eu: core: rtw_pwrctrl: fixed a
 coding style issue
Message-ID: <20200420115044.GB2659@kadam>
References: <20200419082122.17202-1-carlosteniswarrior@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419082122.17202-1-carlosteniswarrior@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9596
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 spamscore=0 adultscore=0
 mlxlogscore=874 phishscore=0 suspectscore=1 bulkscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004200106
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9596
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 priorityscore=1501
 lowpriorityscore=0 mlxlogscore=947 malwarescore=0 clxscore=1011
 spamscore=0 bulkscore=0 phishscore=0 suspectscore=1 impostorscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004200106
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
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Where is patch 1/2?

On Sun, Apr 19, 2020 at 10:21:22AM +0200, carlosteniswarrior@gmail.com wrote:
> From: porfavorde <carlosteniswarrior@gmail.com>
        ^^^^^^^^^^

Fix your name.


> 
> Fixed a checkpatch.pl warning: the constant should be in
> the right side of the comparison.
> 
> Signed-off-by: porfavorde <carlosteniswarrior@gmail.com>
                 ^^^^^^^^^^
And here as well.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
