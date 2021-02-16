Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C4B31C99F
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 12:25:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0747386BA2;
	Tue, 16 Feb 2021 11:25:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ODlwpKPHgFHs; Tue, 16 Feb 2021 11:25:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CAF7986B66;
	Tue, 16 Feb 2021 11:25:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1C5D91BF589
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 11:25:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 186026F4B7
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 11:25:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rIvL1bQgi1hY for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 11:25:22 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 643286F53A; Tue, 16 Feb 2021 11:25:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5DABE6F4B7
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 11:25:20 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11GBOwgM080541;
 Tue, 16 Feb 2021 11:25:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=SHPi0JGtHk2TugeLKXaqq1aNQIOOLUL6sSsRPZoosQ0=;
 b=YBigzVeJDFqramLcR8OiFyyY1fjmWUkd0oZr5pAxWZrzIszFTLFPhdEkofutC1uVO3mS
 3IKJ432TnTpFp2SsISAUJkFegvdvaaQIbeur00fPSqoXAzQq7rv6hxcUBNM+FsZ1AO7+
 mXNFRfH5th8MTfCjEJ6UM7flb4TafI1c5k6u/8qKVyIk35GAiOnaIWBQI3T5eMOM/pLx
 XlEMNyR3cu9jDkzCNJlvZd/8fcpRTBseULp+rGdPHxdz3lfP7gJ/ws/g9ya9u4O/LpNv
 TETxcgTDs74VhgYNTgLhZN9gma9ewaX2gFkaU2uNmVbIUX7JuLEQ2XC+44XE8u/LLzL3 VQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 36p66qxgp9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Feb 2021 11:25:19 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11GBK5Wl020207;
 Tue, 16 Feb 2021 11:25:18 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 36prpwnt77-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Feb 2021 11:25:17 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 11GBPE0N014827;
 Tue, 16 Feb 2021 11:25:14 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 16 Feb 2021 03:25:13 -0800
Date: Tue, 16 Feb 2021 14:25:07 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Du Cheng <ducheng2@gmail.com>
Subject: Re: [PATCH v2] staging: greybus: fix coding style of
 greybus/loopback.c
Message-ID: <20210216112507.GZ2087@kadam>
References: <20210216111353.190238-1-ducheng2@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210216111353.190238-1-ducheng2@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9896
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxlogscore=999
 phishscore=0 adultscore=0 mlxscore=0 suspectscore=0 malwarescore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102160105
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9896
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 suspectscore=0
 impostorscore=0 priorityscore=1501 clxscore=1011 spamscore=0 mlxscore=0
 phishscore=0 malwarescore=0 bulkscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102160106
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 16, 2021 at 07:13:53PM +0800, Du Cheng wrote:
> fix macro gb_loopback_stats_attrs by wrapping its multi-line definition
> inside a do {} while(0) block, in compliance to scripts/checkpatch.pl.
> 
> Signed-off-by: Du Cheng <ducheng2@gmail.com>
> ---
> changes v2:
> * relign backslashes with tabstop=8
> * improve description and subject
> 
> changes v1:
> * fix coding style of the macro
> 

This breaks the build.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
