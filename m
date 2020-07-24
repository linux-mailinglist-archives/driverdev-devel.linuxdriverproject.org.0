Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5826A22C395
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 12:47:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3D39486130;
	Fri, 24 Jul 2020 10:47:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Kns6ojGbjtV; Fri, 24 Jul 2020 10:47:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 377F185FA0;
	Fri, 24 Jul 2020 10:47:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7C5631BF2C2
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 10:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 79097883FD
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 10:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ULcWY438Mvi1 for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 10:47:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D082A883ED
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 10:47:32 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06OAlVP0035225;
 Fri, 24 Jul 2020 10:47:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=V7UTj6pGG4terJJFtG5oz1kiiwdHooz6JHEg0pNxRUA=;
 b=Nl3t6cYnYWP4Kq47QXM2ueSYx80KTMZlb3CIaZIzRxyVZEeY1wSt7C5NdiN48YwH34PH
 Zjqx7+LpBedvfrKxboy52mpRRzf6YGJdaKLD41SRgyxOX0byiM0z4TsDpnWhVVlg8ky9
 CzHnftHKUF9MzjoIz1g+B42UR0ZBVZubK4NeEa5V0F/I69zxuew5q0bTy/y3SFzVnpBq
 zW4uTznQHxJZ5VqXGGoUZbzRC5LJcVOEKgmyTZtYaKyxy9FNQagw9Bp4LbdOLC6WuryZ
 zqpL87PNTFY9nrpNg4RtRaiOcEM5r4YOHLjrHggm6s0xpamGSSaA5X16OGx4J2WugmVT 9A== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 32bs1mxf8t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 24 Jul 2020 10:47:31 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06OAgROR014698;
 Fri, 24 Jul 2020 10:45:31 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 32fsr74pn7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 Jul 2020 10:45:31 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 06OAjUjr030696;
 Fri, 24 Jul 2020 10:45:30 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 24 Jul 2020 10:45:29 +0000
Date: Fri, 24 Jul 2020 13:45:24 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Muhammad Usama Anjum <musamaanjum@gmail.com>
Subject: Re: [PATCH] staging: octeon: Indent with tabs instead of spaces
Message-ID: <20200724104524.GT2549@kadam>
References: <20200722171950.GA6176@PKL-UANJUM-LT.pkl.mentorg.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200722171950.GA6176@PKL-UANJUM-LT.pkl.mentorg.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9691
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 suspectscore=0
 bulkscore=0 mlxscore=0 spamscore=0 adultscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2007240081
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9691
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 bulkscore=0 adultscore=0
 lowpriorityscore=0 mlxlogscore=999 malwarescore=0 clxscore=1011
 spamscore=0 mlxscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007240082
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 22, 2020 at 10:19:50PM +0500, Muhammad Usama Anjum wrote:
> Remove a coding style error. It makes code more readable.
> 
> Signed-off-by: Muhammad Usama Anjum <musamaanjum@gmail.com>
> ---

This isn't a part of the official style guide so the original is fine.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
