Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 316F3C9DB1
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 13:47:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5FC7E86992;
	Thu,  3 Oct 2019 11:47:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OHlNm0AOE3FI; Thu,  3 Oct 2019 11:47:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F383C8699B;
	Thu,  3 Oct 2019 11:47:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F1A91BF488
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 11:47:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1B5D8880CA
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 11:47:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 92Fp6K9wIS0O for <devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 11:47:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2AC8987C8C
 for <devel@driverdev.osuosl.org>; Thu,  3 Oct 2019 11:47:15 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x93BiNmT141829;
 Thu, 3 Oct 2019 11:47:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=VkrIv0UgUYabJ9VoBKBsjxs38jDxDS91sqJRxmziBN0=;
 b=bYfQodREFQ2hKwNSHsOKxqCPlSGvrESt4bnu6kAFrquq6uMPA2FVtsTbIhC/KHtK6W2T
 Y/3EMLP8xsXBVP+u9tdbXIMKz2m4zduUhSODUqerWgaC4OatL4iNSFgxro0vRceDXxx6
 T/jye2y5I/EKaqr1UUH1hD0jLot8NpM31uAacOnPrXGRhiC3xyrHXKrT0PuIUsEUO5Ic
 ooeKum2JddPgFuxECytL0toqz33thsLAc+zII+ajzT/xackFNYP3M1CHepzlzYv1EUxp
 MnaFQayfyrItvu22nzfWnWX5k6vgsVNj5PTT7y+ZqpK3KEYiUIysFPtbdsBTX8R2yDfG MA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2v9xxv3e23-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 03 Oct 2019 11:47:14 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x93BhvWL033585;
 Thu, 3 Oct 2019 11:47:14 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2vcg63fc06-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 03 Oct 2019 11:47:13 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x93BlAFs008475;
 Thu, 3 Oct 2019 11:47:10 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 03 Oct 2019 04:47:09 -0700
Date: Thu, 3 Oct 2019 14:46:54 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>
Subject: Re: [PATCH] staging: exfat: use bdev_sync function directly where
 needed
Message-ID: <20191003114654.GT22609@kadam>
References: <20191002151703.GA6594@SD>
 <9938.1570043055@turing-police>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9938.1570043055@turing-police>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9398
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=829
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910030110
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9398
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=927 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910030110
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
Cc: devel@driverdev.osuosl.org, Saiyam Doshi <saiyamdoshi.in@gmail.com>,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I replied to your other thread and I added Saiyam Doshi to the CC list
there.  Just to be clear this patch is a good cleanup and doesn't affect
runtime at all.

In the other thread, I suggested that we leave fs_sync() as a marker
even though it's dead code.  But looking at it now, I think that it's
not really useful.  Future auditors should look for places which call
fs_set_vol_flags(sb, VOL_CLEAN); instead.  That's exactly the places
which call fs_sync().

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
