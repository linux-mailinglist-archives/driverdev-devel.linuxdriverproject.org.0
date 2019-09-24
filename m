Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D86C6BC1A6
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Sep 2019 08:18:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 208E285C62;
	Tue, 24 Sep 2019 06:18:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2-bRXsygZtur; Tue, 24 Sep 2019 06:18:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C834B85C00;
	Tue, 24 Sep 2019 06:18:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E57E1BF29A
 for <devel@linuxdriverproject.org>; Tue, 24 Sep 2019 06:18:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6F56286FCD
 for <devel@linuxdriverproject.org>; Tue, 24 Sep 2019 06:18:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LWKxasspAc44 for <devel@linuxdriverproject.org>;
 Tue, 24 Sep 2019 06:18:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3612F865F6
 for <devel@driverdev.osuosl.org>; Tue, 24 Sep 2019 06:18:01 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8O6Dq64032934;
 Tue, 24 Sep 2019 06:17:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=hiSslqM7TGflYLLAXweDSTEdhwpxT+KQg4juxYzl38k=;
 b=Hl0BXNRRKIdOjjClw3QwDb/aE+KaFBAVF43XDp9f0uS8VhNIsuJ3GFFmnR4ebulOf1i0
 e6RLtqvOXwywXJuDvz2AQz2+JJrADcn7ia28HDRff5hZvbenub2ehknDyhefToHyTYW4
 ugcBeKGXPjMLKYNX6ac0LIlaphfP8dsxiGHGF8jXk6YgRm5YHmhW9F+z+Q26X+AgWgII
 NTW4Ga9bMxqQUKt92ZT68asvHlZa4hmb3gf8y16RVTMixLi+dsdNHSSqQ9pNp1MjpgRG
 Z2QOKdvzEQusLN6mU3VETTXOaJWOVUhEbgIfYaaH+ROgNeXReTMRyVFYFjHkY+SvZxjM Ww== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2v5btpuq04-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 24 Sep 2019 06:17:59 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8O6DRdN030994;
 Tue, 24 Sep 2019 06:17:58 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2v6yvr07ex-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 24 Sep 2019 06:17:58 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x8O6HwY8003871;
 Tue, 24 Sep 2019 06:17:58 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 23 Sep 2019 23:17:57 -0700
Date: Tue, 24 Sep 2019 09:17:48 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: Re: [PATCH] staging: rtl8188eu: remove dead code in do-while
 conditional step
Message-ID: <20190924061748.GA27389@kadam>
References: <20190923194806.25347-1-connor.kuehl@canonical.com>
 <c2ce3fb0-6407-982a-a3f2-172cef17f2a6@lwfinger.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c2ce3fb0-6407-982a-a3f2-172cef17f2a6@lwfinger.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9389
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=957
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909240063
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9389
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909240063
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
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Connor Kuehl <connor.kuehl@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 23, 2019 at 03:38:39PM -0500, Larry Finger wrote:
> This patch is correct; however, the do..while loop will always be executed

s/correct/harmless/.

> once, thus you could remove the loop and the loop variable bcmd_down.
> 
> @greg: If you would prefer a two-step process, then this one is OK.

It has to be done in one step.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
