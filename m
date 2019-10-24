Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F345E3876
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 18:45:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7114C869D2;
	Thu, 24 Oct 2019 16:45:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VNuKq7it2B3l; Thu, 24 Oct 2019 16:45:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B3D3869B8;
	Thu, 24 Oct 2019 16:45:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E83031BF860
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 16:45:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E510188328
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 16:45:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1xqGEUyMNlY7 for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 16:45:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CA52E88311
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 16:45:09 +0000 (UTC)
Received: from mr3.cc.vt.edu (mr3.cc.vt.edu
 [IPv6:2607:b400:92:8500:0:7f:b804:6b0a])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9OGj8S7023263
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 12:45:08 -0400
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by mr3.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9OGj3kB030847
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 12:45:08 -0400
Received: by mail-qt1-f200.google.com with SMTP id l5so6614639qtj.8
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 09:45:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=1k/OHruc2b54fj2ZTH33R/zhw5wiURkFRV48Xs6l6kQ=;
 b=ZJP/LYm7wByLfRWgujwXTBHyYYcVkyb9pFapdtt2x2Myjgub4cRbRa7TteARTt480n
 gj+M3ZAKGQ25oVRqYR5TwrJu/eULrBz6E4N7XQ1zW7/7mpLbSOJynQ4x86y+q0kJdV4I
 NYc5mBmr/5B8+SjlosLcGnGKhvQvvSBLQW5cHp6BjQgTqBSXwOf5uI+xu4IzP0vfYPGf
 sIwAAaspqw86wp55Pzd2GuVsVgvgKcAVU41J4I5ZYpTygq5Oa+UWRHjjhD2xzyvBKbVn
 0Jqk1CSrzkmGnzebgVf4n+Ut8XAuL6MJLPbpqpTI/HjyrqVO5Ecy5duTOnDU2pPd24mx
 e3CA==
X-Gm-Message-State: APjAAAU2kSy6quofbPDyqao8NEjGXtvjz9Jxn3d5uH1ISs7NIF9maFfS
 CDZcQrrD2w7b0oYVcALvS09CWBNb8QEyJ5gZdkZZSH6aNvhZUGhUwZi9Xyg5zVAsS3tk6EXq0l0
 ELzmHnkL+moNGeey4ygPRIn2zCdVRqeS3
X-Received: by 2002:ae9:e8c3:: with SMTP id a186mr14144562qkg.97.1571935503631; 
 Thu, 24 Oct 2019 09:45:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzPmugAIBdJbLw5E7Sxj5nx/GCPtHQUdyKIKhqTlpoBsI7n1U229JrkQCk9r/OOO0i4y5A1bg==
X-Received: by 2002:ae9:e8c3:: with SMTP id a186mr14144530qkg.97.1571935503279; 
 Thu, 24 Oct 2019 09:45:03 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id y10sm14239753qkb.55.2019.10.24.09.45.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 09:45:02 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 00/15] staging: exfat: Clean up return codes
In-Reply-To: <db3315695d3ea493e05f63f3b21fb3a1482293fd.camel@perches.com>
References: <20191024155327.1095907-1-Valdis.Kletnieks@vt.edu>
 <db3315695d3ea493e05f63f3b21fb3a1482293fd.camel@perches.com>
Mime-Version: 1.0
Date: Thu, 24 Oct 2019 12:45:01 -0400
Message-ID: <1116230.1571935501@turing-police>
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
Content-Type: multipart/mixed; boundary="===============3046586166083954538=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============3046586166083954538==
Content-Type: multipart/signed; boundary="==_Exmh_1571935500_59326P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1571935500_59326P
Content-Type: text/plain; charset=us-ascii

On Thu, 24 Oct 2019 09:23:24 -0700, Joe Perches said:

> All well and good, but does converting the error code from
> positive to negative have any impact on any of the code
> paths that use these return values?
>
> 	if (error > 0)
> vs
> 	if (error < 0)

I was keeping an eye open for that, and didn't see any.

An interesting case is the FFS_EOF patch, which fixes an actual bug. If you did
a read for length 0, it would return FFS_EOF (==15) - which would be
interpreted as the number of bytes returned by read().


--==_Exmh_1571935500_59326P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXbHVCwdmEQWDXROgAQK2bxAAoiL4k5jX4a3hoTsKKCckfkYTxrHif6dM
u+mgSh7iFo0wQZvdt+Fyihcy2gPDWR6cEbnuEkgRE5PVyHzGjSJjsLPVB6Vwwyf3
78crIJ+HlIHyr/mjZD3RPs9Nqaev77jojfXupvn83aqcIFtAZ10olVXkNq0ZGWiR
O5x2dfxxH4c8sfDDi+UjBrzNblARpPn59pBT6Ae4CMNJ+Skwe/NIQv8wQrmgMnlQ
dbvbGr8bERy0tbenq4fKIvU8T8cmjaBH1ddceUsdxlTGygKJlSKi2DQuMj180IDd
jN7tcZSPzXnHuyrr6Hy1cwyFnvgj+vMC6hv4Ifl2QUhnUXkBVURa2a2jVXvdnSna
B3dZxniAKAB1xhG/0FNAqBpRFx5hAL5X06LrsgEVTjBzacnq6T0oqp0NSiuzL1UA
8qsZvcHAd6SFhpPtt9PMXcRkCSrjcoGK9Ne9d98HwAShS7tnX5AxyFbKdKBQLZjV
FV7/KmS3O56tmQm4zFblgIAsBk8VjWZyo2roimEWZWTN66TjfUZ/66F0tPFIsHXb
WQRs59YLkRqjzZPxJCTfO3hmjcfUt2je9dkQ8aHeI6NX/r9IFb/V9X/lzyFOsL+1
26Oxy8YWftofOBz/9lwMORSbQa+2Q4bujhaRcHYccKDtkDHps710UJIy4BeJjLps
CjuTWTdQoWc=
=xOuK
-----END PGP SIGNATURE-----

--==_Exmh_1571935500_59326P--

--===============3046586166083954538==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3046586166083954538==--
