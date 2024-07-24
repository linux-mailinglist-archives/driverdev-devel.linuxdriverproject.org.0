Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B7F93AD82
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2024 09:54:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7274A811CC;
	Wed, 24 Jul 2024 07:54:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id toX9RC_rtzNO; Wed, 24 Jul 2024 07:54:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 085128118D
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 085128118D;
	Wed, 24 Jul 2024 07:54:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0A8211BF280
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2024 07:54:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E9BF98102D
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2024 07:54:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b-Cyp34GE_91 for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2024 07:54:03 +0000 (UTC)
X-Greylist: delayed 457 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 24 Jul 2024 07:54:02 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6EF3780FFF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6EF3780FFF
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.61.97.94;
 helo=mail.originateinc.pl; envelope-from=kamil.tralewski@originateinc.pl;
 receiver=<UNKNOWN> 
Received: from mail.OriginateInc.pl (mail.OriginateInc.pl [217.61.97.94])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6EF3780FFF
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2024 07:54:02 +0000 (UTC)
Received: by mail.OriginateInc.pl (Postfix, from userid 1001)
 id D9E6284D2D; Wed, 24 Jul 2024 08:46:15 +0100 (BST)
Received: by mail.OriginateInc.pl for <devel@driverdev.osuosl.org>;
 Wed, 24 Jul 2024 07:45:55 GMT
Message-ID: <20240724074503-0.1.e5.1db2m.0.33igoqrm10@OriginateInc.pl>
Date: Wed, 24 Jul 2024 07:45:55 GMT
From: "Kamil Tralewski" <kamil.tralewski@originateinc.pl>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.OriginateInc.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=OriginateInc.pl; s=mail; t=1721807180;
 bh=EywM+E+OIUr7RnYatSz3YfoNTVB6dOfImeA7tdj3yJA=;
 h=Date:From:To:Subject:From;
 b=e7gxc1VpqGAi2Ak13ly+dC2liGMnhX81ZxqnzG5p1ZWEtv73VRavDpXmv3kI5xZLM
 c0LEoeKmZ7q77gzutgwwb4e7AeDWd/HwpFeNPkT1ADw3ksuqoL1dZImMo0yRy44tJv
 KT4Bc1pHb5BIaozynV81aMSKJ4Ycmi1y6l9Bb5rIVd0axGA8T/Iv3R7n2U17+gEu82
 Ko0yt2WXLWy/jUthrtaSQ6G7fzIXXH9ydpJVaQ4ge7ZZ3l5nqWhEomhf3dqKrF4Wqr
 DL/kOIXnZM7BBrEISM9upNUOVCG1GYG/mAK4Cbt+twYoWE9B2OXqps9KYaEwUCEMOZ
 mZVAH4m0fH0mw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=originateinc.pl
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=OriginateInc.pl header.i=@OriginateInc.pl
 header.a=rsa-sha256 header.s=mail header.b=e7gxc1Vp
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RHppZcWEIGRvYnJ5LAoKemFwb3puYcWCZW0gc2nEmSB6IFBhxYRzdHdhIG9mZXJ0xIUgaSB6IHBy
enlqZW1ub8WbY2nEhSBwcnp5em5hasSZLCDFvGUgcHJ6eWNpxIVnYSB1d2FnxJkgaSB6YWNoxJlj
YSBkbyBkYWxzenljaCByb3ptw7N3LiAKClBvbXnFm2xhxYJlbSwgxbxlIG1vxbxlIG3Ds2fFgmJ5
bSBtaWXEhyBzd8OzaiB3a8WCYWQgdyBQYcWEc3R3YSByb3p3w7NqIGkgcG9tw7NjIGRvdHJ6ZcSH
IHogdMSFIG9mZXJ0xIUgZG8gd2nEmWtzemVnbyBncm9uYSBvZGJpb3Jjw7N3LiBQb3p5Y2pvbnVq
xJkgc3Ryb255IHd3dywgZHppxJlraSBjemVtdSBnZW5lcnVqxIUgxZt3aWV0bnkgcnVjaCB3IHNp
ZWNpLgoKTW/FvGVteSBwb3Jvem1hd2lhxIcgdyBuYWpibGnFvHN6eW0gY3phc2llPwoKClBvemRy
YXdpYW0KS2FtaWwgVHJhbGV3c2tpCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
