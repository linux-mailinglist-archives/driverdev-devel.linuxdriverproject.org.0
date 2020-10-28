Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9B229CF84
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Oct 2020 11:35:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E5117204E5;
	Wed, 28 Oct 2020 10:35:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H2Cuc3xPVKKE; Wed, 28 Oct 2020 10:35:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0530520414;
	Wed, 28 Oct 2020 10:35:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C324F1BF403
 for <devel@linuxdriverproject.org>; Wed, 28 Oct 2020 10:35:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BC5CD20414
 for <devel@linuxdriverproject.org>; Wed, 28 Oct 2020 10:35:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5YC1UtvZ3yUb for <devel@linuxdriverproject.org>;
 Wed, 28 Oct 2020 10:35:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id E2889203EB
 for <devel@driverdev.osuosl.org>; Wed, 28 Oct 2020 10:35:23 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09SAYjhV164632;
 Wed, 28 Oct 2020 10:35:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=ozdXlFYXaQsb4RcCSPg5tS7ML5aca7VnqAE1SSL3wjA=;
 b=P1GfKVVuy2PBBO0yBlQ5B+bLVaz7tvTTRCvaaknjaUQEA7DlW4ozyJz5VqACPiBu6lZU
 a3606LFOJZq6rlaI8QQCLWynTslU3zc6nJbl+Bi3yWSr/rVWtJhCj4xFBe9QeV6kNfcn
 arlcsL69M7tNHqpEVGU/QVRsYXhqUvV1Rmb+sAL2CsNq7Bq+rLcKkKX2CB8nOnan32rh
 sI+FCxbK8iSZRgY32flh4lhxmpGhDn930X3FSRgC3GaIHlxgyamYN4bbu3QMOv+2+3t5
 /wCxd0+1Xm2JnqzrwQXVh2jnKo7pZrYYovphfQ2nVOJFTO/4LOERRxeWWm8PqcMEysoL Fg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 34dgm44698-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 28 Oct 2020 10:35:12 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09SAQ5vv072316;
 Wed, 28 Oct 2020 10:35:11 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 34cx5y6073-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 28 Oct 2020 10:35:11 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 09SAZ5PP007506;
 Wed, 28 Oct 2020 10:35:05 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 28 Oct 2020 03:35:03 -0700
Date: Wed, 28 Oct 2020 13:34:56 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Arnd Bergmann <arnd@kernel.org>
Subject: Re: [RFC] wimax: move out to staging
Message-ID: <20201028103456.GB1042@kadam>
References: <20201027212448.454129-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201027212448.454129-1-arnd@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9787
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxscore=0 mlxlogscore=999
 suspectscore=0 bulkscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010280070
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9787
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 impostorscore=0
 adultscore=0 bulkscore=0 spamscore=0 phishscore=0 mlxlogscore=999
 suspectscore=0 clxscore=1011 mlxscore=0 malwarescore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010280071
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Jonathan Corbet <corbet@lwn.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Johannes Berg <johannes@sipsolutions.net>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 27, 2020 at 10:20:13PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> There are no known users of this driver as of October 2020, and it will
> be removed unless someone turns out to still need it in future releases.
> 
> According to https://en.wikipedia.org/wiki/List_of_WiMAX_networks, there
> have been many public wimax networks, but it appears that these entries
> are all stale, after everyone has migrated to LTE or discontinued their
> service altogether.

Wimax is still pretty common in Africa.  But you have to buy an outdoor
antenae with all the software on it and an ethernet cable into your
house.  I don't know what software the antennaes are using.  Probably
Linux but with an out of tree kernel module is my guess.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
