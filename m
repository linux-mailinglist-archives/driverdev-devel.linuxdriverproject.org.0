Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7768D332CAF
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 17:58:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0AA3683E27;
	Tue,  9 Mar 2021 16:58:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Da_M6inpTijK; Tue,  9 Mar 2021 16:58:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 264A283DA1;
	Tue,  9 Mar 2021 16:58:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E26DD1BF3B9
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 16:58:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CFBD083E10
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 16:58:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FWxC8Kre1Dcj for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 16:58:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx01-muc.bfs.de (mx01-muc.bfs.de [193.174.230.67])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6C25883192
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 16:58:03 +0000 (UTC)
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
 by mx01-muc.bfs.de (Postfix) with ESMTPS id F37F1203A7;
 Tue,  9 Mar 2021 17:57:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901; 
 t=1615309080;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=h+ADzz2PycqRDNDzhaK4am45/205Sa55O9WLjE4qfmg=;
 b=F68hKU06BJHN+y2ktMTlItFlL2+T71UpTKGMr9UacVLdiWwp48e17hbUVlKOgAwqIC3DpW
 Z+8ovBBpxlT7fHTLaZNXmgQ8pnDbKzNXTmpLXY0VpF2XOgIm/WUjypq07XnSq1OaxGQ2V2
 /KwzW9iHlchk4kWupVxqQG1je1vv7vEgDq8AiYiGS+KGxMto1m/LUj5A3T2Zc0TrF5LAla
 mmV738cCEhLhgnEnlxn8cKk0y2W5nN2y7wdTXop2B3OFkiidS7sC/OpcUU4tmCYF158M8y
 6ekl/txebMK3fzcLZBZpWCe7wBKMlOLM6Lkk/RoAo7ZYi0X45mU8PEQtu0yB8g==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2176.2; Tue, 9 Mar 2021
 17:57:59 +0100
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2176.009; Tue, 9 Mar 2021 17:57:59 +0100
From: Walter Harms <wharms@bfs.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Dan Carpenter
 <dan.carpenter@oracle.com>
Subject: AW: [PATCH] staging: gasket: Fix sizeof() in gasket_handle_ioctl()
Thread-Topic: [PATCH] staging: gasket: Fix sizeof() in gasket_handle_ioctl()
Thread-Index: AQHW8NHDjHLYhGhXpkyIIUiTZnjQVqp73VeAgABGW/A=
Date: Tue, 9 Mar 2021 16:57:59 +0000
Message-ID: <8fda6445b7944426a45a944b777c52fe@bfs.de>
References: <YAroue0qiuf35rkS@mwanda>,<YEd3n/vbIzRr5vnA@kroah.com>
In-Reply-To: <YEd3n/vbIzRr5vnA@kroah.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.39]
x-tm-as-product-ver: SMEX-14.0.0.3080-8.6.1012-26020.000
x-tm-as-result: No-10--5.167600-5.000000
x-tmase-matchedrid: vSacEmmxy1cI9V8p1Mx66RvgzEPRJaDEKQNhMboqZloTiSW9r3PknDmy
 vi/pk1f1Xrb4QOzuDtdLrEBPgdA+3JW93I1R56ceGuJkjglgeN8BDya2JbH/+lSXiT718GEQ1t2
 9KLWKRj6byHEAgTCz2tzQyfWsxJJtPg9yfk4YC0bobINHZkH5xgsE9gx+4jJue5Q84fGfhIaHxT
 OO6g/RXs9X4Dcy3usP7i7ibx9W3/mIxltsBoyvHqiUivh0j2PvSWg+u4ir2NOok1v2BTdbi+xi+
 /EGZYtTdZ7fu9NDAa5M5aeo/ogZvU6QGdtaTwWBfJy8LojR0khUIaneDj+GO1IGXWOWGJcxJY8L
 9eqtVP4fKptxQz8aGHEfMpvQYpcibTSwI/A2DvB08zy97KsgJtDZ1FFTJUymg8vHe9ji82KgYvM
 2hSr9WhXL6mT9IaQBPZdZhZKItfKPaFHMfVTC4IMbH85DUZXyXU/IDt4T4+H6C0ePs7A07b4iOw
 QQ4jNiCXP6o8jmVGf9TaKQPBlYpuFY2VZFv67TGGEMK3KhUcs=
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--5.167600-5.000000
x-tmase-version: SMEX-14.0.0.3080-8.6.1012-26020.000
x-tm-snts-smtp: 747D4B5F53BB096DB7D52720A9BF59CB7C1D7393A296FE2AA9F8704875D9EAFD2000:9
MIME-Version: 1.0
Authentication-Results: mx01-muc.bfs.de;
	none
X-Spamd-Result: default: False [-15.00 / 7.00]; ARC_NA(0.00)[];
 TO_DN_EQ_ADDR_SOME(0.00)[]; HAS_XOIP(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; MIME_GOOD(-0.10)[text/plain];
 DKIM_SIGNED(0.00)[bfs.de:s=dkim201901];
 RCPT_COUNT_SEVEN(0.00)[9];
 WHITELIST_LOCAL_IP(-15.00)[10.129.90.31];
 RCVD_NO_TLS_LAST(0.10)[]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; RCVD_COUNT_TWO(0.00)[2];
 MID_RHS_MATCH_FROM(0.00)[]; BAYES_HAM(-0.00)[32.48%]
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
 John Joseph <jnjoseph@google.com>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>, Simon
 Que <sque@chromium.org>, Richard Yeh <rcy@google.com>,
 Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

why not mark it as "Deprecated" and remove it with the next version ? Maybe=
 soneone will wakeup ?

re,
 wh
________________________________________
Von: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Gesendet: Dienstag, 9. M=E4rz 2021 14:26:55
An: Dan Carpenter
Cc: Rob Springer; devel@driverdev.osuosl.org; kernel-janitors@vger.kernel.o=
rg; John Joseph; Simon Que; Richard Yeh; Todd Poynor
Betreff: Re: [PATCH] staging: gasket: Fix sizeof() in gasket_handle_ioctl()

On Fri, Jan 22, 2021 at 06:01:13PM +0300, Dan Carpenter wrote:
> The "gasket_dev->num_page_tables" variable is an int but this is copying
> sizeof(u64).  On 32 bit systems this would end up disclosing a kernel
> pointer to user space, but on 64 bit it copies zeroes from a struct
> hole.
>
> Fixes: 9a69f5087ccc ("drivers/staging: Gasket driver framework + Apex dri=
ver")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> This is an API change.  Please review this carefully!  Another potential
> fix would be to make ->num_page_tables a long instead of an int.
>
>  drivers/staging/gasket/gasket_ioctl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Looks like this driver is dead, with no response from anyone from
Google.

Should I just delete it?  The goal of using normal apis and getting this
out of staging seems to have totally died, so it shouldn't even still be
living in the kernel tree.  Even if having it here actually finds
security issues that the authors missed like this :(

So, any objection to me deleting it?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
