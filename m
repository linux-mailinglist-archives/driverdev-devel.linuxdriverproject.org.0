Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 654B198CDD
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Aug 2019 10:09:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6968E21F5A;
	Thu, 22 Aug 2019 08:09:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h-RYfBedzyzl; Thu, 22 Aug 2019 08:09:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E780121503;
	Thu, 22 Aug 2019 08:09:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E425B1BF3EB
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 08:09:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E1044864F2
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 08:09:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u6M1hKHVLOE7 for <devel@linuxdriverproject.org>;
 Thu, 22 Aug 2019 08:09:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A05758506A
 for <devel@driverdev.osuosl.org>; Thu, 22 Aug 2019 08:09:28 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7M89Ehm064504;
 Thu, 22 Aug 2019 08:09:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=qys3SBVljwg3jKlIyMl5SvReoKqkq2nisQb3LkrhQDw=;
 b=YBY+JuSIibdufBFGTGBEgKeO7zKlER3pUamqGDq3xDajOKHNIq5nhzqUBYtVcnhk1RCp
 Q30fJtYCTPsEzVAlQcHfX5LkylbdSuSfGrlf81F7l56p00v0c/9C50RRUjliblVvDuB8
 XohbH+d1fvIHOTImncpt7lWtTDatfNqJueWrUy75E/mpgWzXsockNmLKyM5BJc5k2vlx
 HKu3PszAXfUJ6uKYFG640vYL6e7yDcIfM1C9hDRe2S3NnpatzFZpecSNLrdKNNGZL0Nb
 wsJ8eoe1aGOa417n+H1ZcJlNeH9bOR9VGzRQ5IfHsUKD9ZggCqtbKLlASvG3eirBuVx1 kA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2ue90turmf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 22 Aug 2019 08:09:25 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7M88xxL047033;
 Thu, 22 Aug 2019 08:09:24 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2ugj7rcmw7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 22 Aug 2019 08:09:18 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x7M88s8g016428;
 Thu, 22 Aug 2019 08:08:55 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 22 Aug 2019 01:08:54 -0700
Date: Thu, 22 Aug 2019 11:08:48 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Colin Ian King <colin.king@canonical.com>
Subject: Re: Added Realtek rtl8192u driver to staging - static analysis report.
Message-ID: <20190822080848.GF4451@kadam>
References: <cb1222a8-4c67-8fac-f1d9-755e97699caa@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cb1222a8-4c67-8fac-f1d9-755e97699caa@canonical.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9355
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908220089
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9355
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908220089
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
 Jerry Chuang <jerry-chuang@realtek.com>, linux-kernel@vger.kernel.org,
 John Whitmore <johnfwhitmore@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 21, 2019 at 07:18:39PM +0100, Colin Ian King wrote:
> Hi,
> 
> Static analysis of linux-next picked up an issue with the following commit:
> 
> commit 8fc8598e61f6f384f3eaf1d9b09500c12af47b37
> Author: Jerry Chuang <jerry-chuang@realtek.com>
> Date:   Tue Nov 3 07:17:11 2009 -0200
> 
>     Staging: Added Realtek rtl8192u driver to staging
> 
> In drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c we have:
> 
> CID 48331 (#1 of 1): Unused value (UNUSED_VALUE) assigned_pointer
> 
> Assigning value from ieee->crypt[ieee->tx_keyidx] to crypt here, but
> that stored value is not used.
> 
> 746        crypt = ieee->crypt[ieee->tx_keyidx];
> 747        if (encrypt)
> 748                beacon_buf->capability |=
> cpu_to_le16(WLAN_CAPABILITY_PRIVACY);

Earlir in the function we have:

   695          crypt = ieee->crypt[ieee->tx_keyidx];
   696  
   697          encrypt = ieee->host_encrypt && crypt && crypt->ops &&
   698                  ((0 == strcmp(crypt->ops->name, "WEP") || wpa_ie_len));
   699          /* HT ralated element */

So the "crypt" assignment is dublicate and should definitely be removed.
The "if (encrypt) " check looks correct and it sort of matches what we
do in ieee80211_assoc_resp().

   840          encrypt = crypt && crypt->ops;
   841  
   842          if (encrypt)
   843                  assoc->capability |= cpu_to_le16(WLAN_CAPABILITY_PRIVACY);
   844  

So let's leave it as-is, just delete the crypt assignment.  If you want,
you can send this patch and I can give you a Reviewed-by tag or if you
want I can send the patch and give you Reported-by credit.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
