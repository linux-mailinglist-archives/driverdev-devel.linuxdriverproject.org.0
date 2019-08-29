Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DE3A1E47
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 17:04:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 01B6388443;
	Thu, 29 Aug 2019 15:04:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gxgLlzXr3Nda; Thu, 29 Aug 2019 15:04:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4F1F880D2;
	Thu, 29 Aug 2019 15:04:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0B5E41BF487
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 15:04:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 050C4254B3
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 15:04:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wdBGXgM15Upg for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 15:04:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 4920720497
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 15:04:47 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7TEsR3F152665;
 Thu, 29 Aug 2019 15:04:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=HNrV0U3r5Oji5gm9/BcqMxNbR5V7dlwE1BNogc6sOG0=;
 b=dXhh9Da2wdw0OyGSOyV808QwkJcw98Q0sqAfQ9LU2wIdMa+UIpSyt8qESvEr1q8j/09H
 6Gmil8YtFYmavI1MEwJr09DWdCegtHyiHW5nLSegwPWI8CjdO1+7UMzY4tTyjpN9nGuA
 GBmvxSf08D80hQoqDzd7qQ33vMWKoqGaFsFly+KhFXo2RDclmCdk4AFG2/Cy/SnLkjYe
 AVse8O3cVaa28JfvDCKFr/MHtXRDbim53YP0dzNPcrl56CGEyz8dDbteWBaeBQttCo74
 met2n8OEZcEmMHIs+IR+icqGT8ZMpMJ4+M56keGRHqVG8Ml0elemnhQJcTo/NfIGc2+c NA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2upgr78704-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 29 Aug 2019 15:04:46 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7TErZYI080280;
 Thu, 29 Aug 2019 15:04:46 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2unvu04240-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 29 Aug 2019 15:04:45 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x7TF4hKb029478;
 Thu, 29 Aug 2019 15:04:43 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 29 Aug 2019 08:04:43 -0700
Date: Thu, 29 Aug 2019 18:04:36 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH] staging: erofs: using switch-case while checking the
 inode type.
Message-ID: <20190829150436.GI23584@kadam>
References: <20190829130813.11721-1-pratikshinde320@gmail.com>
 <20190829135607.GA195010@architecture4>
 <CAGu0czRasWHj53uF5zAoDRjbxU2sgN6HtazN_9Y-mkK6NjO-LQ@mail.gmail.com>
 <20190829141522.GA15562@architecture4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829141522.GA15562@architecture4>
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
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
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
 Chao Yu <yuchao0@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 29, 2019 at 10:15:22PM +0800, Gao Xiang wrote:
> I am very happy that you send a patch about this, but we have
> to take care of handling "fall through" properly at least,
> and I don't want to introduce some extra compile warnings
> instead at this time.

I can't apply the patch so I maybe missed something.  I don't see
a fall through issue.  We have the code so you could use ^^^^^^^^ to
indicate which lines have a fall through problem.

> 
> EROFS is sensitive for now and I have no idea what the "real"
> point is.

What does "sensitive" mean here?  Now that it's out of staging we
aren't applying clean up patches?

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
