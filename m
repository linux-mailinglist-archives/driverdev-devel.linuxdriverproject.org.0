Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E431993A2
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Mar 2020 12:41:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EB0FF886C6;
	Tue, 31 Mar 2020 10:41:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fiJUu5rIiEbP; Tue, 31 Mar 2020 10:41:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6799288311;
	Tue, 31 Mar 2020 10:41:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 781AE1BF263
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 10:41:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 74C6A878A1
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 10:41:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UJOCD0RquNrU for <devel@linuxdriverproject.org>;
 Tue, 31 Mar 2020 10:41:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EFDDE87899
 for <devel@driverdev.osuosl.org>; Tue, 31 Mar 2020 10:41:46 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02VAfg2U102853;
 Tue, 31 Mar 2020 10:41:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=NObmnK1iNc485uqyg9CPnPUrBG5VCXB5zLiIIyBgYsA=;
 b=DlIr6JEffi+S/c2+Sz5MPf2rZdEO1SL9sqQ7AN36TxM3Pz2d+dabhi4VhToYQWfXG+ic
 FeO8ZXkhYTfcMUPj06Ilck2cUk+xx/gSnyNVQj5LV/QaiiIOp726JhFmyH1UY5ieYpiY
 ZIOjkqoupn2AhC6xUOyMWLrxQQOPXcNEg1DGkxbWE707KgURLiwPNeWLZK2kULZGK5pJ
 13IaXVuSZ+hl+eFltdNKNIlzOsNGtd4oZV7iGQrfWEf3CQx7Z65Hc47YBq5cIMiQ23lg
 ZzxZA3ns86YFcyBL0n/Rg8EVkdo/qoF+RMJOjFm6+3Ehpk4ANuTT46+vNhf0LuorDa97 0Q== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 303aqhfa8m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 31 Mar 2020 10:41:42 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02VAbBL5106348;
 Tue, 31 Mar 2020 10:41:41 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 302gcc74v0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 31 Mar 2020 10:41:41 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 02VAfcLZ016944;
 Tue, 31 Mar 2020 10:41:38 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 31 Mar 2020 03:41:37 -0700
Date: Tue, 31 Mar 2020 13:41:30 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH] staging: vt6656: Use BIT() macro in vnt_mac_reg_bits_*
 functions
Message-ID: <20200331104130.GC2066@kadam>
References: <20200320181326.12156-1-oscar.carter@gmx.com>
 <20200323073214.GJ4650@kadam> <20200326171043.GB3629@ubuntu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326171043.GB3629@ubuntu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9576
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 spamscore=0 malwarescore=0
 mlxlogscore=828 adultscore=0 suspectscore=0 phishscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003310096
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9576
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0 clxscore=1015
 malwarescore=0 impostorscore=0 mlxlogscore=905 spamscore=0 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003310096
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 26, 2020 at 06:10:43PM +0100, Oscar Carter wrote:
> I will make these changes and i will send and incremental patch with the
> "Fixes:" tag due to the this patch has already been added to the staging-next
> branch of the greg staging tree.

Fixes is only for bug fixes, not style issues.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
