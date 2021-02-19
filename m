Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2109331F544
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 08:02:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0379E86FFE;
	Fri, 19 Feb 2021 07:01:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vtXK22-fFlyp; Fri, 19 Feb 2021 07:01:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5491D86FDC;
	Fri, 19 Feb 2021 07:01:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 81B931BF857
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 07:01:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6E0F0605F3
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 07:01:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BxyqQexV_b2R for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 07:01:53 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id C0E6F60689; Fri, 19 Feb 2021 07:01:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 73F34605F3
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 07:01:52 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11J701uF003546;
 Fri, 19 Feb 2021 07:01:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=1ceI6DD+xmiJ0cdTdA9pJd22cFRKfq1rVJZSzsVyRBM=;
 b=yODk4U5fd2Dp0rMAh+wgA7J/TgiTGoNjFTli0nVuEc4B63rN9sreO+Jrr2lfO6plv+ck
 hSv7cnAYw5tslmpg51HbO7WSvlR1NhcxEMALWfkHhC9htNfdgUbgwOj7Krry6VrWx8/Z
 HGC8qdxH8kZxHF4TBbk1s3FXgyu8a8CeUhPzjOgLJp8QiVkbGvUv+4ROSgTfWYF5kt50
 jTUjwmEDaZfHR+1GROG54O00eKwvkskKV8KcJVxEkuJ7OHSRrmE5h9O/hIP+eZGmROIf
 L0sh/zSQ/y3WUbYCCGFDDAfl4VZu7Qd92J8cCL2BgUTC2z53zhv0UrDsifB8uDJzhPVO 8Q== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 36pd9afyeh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Feb 2021 07:01:51 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11J70NKl061495;
 Fri, 19 Feb 2021 07:01:49 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 36prp2jk1p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Feb 2021 07:01:49 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11J71mdE014345;
 Fri, 19 Feb 2021 07:01:48 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 18 Feb 2021 23:01:48 -0800
Date: Fri, 19 Feb 2021 10:01:40 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kurt Manucredo <fuzzybritches@protonmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: make if-statement checkpatch.pl
 conform
Message-ID: <20210219070139.GP2222@kadam>
References: <20210218194830.8-1-fuzzybritches@protonmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210218194830.8-1-fuzzybritches@protonmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9899
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxlogscore=999
 bulkscore=0 suspectscore=0 spamscore=0 malwarescore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102190051
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9899
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 impostorscore=0
 mlxscore=0 phishscore=0 mlxlogscore=999 spamscore=0 bulkscore=0
 priorityscore=1501 malwarescore=0 suspectscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102190051
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
Cc: devel@driverdev.osuosl.org, tiwai@suse.de, gregkh@linuxfoundation.org,
 d.straghkov@ispras.ru, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 18, 2021 at 07:50:27PM +0000, Kurt Manucredo wrote:
> Signed-off-by: Kurt Manucredo <fuzzybritches@protonmail.com>
> ---
> 
> The preferred coding style is:
> 	if (!StaAddr)
> 	return;

Above the Signed-off-by line.  Also indenting is wrong.  And it's hard
to understand what you're saying.

> 
> thank you mr. dan carpenter

You're welcome.  (These sorts of comments do go below the --- cut off
line so that's fine.)

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
