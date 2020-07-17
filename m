Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E56F223B5E
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jul 2020 14:29:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6E09F86970;
	Fri, 17 Jul 2020 12:29:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YiS90a8DeBGB; Fri, 17 Jul 2020 12:29:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76878868C6;
	Fri, 17 Jul 2020 12:29:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 888AF1BF2B1
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 12:29:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 826A88849C
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 12:29:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TDD4a16I07Jz for <devel@linuxdriverproject.org>;
 Fri, 17 Jul 2020 12:29:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F403888471
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 12:29:31 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06HCKFWR174617;
 Fri, 17 Jul 2020 12:28:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=BH0vXUvHBelpl4zpNo51pEDINGNiYvSlHG1KpXACYSM=;
 b=k1lbpHM44dxXiWHgj5M7KcAa/ibG7PIG68E8NBKGbH6Ufr3Z8BDiM+nVE0O8mAoY95FZ
 p5jQFotvwcdmuBFxICL3O5wMacmSmTX9qDVlDwO2ArBJZlOP3cZBPS2rYemlg2Y0ZrKu
 5TDGSNSKFtCo5A4OiBioS2GB8LBRJy8GIS1ZkCudjEY6OnRerqfhzBm8dT0QyJvZg2jZ
 4zGnH12R+9ydkcq/s5FKxBLAkj6aB8wp/NWzLA09khw56oMiQUSUKCdVBjwRu0g4MMTW
 yO3STI53kztIl6tkfd3B5BCULdoKEkKX3nCEvpNUG6ay9jbXXmGSvnWhZh/uN5kPdhpj aQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 3275cmpxay-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 17 Jul 2020 12:28:47 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06HCRFLV053746;
 Fri, 17 Jul 2020 12:28:47 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 32bc0qg1ty-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 17 Jul 2020 12:28:47 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 06HCSjGm009637;
 Fri, 17 Jul 2020 12:28:46 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 17 Jul 2020 05:28:45 -0700
Date: Fri, 17 Jul 2020 15:28:40 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: christopher tyerman <c.tyerman@firebladeautomationsystems.co.uk>
Subject: Re: linux/drivers/staging/pi433/
Message-ID: <20200717122840.GD2549@kadam>
References: <3a130eff-8a46-f12e-0848-7d086b875567@firebladeautomationsystems.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a130eff-8a46-f12e-0848-7d086b875567@firebladeautomationsystems.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9684
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0
 mlxlogscore=999 phishscore=0 adultscore=0 bulkscore=0 malwarescore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2007170091
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9684
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 priorityscore=1501
 bulkscore=0 adultscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 impostorscore=0 malwarescore=0 mlxlogscore=999 clxscore=1011 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007170091
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
Cc: devel@linuxdriverproject.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 17, 2020 at 12:11:50PM +0100, christopher tyerman wrote:
> hello
> =

> Im looking for information on the pi433 driver. Who is currently
> maintaining the driver? as the original author appears not to have made
> any alterations since the original commit, and links are no longer valid.

Looks like no one is.

> =

> Im looking to determine what would be necessary to confirm/implement=A0
> functionality using the RFM69HCW and, initially, more specifically the
> SparkFun RFM69 Breakout( https://www.sparkfun.com/products/12823).
> =

> As a side question can you tell what or where i can find information on
> driver naming conventions? as the pi433 driver to me looks like it
> should really be named after the RFM69 series of chips/modules rather
> than a specific PCB for that module which appears to not be available
> and multiple alternatives exist for.

That sounds reasonable.  We can't Ack patches we haven't seen but
probably you can rename anything that you want to.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
