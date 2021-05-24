Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A053938E30D
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 May 2021 11:12:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21DA383404;
	Mon, 24 May 2021 09:12:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WMwNDUDmteya; Mon, 24 May 2021 09:12:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 53FF48336D;
	Mon, 24 May 2021 09:12:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2421B1BF3EE
 for <devel@linuxdriverproject.org>; Mon, 24 May 2021 09:12:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1FF9E60643
 for <devel@linuxdriverproject.org>; Mon, 24 May 2021 09:12:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tp6W1XgWgy58 for <devel@linuxdriverproject.org>;
 Mon, 24 May 2021 09:12:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C227E60632
 for <devel@driverdev.osuosl.org>; Mon, 24 May 2021 09:12:44 +0000 (UTC)
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 14O9AgnZ026238; Mon, 24 May 2021 09:12:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=B2NQY/rb3adkimkoh3RXj+yiuWT15Tuo2SP18V8xQw4=;
 b=R0mBYFCAQt1weAn+UceofeRJaD1oPYNeWqMVKezbdStDKRnFKGu3HFfkcXv2cBN+iABi
 nZ1ErHN/QK96yDztzyggoFyLpWo+ma0rdndvRdE0M2mLtTcStaXk5ppYYyca700QTNeU
 eGKUakyya45Mm+JD4eNADCwZ36Q5b25F41MjreA87lBOamIkU60PfDh8vhiV14VCLpWB
 0FkSuWsErLElNpRpb34OvWOsV2GqbRAFVEyb3M0rokJKi1+fem/h9jt1IF42OgZ9G1Uh
 cwF0p5PTe8pCAbe8Y8YHCi/Nu9hqHUq1QFRTicRdwrRho+J8B5ie91KF0ZlzBbTTj5EY 3Q== 
Received: from oracle.com (userp3030.oracle.com [156.151.31.80])
 by mx0b-00069f02.pphosted.com with ESMTP id 38r1bdr4r1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 May 2021 09:12:43 +0000
Received: from userp3030.oracle.com (userp3030.oracle.com [127.0.0.1])
 by pps.podrdrct (8.16.0.36/8.16.0.36) with SMTP id 14O9CgvB080448;
 Mon, 24 May 2021 09:12:42 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by userp3030.oracle.com with ESMTP id 38pq2t4q4j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 May 2021 09:12:42 +0000
Received: from userp3030.oracle.com (userp3030.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 14O9Cfus079697;
 Mon, 24 May 2021 09:12:41 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 38pq2t4q42-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 May 2021 09:12:41 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 14O9Cedp032070;
 Mon, 24 May 2021 09:12:40 GMT
Received: from kadam (/41.212.42.34) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 24 May 2021 09:12:40 +0000
Date: Mon, 24 May 2021 12:12:34 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Donggyu Kim <a29661498@gmail.com>
Subject: Re: [PATCH] Fixed a coding style issue - missing a blank line after
 declarations
Message-ID: <20210524091234.GN1955@kadam>
References: <20210523012151.3873-1-a29661498@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210523012151.3873-1-a29661498@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-ORIG-GUID: agKu31rCMYCZtr06mOHGPG7bdURj1NL_
X-Proofpoint-GUID: agKu31rCMYCZtr06mOHGPG7bdURj1NL_
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, May 23, 2021 at 10:21:51AM +0900, Donggyu Kim wrote:
> Signed-off-by:Donggyu Kim <a29661498@gmail.com>

The subject needs a subsystem prefix, the subject is too long, and there
is no commit message.  Run scripts/checkpatch.pl on your patches.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
