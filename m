Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 749B633E8D6
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 06:15:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 174E74ED17;
	Wed, 17 Mar 2021 05:15:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q1zvreuG1veF; Wed, 17 Mar 2021 05:15:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D02C84ECCB;
	Wed, 17 Mar 2021 05:15:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A48A71BF866
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 05:14:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 93D994305F
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 05:14:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A2rGER3lMTVB for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 05:14:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EDA4642FC1
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 05:14:54 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12H5DbO8152207;
 Wed, 17 Mar 2021 05:14:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=5rBSFsuz9Ootk2SK7oMUt2810Ur6oS46b7vpQlumXqQ=;
 b=JRW2PjKtgmw+q9aPEs/2zQ3aU5io0C+id0bx8BYRlRaJiwhQjCgvbhX8jN7yktUYjZri
 Jmt7PaQHb3i7kJgXhZ0EI+SBmyrmHv7ulbPaA0disNYV/DZZP69NCHSBdDuaa1WYxLve
 BKxoNlPflkCZna5CrgESEWn+bMRXkt/8X37w61buhFHKbSg4vKXGaouzr3v9xi7Ran/D
 JTzGDCBSPIkK2zG2qfpBMkMIl3GhE5W+7sJiCpqaiLZj2NERq//z1MTVfkgdEmpAbFcr
 Yzso8SwtVj0nnlbKjFXM+A4WAS8r9csbRxGFKZWkwR9LrRBKzZnAuGu+l4jSRFI77ge7 Tw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 378p1ntrva-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Mar 2021 05:14:49 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12H59niG011400;
 Wed, 17 Mar 2021 05:14:47 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 3797a24p0x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Mar 2021 05:14:47 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 12H5EYtv014394;
 Wed, 17 Mar 2021 05:14:36 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 16 Mar 2021 22:14:33 -0700
Date: Wed, 17 Mar 2021 08:14:26 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Tong Zhang <ztong0001@gmail.com>
Subject: Re: [PATCH] staging: comedi: das800: fix request_irq() warn
Message-ID: <20210317051426.GX2087@kadam>
References: <92b7c57b-b645-9965-8157-4ca76a803cba@mev.co.uk>
 <20210316224227.348310-1-ztong0001@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210316224227.348310-1-ztong0001@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9925
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 adultscore=0 spamscore=0
 mlxlogscore=999 bulkscore=0 malwarescore=0 phishscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103170040
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9925
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 suspectscore=0 adultscore=0
 spamscore=0 clxscore=1011 phishscore=0 malwarescore=0 priorityscore=1501
 bulkscore=0 mlxlogscore=999 lowpriorityscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103170040
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
 linux-kernel@vger.kernel.org, Ian Abbott <abbotti@mev.co.uk>,
 "Alexander A. Klimov" <grandmaster@al2klimov.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 16, 2021 at 06:42:26PM -0400, Tong Zhang wrote:
> request_irq() wont accept a name which contains slash so we need to
> repalce it with something else -- otherwise it will trigger a warning
  ^^^^^^^
I don't normally comment on spelling mistakes in the commit message but
you're copy and pasting "repalce" over and over...

> and the entry in /proc/irq/ will not be created
> since the .name might be used by userspace and we don't want to break
> userspace, so we are changing the parameters passed to request_irq()


regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
