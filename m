Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B496030B809
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Feb 2021 07:55:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D3DAE2202C;
	Tue,  2 Feb 2021 06:55:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vCgoYoDBQYeZ; Tue,  2 Feb 2021 06:55:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BC9C120498;
	Tue,  2 Feb 2021 06:55:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 604601BF2B1
 for <devel@linuxdriverproject.org>; Tue,  2 Feb 2021 06:55:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 57161863D0
 for <devel@linuxdriverproject.org>; Tue,  2 Feb 2021 06:55:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QNk8A3ZnXOUc for <devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 06:55:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AE4A3863A3
 for <devel@driverdev.osuosl.org>; Tue,  2 Feb 2021 06:55:03 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1126sBVl026565;
 Tue, 2 Feb 2021 06:55:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=9EBf4UsWnrYciOb0VmTesjX4QVUYasu/M1Onu9gj/V4=;
 b=CFhaFsntxwyNgdmFPjfKD7XQtqJJKdU+dOzH8GHiZJzb7SfTEDrkyjok32LKXCBa6YI+
 xCHOxbP+nSRoywd9IJcvrGi8tAFXPbwBTt1HV2C0Ymrj+1EKnTAGmskobR6Fu+irzSfi
 Muc78emWGtJHcT5gjeWCTq0BwKIbtwq4DyL8QAtdyqnyCwRrKETdrIBO0UI9TydSDmCe
 xf9baXJ413PiXIE8Nu7AQgltc6IY+iEC9J7CpWnXdhXQ0F/9j0zzo2VlkO9gElHtQ5YS
 2XCSEAbpk1fLgPP0MoWEFFQN786G28/9dKGftW2ULFt0qYHK/67J7ak60s42W9AvLJW+ pQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 36cxvr15sc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Feb 2021 06:55:02 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1126su0W017991;
 Tue, 2 Feb 2021 06:54:59 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 36dhbxsspc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Feb 2021 06:54:59 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 1126sneD010423;
 Tue, 2 Feb 2021 06:54:49 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 01 Feb 2021 22:54:48 -0800
Date: Tue, 2 Feb 2021 09:54:38 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ilya Lipnitskiy <ilya.lipnitskiy@gmail.com>
Subject: Re: [PATCH] staging/mt7621-dma: mtk-hsdma.c->hsdma-mt7621.c
Message-ID: <20210202065438.GO2696@kadam>
References: <20210130034507.2115280-1-ilya.lipnitskiy@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210130034507.2115280-1-ilya.lipnitskiy@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9882
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 adultscore=0 suspectscore=0
 spamscore=0 mlxscore=0 malwarescore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102020047
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9882
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=999
 mlxscore=0 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1011
 suspectscore=0 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102020047
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
 Masahiro Yamada <masahiroy@kernel.org>, stable@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jan 29, 2021 at 07:45:07PM -0800, Ilya Lipnitskiy wrote:
> Also use KBUILD_MODNAME for module name.
> 
> This driver is only used by RALINK MIPS MT7621 SoCs. Tested by building
> against that target using OpenWrt with Linux 5.10.10.
> 
> Fixes the following error:
> error: the following would cause module name conflict:
>   drivers/dma/mediatek/mtk-hsdma.ko
>   drivers/staging/mt7621-dma/mtk-hsdma.ko
> 

The only part of this commit message that I could understand at all was
the parts which were copy and pasted from the build system...  :/
Please, write it like this:

[PATCH] staging/mt7621-dma: fix build conflict

This driver cannot be built because we have two modules with the same
name and it leads to an error:

  error: the following would cause module name conflict:
    drivers/dma/mediatek/mtk-hsdma.ko
    drivers/staging/mt7621-dma/mtk-hsdma.ko

The fix is to rename mtk-hsdma.c to hsdma-mt7621.c.  Also we can use the
KBUILD_MODNAME where appropriate instead of hard coding the name.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
