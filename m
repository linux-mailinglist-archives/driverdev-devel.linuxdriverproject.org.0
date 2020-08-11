Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E3389241991
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Aug 2020 12:20:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4C3DD85E93;
	Tue, 11 Aug 2020 10:20:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4-dwNkc9AbVv; Tue, 11 Aug 2020 10:20:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1E921857CE;
	Tue, 11 Aug 2020 10:20:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A4EE1BF277
 for <devel@linuxdriverproject.org>; Tue, 11 Aug 2020 10:20:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 66E74857CE
 for <devel@linuxdriverproject.org>; Tue, 11 Aug 2020 10:20:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Za-HpCsvThQx for <devel@linuxdriverproject.org>;
 Tue, 11 Aug 2020 10:20:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 30B4F8578B
 for <devel@driverdev.osuosl.org>; Tue, 11 Aug 2020 10:20:07 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 07BACeE2145102;
 Tue, 11 Aug 2020 10:19:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=HcDjjzqVyfcUJIc+LnJzTj0NlEAoMZO5Bzk9COQkEZM=;
 b=Yn+OBNG0P5mri8dkG+3CJNa9a7w3c9TXSS7Lx80OX1yyrbv+jMnXC1qBb2qgZomou2AU
 PksfGFHLbackgq++paNuGqKsXgdEF+ek1rZZLEzu0Z6KsyPXEC3GyzKtJZXqpL8jDMvT
 hqk4tvzWI7hdXErtss6vbfDAMc6QxwDWmRsqZOadzZrb68S8DzaHMC1h6RibhC2TEjdA
 jRvzSVuhZUUrvfNN+aS4yC2moqs7pnrRDR4tH1d7d8UO2UdIHBNg4J3BKIwla1WuoCiB
 nbQOxJ/BqfqGMYhLSp3QpMNLAV5Q5lp+smm2SO8zK3uVDmuMfy9Q1O7/u2OCvA2reMD0 dQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 32smpnbr9u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 11 Aug 2020 10:19:59 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 07BACRU3160982;
 Tue, 11 Aug 2020 10:17:58 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 32t5yyeb7g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Aug 2020 10:17:58 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 07BAHtfH023548;
 Tue, 11 Aug 2020 10:17:56 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 11 Aug 2020 10:17:55 +0000
Date: Tue, 11 Aug 2020 13:17:47 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH] staging: ks7010: Do not use GFP_KERNEL in atomic context
Message-ID: <20200811101746.GN1793@kadam>
References: <20200809111846.745826-1-christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200809111846.745826-1-christophe.jaillet@wanadoo.fr>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9709
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0 phishscore=0
 bulkscore=0 adultscore=0 spamscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2008110068
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9709
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 impostorscore=0 phishscore=0 clxscore=1011 spamscore=0
 malwarescore=0 adultscore=0 mlxlogscore=999 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2008110068
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
Cc: devel@driverdev.osuosl.org, sfr@canb.auug.org.au, mhocko@suse.com,
 gregkh@linuxfoundation.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, hannes@cmpxchg.org, longman@redhat.com,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 09, 2020 at 01:18:46PM +0200, Christophe JAILLET wrote:
> A possible call chain is as follow:
>   ks_wlan_start_xmit                    (ks_wlan_net.c)
>     --> hostif_data_request             (ks_hostif.c)
>       --> michael_mic                   (ks_hostif.c)
> 
> 'ks_wlan_start_xmit()' is a '.ndo_start_xmit()' function (see
> net_device_ops structure). Such calls are guarded by the __netif_tx_lock
> spinlock. So memory allocation must be atomic.
> 
> So, use GFP_ATOMIC instead of GFP_KERNEL 'in michael_mic()'
> 
> Fixes: ???
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> This is completely speculative. I don't know if the call chain given above
> if possible in RL application.
> So review carefully :)
> 
> If the fix is correct, it is also more the starting point of a bigger
> change, because in 'michael_mic()' there is a call to
> 'crypto_alloc_shash()' and this function uses GFP_KERNEL internally (in
> 'crypto_create_tfm()')
> Should this need to be changed, I don't know how 'ks_hostif.c' should be
> fixed. Changing allocation in 'crypto/api.c' looks like an overkill.
> 
> In other word, I think that my patch is wrong, but don't know what else to
> propose :).

Your patch is correct but you're also right that it's incomplete.

If you look at drivers/staging/rtl8192e/rtllib_crypt_tkip.c then they
declare the shash on stack instead of using crypto_alloc_shash().
	SHASH_DESC_ON_STACK(desc, tfm_michael);

That's probably what we should do here as well.  Although I don't know
this code very well at all...  This is probably the sort of change where
it would be good to have someone test it.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
