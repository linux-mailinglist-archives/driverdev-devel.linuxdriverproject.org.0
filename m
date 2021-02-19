Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F8F31FDB6
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 18:14:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 01AA58748F;
	Fri, 19 Feb 2021 17:14:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AqoAnAUQiiyn; Fri, 19 Feb 2021 17:14:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0727787478;
	Fri, 19 Feb 2021 17:14:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D1AA41BF577
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 17:14:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CE6DC86C24
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 17:14:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 51cityWQUHi1 for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 17:14:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3904786C19
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 17:14:51 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11JH928T060455;
 Fri, 19 Feb 2021 17:14:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=mmc+9jh3DlnpvQDmKTq0Eb72B6qDkY4YnrhNxDoCtmM=;
 b=lKLeh9R1dirOQZ9cd4AqXSlAVJOX2cVONP9bE9Xg3+2sgCZnv6W5L/2G0YFk99JYze56
 oJqvkYv/9cfQEWewtklSDqG+ITbRQi6X6BU/vwFWppMKO7y3mCn6vjdjGKM9WnSX3Aoy
 cRIsZarq7qJapTyg0nJctf3jPUl1t3PVj4CKc5oFB4udb3biKzRipkzOynSB3QfPoFi0
 LwmvMbBbV4qua6odVW5TmmuqHFK0Jyrua44rj3fE+Bs0dI+g3Sa5PNCInAvvVLSuek+o
 1f1ar1TsoUf8tQvnLFDwWUEVJu3Rjj+LjdF+s6Tyhq8G6EQe7kFPRrux5eduARI0f7xH Jg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 36p66ra8am-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Feb 2021 17:14:50 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11JHEXMr069451;
 Fri, 19 Feb 2021 17:14:48 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 36prbsbq4u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Feb 2021 17:14:48 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11JHEis3005778;
 Fri, 19 Feb 2021 17:14:45 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 19 Feb 2021 09:14:43 -0800
Date: Fri, 19 Feb 2021 20:14:32 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kurt Manucredo <fuzzybritches@protonmail.com>
Subject: Re: [PATCH v2] staging: rtl8723bs: fix code style comparison warning
Message-ID: <20210219171432.GA2087@kadam>
References: <20210219144928.8-1-fuzzybritches@protonmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219144928.8-1-fuzzybritches@protonmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9900
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 spamscore=0 mlxscore=0
 phishscore=0 adultscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102190134
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9900
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 suspectscore=0
 impostorscore=0 priorityscore=1501 clxscore=1015 spamscore=0 mlxscore=0
 phishscore=0 malwarescore=0 bulkscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102190133
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

On Fri, Feb 19, 2021 at 02:50:53PM +0000, Kurt Manucredo wrote:
> 
> 
> changes since previous version:
> - change Subject line
> - change commit message
> - change commit message position to above signed-off-by
> 

These comments need to go below the --- cut off line.

> checkpatch gives the following WARNING:
> WARNING: Comparisons should place the constant on the right side of the test
> this patch fixes the coding style warning.
> 
> Signed-off-by: Kurt Manucredo <fuzzybritches@protonmail.com>
> ---
  ^^^

This one here.

>  drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
