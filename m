Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E5919F484
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Apr 2020 13:27:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0DFCD85F90;
	Mon,  6 Apr 2020 11:27:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id slWJi5SzQ627; Mon,  6 Apr 2020 11:27:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DF6428577C;
	Mon,  6 Apr 2020 11:27:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 72CDF1BF3DA
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 11:26:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 68D118577C
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 11:26:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WqPkEh3etRUj for <devel@linuxdriverproject.org>;
 Mon,  6 Apr 2020 11:26:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E6EFE8560B
 for <devel@driverdev.osuosl.org>; Mon,  6 Apr 2020 11:26:58 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 036BMsJZ190826;
 Mon, 6 Apr 2020 11:26:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=l6U4uiwcoMNuAN7weaFKznTLP8mqOIF7+J81t474szc=;
 b=tTdiZ//ENQ4+HyxiYLF7e0TuwV0FFQslnx8RS/WgQwkOssca2fDNmPLuqa4FGr2xNVli
 EoKJSSrNEUqN2kmW7C5qqEX+kA0y8Ojt8UgvScFQfep3ma18M6G6r7uioL5LrOK/Viey
 j7PO+PIaBZZGinVJLQHsfmuvUU8VaoHZ5Gw654twENIIGUGgSkXe1AtV51VWWai5xkQK
 p2uY2EObk8u0P54fodKK47Tti85Ir8Vis69HOpAEiH2iHTkIaY7/aERVNPu331HLXi5e
 CNUKge8tct4TcoXuClJvG3uF47kzGXGhDMlXjSkWU49tO7fxuEo1nEndw0bzCnrWPj6s zA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 306jvmx593-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 06 Apr 2020 11:26:58 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 036BNO14161458;
 Mon, 6 Apr 2020 11:26:57 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 30741a7640-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 06 Apr 2020 11:26:57 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 036BQshn022602;
 Mon, 6 Apr 2020 11:26:54 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 06 Apr 2020 04:26:54 -0700
Date: Mon, 6 Apr 2020 14:26:47 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Michael Straube <straube.linux@gmail.com>
Subject: Re: [PATCH 1/2] staging: rtl8188eu: remove unnecessary asignment
Message-ID: <20200406112647.GJ2066@kadam>
References: <20200405112230.31975-1-straube.linux@gmail.com>
 <20200406112519.GH2001@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406112519.GH2001@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9582
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 phishscore=0
 malwarescore=0 bulkscore=0 spamscore=0 adultscore=0 mlxlogscore=999
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004060100
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9582
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 suspectscore=0
 mlxlogscore=999 mlxscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 malwarescore=0 impostorscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004060100
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
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 06, 2020 at 02:25:20PM +0300, Dan Carpenter wrote:
> On Sun, Apr 05, 2020 at 01:22:29PM +0200, Michael Straube wrote:
> > Remove unnecessary asignment in SwLedBlink1(). The code path with the
> > asignment 'pLed->BlinkTimes = 0' is only executed when
> > 'pLed->BlinkTimes' is already zero and the value is not changed between
> > the test 'if (pLed->BlinkTimes == 0)' and the asignment.
> > 
> 
> Better to get rid of the bStopBlinking variable and this becomes more
> obvious.

Oh, never mind.  You did that in patch 2.  This is fine then.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
