Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A943C1D78C5
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 May 2020 14:39:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1840587A60;
	Mon, 18 May 2020 12:39:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6MKWDqmk+AfX; Mon, 18 May 2020 12:39:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 34AF9865B0;
	Mon, 18 May 2020 12:39:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 956B11BF3BA
 for <devel@linuxdriverproject.org>; Mon, 18 May 2020 12:39:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8E02788354
 for <devel@linuxdriverproject.org>; Mon, 18 May 2020 12:39:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S0NoGdqNBJZt for <devel@linuxdriverproject.org>;
 Mon, 18 May 2020 12:39:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3A6238833C
 for <devel@driverdev.osuosl.org>; Mon, 18 May 2020 12:39:54 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04ICVfYq073811;
 Mon, 18 May 2020 12:39:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=bd0vnwwO0ZWmC6vWHdPtL16W06duYPkWRifCu26fO60=;
 b=IiIqMtZ+t1lX07BWRk0aJx/RJCywKkEFvJJVBJSjN6eAtXzFZsyYj9i9lUhC7IQzHTIv
 saoCxewMAE/Vpb5uvnyydvh6Wg9QMdnuBTo9xg9JYjyrMvop0F6jbV1PEXDtA9AhnVH6
 DnSPCe5v1zoU0Vx/qZv/Sm3Jo0JdIrpeU+JtLcBGpA6VO78lFsivzoQVbPEqmmdOEAjq
 E5VskLTJ7p8BpLm7yY+m6HuafWLniN1Jzl/k8YB8oGPhLZbgVQH4XRmUG2OQ8BpEqv40
 jp20tedOgV9vXfDYX3Z0d+ZRDBA/Tyil1DpG1f+l7tps9omb2qQa066K0YM1KZrQAMQX 7A== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 31284kpg79-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 18 May 2020 12:39:53 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04ICd0sS142559;
 Mon, 18 May 2020 12:39:53 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 312t30tbe2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 18 May 2020 12:39:52 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04ICdptI016564;
 Mon, 18 May 2020 12:39:51 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 18 May 2020 05:39:50 -0700
Date: Mon, 18 May 2020 15:39:44 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Malcolm Priestley <tvboxspy@gmail.com>
Subject: Re: [PATCH 2/4] staging: vt6656: vnt_beacon_xmit use
 extra_tx_headroom.
Message-ID: <20200518123944.GI2078@kadam>
References: <5f00d319-9242-65b2-d100-dcfe9b0e32be@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5f00d319-9242-65b2-d100-dcfe9b0e32be@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9624
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 spamscore=0 mlxlogscore=999
 phishscore=0 mlxscore=0 malwarescore=0 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005180115
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9624
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxscore=0
 cotscore=-2147483648 impostorscore=0 malwarescore=0 mlxlogscore=999
 lowpriorityscore=0 phishscore=0 spamscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005180114
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

On Sat, May 16, 2020 at 11:39:34AM +0100, Malcolm Priestley wrote:
> Create room for vnt_tx_short_buf_head in sk_buff and vnt_tx_usb_header.
> 
> The struct ieee80211_mgmt is not longer in the header and is at
> the initial skb->data point.

I feel like the SubmittingPatches guidelines on verb tenses and not
saying "this patch" or "I" has got everyone so worried that it's like
playing Taboo.  Do you mean that the struct moved before or after we
aply *this patch*?

> 
> Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>

I can't understand the point of this patch at all.  Is it a fix or a
clean up?  If I had to guess from the subjec, I would say it's a
performance improvement but I don't know.

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
