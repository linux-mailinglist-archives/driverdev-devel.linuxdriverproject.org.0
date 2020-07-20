Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FB9225A1D
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Jul 2020 10:34:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AFC4485E9F;
	Mon, 20 Jul 2020 08:34:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HYPJPqa9rw1v; Mon, 20 Jul 2020 08:34:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3410285E6F;
	Mon, 20 Jul 2020 08:34:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C113F1BF5E0
 for <devel@linuxdriverproject.org>; Mon, 20 Jul 2020 08:34:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BD5D28588A
 for <devel@linuxdriverproject.org>; Mon, 20 Jul 2020 08:34:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VMRZIicZssJ7 for <devel@linuxdriverproject.org>;
 Mon, 20 Jul 2020 08:34:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 262008559F
 for <devel@driverdev.osuosl.org>; Mon, 20 Jul 2020 08:34:07 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06K8Y3os161838;
 Mon, 20 Jul 2020 08:34:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=Z+9vIeiYcNANUHiTbW9lBIn+ez6nqkJZFEdNCzSF+Z4=;
 b=mQSdptuQj1sRn+wgSwKGfHdWwtZnQxeAtjAI0msh3Cc3Z52o+4y+R4hcPSSpLVLHpwfe
 4atUNemko3xRUMRmF0ciIBueIUU/mtDqZetwxGKcTzLtfBE6PdU4kXAUG5cbNBrleZQ8
 nMeSej3HdIok5KVP6S0/SLPgt2VULhAY6hStV0curauj939JWmQL9Qf7fPAF9DaupEha
 DiJkeazmVCzeiCBrszHBpI1WsiFsnNnkf2p/HRQCestsLeTB/DHXp9oWai/Ug5CVqR1p
 gTlPYD8m3t6c68/xmIQwvTY/eAXRJ3nilyf8QBR8pzIUqjXFhRK6/EAAWxBaa4DTvGqY fQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2130.oracle.com with ESMTP id 32bpkawq74-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 20 Jul 2020 08:34:04 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06K8O6o0165117;
 Mon, 20 Jul 2020 08:33:06 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 32cvj9dn7n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 20 Jul 2020 08:33:06 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 06K8X5O9032031;
 Mon, 20 Jul 2020 08:33:05 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 20 Jul 2020 01:33:05 -0700
Date: Mon, 20 Jul 2020 11:32:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Suraj Upadhyay <usuraj35@gmail.com>
Subject: Re: [PATCH v3] staging: kpc2000: Replace depracated MSI APIs
Message-ID: <20200720083259.GE2549@kadam>
References: <20200719141222.GA29679@blackclown>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200719141222.GA29679@blackclown>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9687
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=2 spamscore=0
 mlxlogscore=882 malwarescore=0 bulkscore=0 mlxscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007200063
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9687
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 bulkscore=0
 mlxlogscore=908 mlxscore=0 malwarescore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2007200064
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

On Sun, Jul 19, 2020 at 07:42:22PM +0530, Suraj Upadhyay wrote:
> Replace depracated MSI IRQ enabler and disabler
> with pci_alloc_irq_vectors and pci_free_irq_vectors respectively.
> Compile tested.
> 
> Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
> ---
> Changes:
> 	v3: Replaced the disabler for MSI IRQ too with
>             pci_free_irq_vectors.

No, this still has bugs.  Grep the file for msi and update everything
and update the comments and label names as well.

Can you just slow down a bit and fix one driver correctly before trying
to fix a bunch of drivers?

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
