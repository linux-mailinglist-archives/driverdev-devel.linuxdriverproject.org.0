Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A100FD72A
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Nov 2019 08:42:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 12BD68971B;
	Fri, 15 Nov 2019 07:42:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GIt-pkqyOch4; Fri, 15 Nov 2019 07:42:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5026789630;
	Fri, 15 Nov 2019 07:42:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE0AD1BF3BE
 for <devel@linuxdriverproject.org>; Fri, 15 Nov 2019 07:42:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D8ED987C04
 for <devel@linuxdriverproject.org>; Fri, 15 Nov 2019 07:42:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZKno2qERRcao for <devel@linuxdriverproject.org>;
 Fri, 15 Nov 2019 07:42:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D912987BFC
 for <devel@driverdev.osuosl.org>; Fri, 15 Nov 2019 07:42:18 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAF7d6ib109361;
 Fri, 15 Nov 2019 07:42:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=g8uThl8dkg+cj+2qFvpX4UHz2ZpNIXnP5NoBMB9GLqg=;
 b=ZH1elWzwIglBNSmcB5X+wP0yf/LmUt1gwQ+BKmeAdqrKDHpR/B3VCP4gZCn+KMqZMs9o
 VGHfMyBeXTtqPWxiohoxTx5o7AfdSifH5au/Bm2F7yVdLrt3SFvNiIu3Bmkqjm2Sh1FQ
 PezEvg+YOhnSG5jhEdCiE5XV3iqHQhA9DYdcDAsrS43yoJzICjQ8HGET00MD1DelpZ0X
 M+etngT3aPLHcBKyusqkOVVWdOf2MdHXjY7n+YHRfOY5MAx7YFmUmeiVh70iLUsFIgRv
 KCSZWILoTsg5EdUjbLSi1zTrjbonXuFcKjTLQm2+RS4ZrBxPO9YIBIsDHfdo4Swj/sjF Qg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2w9gxphk9u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 15 Nov 2019 07:42:15 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAF7brgj141487;
 Fri, 15 Nov 2019 07:40:14 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2w9h149024-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 15 Nov 2019 07:40:14 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xAF7eBZl031896;
 Fri, 15 Nov 2019 07:40:12 GMT
Received: from kadam.lan (/129.205.23.165)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 14 Nov 2019 23:40:11 -0800
Date: Fri, 15 Nov 2019 10:40:03 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH] staging: rtl*: Remove tasklet callback casts
Message-ID: <20191115074003.GB19101@kadam.lan>
References: <201911142135.5656E23@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201911142135.5656E23@keescook>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9441
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911150069
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9441
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911150069
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 kernel-hardening@lists.openwall.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Romain Perier <romain.perier@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Nov 14, 2019 at 09:39:00PM -0800, Kees Cook wrote:
> In order to make the entire kernel usable under Clang's Control Flow
> Integrity protections, function prototype casts need to be avoided
> because this will trip CFI checks at runtime (i.e. a mismatch between
> the caller's expected function prototype and the destination function's
> prototype). Many of these cases can be found with -Wcast-function-type,
> which found that the rtl wifi drivers had a bunch of needless function
> casts. Remove function casts for tasklet callbacks in the various drivers.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>

Clang should treat void pointers as a special case.  If void pointers
are bad, surely replacing them with unsigned long is even more ambigous
and worse.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
