Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 991F8150385
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Feb 2020 10:42:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4290D86091;
	Mon,  3 Feb 2020 09:42:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KOBPGwgRZ2JZ; Mon,  3 Feb 2020 09:42:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1504785CE0;
	Mon,  3 Feb 2020 09:42:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E3631BF286
 for <devel@linuxdriverproject.org>; Mon,  3 Feb 2020 09:42:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 781E3877D1
 for <devel@linuxdriverproject.org>; Mon,  3 Feb 2020 09:42:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Wy80S2uvL21 for <devel@linuxdriverproject.org>;
 Mon,  3 Feb 2020 09:42:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1A247877B1
 for <devel@driverdev.osuosl.org>; Mon,  3 Feb 2020 09:42:33 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0139c6mU121618;
 Mon, 3 Feb 2020 09:42:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=Ld1gAObiFV0beMeBZXaX5X98rEt4HUzLbBGH42xu++w=;
 b=eV6AYyz/ZskmkUPXJxJAbI0R3M85dblg141+2SvTBQF5S968XiYRm3no9+Kv9hvh+UHV
 tXMCedDPVcYObqOKnRwc4Ct/794DY5+38oOYy1fziApkU0PC4TP8+TJegn9gt9xEoEcu
 k18CcJAqEVKgeixjF3I5V8eLNODDrRrpUov0+Jt1JRV3FBjKxcc89RF1PickH4EqSrRW
 9XYADVZ7Llmaizx2dsN7xOujD5RRhiweDUew6uerR9aM8L5GtRYtaGxjGfbxxY9uxBhq
 b5vyzc+IQCQDb7CAF75IY1Mbilte08lijKajd95ZKd+Q32nLwKhm1F1Mtmn919wp4TzO sg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2xw19q6hm0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 03 Feb 2020 09:42:31 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0139cLmk082290;
 Mon, 3 Feb 2020 09:42:31 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2xwjt3gs7w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 03 Feb 2020 09:42:30 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0139gTDO022979;
 Mon, 3 Feb 2020 09:42:29 GMT
Received: from kadam (/41.210.143.134) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 03 Feb 2020 01:42:29 -0800
Date: Mon, 3 Feb 2020 12:42:22 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Malcolm Priestley <tvboxspy@gmail.com>
Subject: Re: [PATCH 1/2] staging: vt6656: fix sign of rx_dbm to bb_pre_ed_rssi.
Message-ID: <20200203094222.GM1778@kadam>
References: <9b3b92d6-3672-00be-d0b5-ccd222236ba9@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9b3b92d6-3672-00be-d0b5-ccd222236ba9@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9519
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2002030076
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9519
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2002030076
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 02, 2020 at 12:27:25PM +0000, Malcolm Priestley wrote:
> bb_pre_ed_rssi is an u8 rx_dm always returns negative signed
> values add minus operator to always yield positive.
> 
> fixes issue where rx sensitivity is always set to maximum because
> the unsigned numbers were always greater then 100.
> 
> Cc: stable <stable@vger.kernel.org>

Can you add a Fixes tag for stable kernels?

Fixes: 63b9907f58f1 ("staging: vt6656: mac80211 conversion: create rx function.")

Otherwise we don't backport it far enough and then it becomes an
actively exploited Android vulnerability and Google writes an article
about it.  Then everyone gets annoyed with us and shakes their head
because OpenBSD never has Android vulnerabilities etc...

> Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
> ---
>  drivers/staging/vt6656/dpc.c | 2 +-

It appears that the vt6655 driver has the same issue.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
