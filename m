Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D74CD1088
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 15:48:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 597B3878D0;
	Wed,  9 Oct 2019 13:48:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dNRVk9iXls94; Wed,  9 Oct 2019 13:48:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C53C1878A9;
	Wed,  9 Oct 2019 13:48:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2D0811BF2B4
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 13:48:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 288AF20781
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 13:48:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EZXcpv60BmZr for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 13:48:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id 9789D204FC
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 13:48:26 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x99DhZ2s020010;
 Wed, 9 Oct 2019 13:48:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=u69WN2OYq9Hoegb6GpC00xlXp8jJWHo+5yjfO3vbZyA=;
 b=pFfdqM8r8//e9R9DmmZ2HMnNjvcNPgxkJbaquU2dRo6XrWiXoBkhr4/9ymGOgveHmL7I
 4tIYNZfhRy4r/eIdklMUC/toZzZw+p/GxDcq21PtV69xoDZxoRm4o5D7SFa2Tbx+cIl2
 kfpIuNYYkBEXCh7buk7sZyhxbKqVRL8UQUdXaEmyP8pyARvWTqFhCI/kJ4lc3ONirLOt
 JsxO+I3JezHY5JY1GX5hCltg0iFfW6dIbnT+skHCp3hbKnwKzgCDgyZz+xgkf+2wZv8U
 Sb3L8HcJTe09Cxh5VKVqSgxWy0Vf30voCrkBT359PgK5qWFrtvhO4SzoxDZgRP1Ujgwf LQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2vek4qmmqw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 13:48:25 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x99DmJHr055654;
 Wed, 9 Oct 2019 13:48:24 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2vh5can5hm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 13:48:23 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x99DlsYR020009;
 Wed, 9 Oct 2019 13:47:54 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 09 Oct 2019 06:47:53 -0700
Date: Wed, 9 Oct 2019 16:47:43 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: zhengbin <zhengbin13@huawei.com>
Subject: Re: [PATCH v2 0/3] staging: wfx: Make some functions static
Message-ID: <20191009134743.GC13286@kadam>
References: <1570629030-29888-1-git-send-email-zhengbin13@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570629030-29888-1-git-send-email-zhengbin13@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9404
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=834
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910090132
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9404
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=911 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910090131
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

Thanks!

regars,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
