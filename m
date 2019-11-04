Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA666EDCF3
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 11:54:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 315D921538;
	Mon,  4 Nov 2019 10:54:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MkOUWiVDnocf; Mon,  4 Nov 2019 10:54:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BB9D920530;
	Mon,  4 Nov 2019 10:54:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 697FB1BF361
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 10:54:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 636AA8A9C9
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 10:54:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DtHDU1wD2lke for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 10:54:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 504CF8A9FE
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 10:54:04 +0000 (UTC)
Received: from mr5.cc.vt.edu (junk.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:9:0:9d:8fcb:4116])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xA4As3mK023483
 for <devel@driverdev.osuosl.org>; Mon, 4 Nov 2019 05:54:03 -0500
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197])
 by mr5.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xA4Arwj9007203
 for <devel@driverdev.osuosl.org>; Mon, 4 Nov 2019 05:54:03 -0500
Received: by mail-qk1-f197.google.com with SMTP id d144so17147881qke.16
 for <devel@driverdev.osuosl.org>; Mon, 04 Nov 2019 02:54:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=O4sSEohI+9ePFu7NIh17h34X06dA5Ss7wezIrk0/sMM=;
 b=loV2e7gJICtqhASFkwKkNz3X7JfzCeYNESRmPfeY+Cr1hH5fWVtPYAjmODOAyvi99m
 vGlm42L3ZRI85/ykZvCPhHwPXorMTWKVR68WnO4S2SIW2nlyGmUG4m6CIVK/8jn6goY5
 6i3v/WgZ7gtiRiCuzdbUprDnrq/ziKROJBx2XfkbpiJunocZRiSh9ZZ9DfQzbmYNirju
 s9ZVdDUN8zjQ1P9WXV25be2JBNC27zXlRoVvptm3tY88sVP1lGANxljduyfVg269XJCx
 s3FroZpT2olg73L1U5fYgiTcs8kTkpFYw91Pmk2irEJXdJ6y/7YYYIFMmSF0+B0QmyVr
 hMWw==
X-Gm-Message-State: APjAAAWv0y9F6Z9Mhaqys+72TQsB9g950K1Q77a5BF1DYtbO76duZHbL
 uYobHIxj+ucZQjXupP2KlQ9ardbFQnkbwjgk0MGWM18NpRwfu3ju+VaElRUrhgHxTTXUEhBmtGC
 twcSJESZmvGpAf4Sjmq5oICLvMDYTsxV6
X-Received: by 2002:ad4:5349:: with SMTP id v9mr19958009qvs.55.1572864837971; 
 Mon, 04 Nov 2019 02:53:57 -0800 (PST)
X-Google-Smtp-Source: APXvYqwstpqpeboZZUEmIXv+bMXs6fTpFWmQmyQJOF4uLfKs2q0utFPvv23/qq1PCoH4UlOCj6735g==
X-Received: by 2002:ad4:5349:: with SMTP id v9mr19957995qvs.55.1572864837661; 
 Mon, 04 Nov 2019 02:53:57 -0800 (PST)
Received: from turing-police ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id l124sm193608qkf.122.2019.11.04.02.53.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 02:53:56 -0800 (PST)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2 07/10] staging: exfat: Clean up return codes -
 FFS_SUCCESS
In-Reply-To: <20191104100413.GC10409@kadam>
References: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
 <20191104014510.102356-8-Valdis.Kletnieks@vt.edu>
 <20191104100413.GC10409@kadam>
Mime-Version: 1.0
Date: Mon, 04 Nov 2019 05:53:55 -0500
Message-ID: <128761.1572864835@turing-police>
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
Cc: linux-fsdevel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2694761270742122735=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============2694761270742122735==
Content-Type: multipart/signed; boundary="==_Exmh_1572864835_14215P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1572864835_14215P
Content-Type: text/plain; charset=us-ascii

On Mon, 04 Nov 2019 13:04:14 +0300, Dan Carpenter said:
> On Sun, Nov 03, 2019 at 08:45:03PM -0500, Valdis Kletnieks wrote:
> > -	if (sector_read(sb, sec, &bp->buf_bh, 1) != FFS_SUCCESS) {
> > +	if (sector_read(sb, sec, &bp->buf_bh, 1) != 0) {
>
> It's better to just remove the "!= 0" double negative.  != 0 should be
> used when we are talking about the number zero as in "cnt != 0" and for
> "strcmp(foo, bar) != 0" where it means that "foo != bar".

"Fix up ==0 and !=0" is indeed on the to-do list.

This patch converted 82 uses of FFS_SUCCESS, of which 33 had the != idiom in
use.  Meanwhile, overall there's 53 '!= 0' and 95 '== 0' uses.

In other words, even if I fixed all of those that were involved in this patch,
there would *still* be more patching to do.





--==_Exmh_1572864835_14215P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXcADQgdmEQWDXROgAQKAchAAtemIJM4rEnk/fzHoPM8wtbMrApsfS8oQ
xZk0xQ6DGVGwCR67LvNuy3qU5sgSXDuI6+0Egf/63qzQdyZ4C87x49m0p3J6dctU
wFwVlDwlr49ZbCcHDWD/lI7B3cc+1iwxAcMYVXQGMsF4dNckVLzHXjP7PEq0eMnP
xZKkGxU9pvJLpiuCckiJTda+qG9xPJDh9BqsT6L3XQD/yN8ajurYPVkv1FXRiiBY
Xzxw1Vd3vM8lxLyE2KtSB2VVlWGxK8HC9fw49p1RkKpcdXLBYPnf9dy7umSpTM4U
7nPYVj/MMvis4pDb7dRDBicSqgoQd+Np3dz0bHRvHCmq5i3zrxhaYuCaJ+RreRXi
3i4nanOeI43RZ5qfUkUZJm2AthINcNCRLysmprSherVa7jvCr7QJXtkizJgVeYou
Kx/ND16wpQe96G8TzyQXHQx1Ki+0jnjkQLOp1xZ+I4/Zua8KPqrKXafIfzBhQSOx
5FJCXe07qrjJUAfKR/oVTtlzqOQl6tbRNIjClPiJRwfocpEaZi5XBi8Og3cfEi44
+RR9euNuePOCK4wpTOn9u5GBlCIy8IpRdOfMaU3Amh1uzo3rS8cU7fRQYfovmySI
Js1wW1Jc4vdXm6Zx9ijVxxECcK/DfjxGKSTeCqt3Hlo3JxbBX2Q7jvGm4fu066bq
/etC95DRebU=
=E3XH
-----END PGP SIGNATURE-----

--==_Exmh_1572864835_14215P--

--===============2694761270742122735==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2694761270742122735==--
