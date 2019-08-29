Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56601A1E30
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 17:00:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7C35D883B8;
	Thu, 29 Aug 2019 15:00:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HDKVeDXquvpW; Thu, 29 Aug 2019 15:00:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B653C883CF;
	Thu, 29 Aug 2019 15:00:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D35E91BF855
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 15:00:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CFD8120497
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 15:00:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mriFiklg5lzw for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 15:00:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 424EA2043F
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 15:00:41 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7TEsdQQ152875;
 Thu, 29 Aug 2019 15:00:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=rEPWuWUZ3FXXjNNG73REC4YN3YpRpdICbwGFOhGEwdY=;
 b=ay+58NQA9Tn6f6p8w5En8T8GLyxHaPxMv3mq++8aStebGvDFw5dAwKX7ewmzf5lbHiMT
 6Ggd0a6Ak/2DZlFDxLbuFUvDqkM08CyU9f5Q/QDjjHBjLHLdVlaOQEmYYSFsErEyDZSG
 0jPK9VZBD8fmvnAjNCF9em6eXHaYkx5cVNkzMpfiYBn2y50YQ1OqdtXxKM916Jqhykhx
 9nJos3E5m30tuEmqlZvSrLaif9/eU7bIOQvlLahvNdmQnbGefPtdj0Nptj0ygsZOd5pE
 OdDDCIEOuNAhbe9P/zWIw+oJMEAj+hxO2KKAoYgxua30ReCSMnn8++DkjOeR1GcVUKyT 5g== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2upgr7853g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 29 Aug 2019 15:00:39 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7TEr39P169824;
 Thu, 29 Aug 2019 15:00:38 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2upc8ut25y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 29 Aug 2019 15:00:38 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x7TF0Vlt022355;
 Thu, 29 Aug 2019 15:00:32 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 29 Aug 2019 08:00:31 -0700
Date: Thu, 29 Aug 2019 18:00:23 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH] staging: erofs: using switch-case while checking the
 inode type.
Message-ID: <20190829150023.GH23584@kadam>
References: <20190829130813.11721-1-pratikshinde320@gmail.com>
 <20190829135607.GA195010@architecture4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829135607.GA195010@architecture4>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9363
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908290163
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9363
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908290163
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
 linux-erofs@lists.ozlabs.org, Pratik Shinde <pratikshinde320@gmail.com>,
 yuchao0@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 29, 2019 at 09:56:07PM +0800, Gao Xiang wrote:
> Hi Pratik,
> 
> On Thu, Aug 29, 2019 at 06:38:13PM +0530, Pratik Shinde wrote:
> > while filling the linux inode, using switch-case statement to check
> > the type of inode.
> > switch-case statement looks more clean.
> > 
> > Signed-off-by: Pratik Shinde <pratikshinde320@gmail.com>
> 
> No, that is not the case, see __ext4_iget() in fs/ext4/inode.c.

Unnecessary complaining.

> and could you write patches based on latest staging tree?
> erofs is now in "fs/" rather than "drivers/staging".
> and I will review it then.
> 
> p.s. if someone argues here or there, there will be endless
> issues since there is no standard at all.

More complaining...  It doesn't matter if you can find ext4 that looks
like dog poop, that's irrelevant.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
