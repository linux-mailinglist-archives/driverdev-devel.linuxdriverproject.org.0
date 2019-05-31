Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D890030B8F
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 May 2019 11:31:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD66986936;
	Fri, 31 May 2019 09:31:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pBVs4IJtHyRn; Fri, 31 May 2019 09:31:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9A361868C9;
	Fri, 31 May 2019 09:31:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2326B1BF403
 for <devel@linuxdriverproject.org>; Fri, 31 May 2019 09:31:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1DC768836A
 for <devel@linuxdriverproject.org>; Fri, 31 May 2019 09:31:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e1bBQze6LddL for <devel@linuxdriverproject.org>;
 Fri, 31 May 2019 09:31:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A620E8835E
 for <devel@driverdev.osuosl.org>; Fri, 31 May 2019 09:31:05 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4V9TihV061840;
 Fri, 31 May 2019 09:31:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=EFwZBEfXbFIufaKPxCs2VTsN/KOOpo8eQyNgYCkGcK8=;
 b=MEO9MI6r2vT8Esf7s0LnOnHOrFgcFK9SlkeJk6gLdVjh3SDkUBj09vShKXQjysCWsP8D
 OE+LRV4HP4iOOEj03WkTVXQxbUcZbEh7PlKL5BqdvPQPqNxFz0DVtIE/Oi7LXgxtgCEd
 gDvf5/M3NwXZD+y124Vp3kyptw8mIMblp1/fmOuE3iiVRgIW/JnRB8iyxk5LnULerixo
 oeObOs75oQWKhwkQhJ+iiH9nhAZZJhAYGcEvivf+UN7/ZVJvvhPZXBbm8/Sb/64/KWrR
 rhUt1XIPM4dTUE332AWJj5ze7JtRcv46pMNLMoj25ngJIw6cQP1luVxvzFVbU9MvxxAw mA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2spxbqn1qy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 31 May 2019 09:31:03 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4V9UTxP006825;
 Fri, 31 May 2019 09:31:02 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2sqh74sj9p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 31 May 2019 09:31:02 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4V9V0Yi017040;
 Fri, 31 May 2019 09:31:00 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 31 May 2019 02:30:59 -0700
Date: Fri, 31 May 2019 12:30:50 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] staging: rtl8712: ieee80211.c: Remove leading p from
 variable names
Message-ID: <20190531093050.GD31203@kadam>
References: <20190530210359.30284-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530210359.30284-1-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9273
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905310062
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9273
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905310062
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
Cc: florian.c.schilhabel@googlemail.com, devel@driverdev.osuosl.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, yangx92@hotmail.com,
 colin.king@canonical.com, larry.finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 31, 2019 at 02:33:59AM +0530, Nishka Dasgupta wrote:
> Remove leading p from the names of the following pointer variables:
> - pregistrypriv
> - pdev_network
> - pie
> - pbuf.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
