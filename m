Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F1492E10F
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Jul 2024 09:43:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0599B404F7;
	Thu, 11 Jul 2024 07:43:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eRu7juSQ54Qq; Thu, 11 Jul 2024 07:43:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00F15404A9
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00F15404A9;
	Thu, 11 Jul 2024 07:43:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 09FE31BF863
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2024 07:43:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EBCA2402D7
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2024 07:43:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hcikaTVtU-Ov for <devel@linuxdriverproject.org>;
 Thu, 11 Jul 2024 07:43:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.61.97.94;
 helo=mail.interestingperspective.pl;
 envelope-from=kamil.tralewski@interestingperspective.pl; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C4C5240251
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4C5240251
Received: from mail.interestingperspective.pl (mail.interestingperspective.pl
 [217.61.97.94])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C4C5240251
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2024 07:43:35 +0000 (UTC)
Received: by mail.interestingperspective.pl (Postfix, from userid 1001)
 id 7C66A84E18; Thu, 11 Jul 2024 08:42:22 +0100 (BST)
Received: by mail.interestingperspective.pl for <devel@driverdev.osuosl.org>;
 Thu, 11 Jul 2024 07:41:13 GMT
Message-ID: <20240711074505-0.1.dw.1db2m.0.0d6r93b3fy@interestingperspective.pl>
Date: Thu, 11 Jul 2024 07:41:13 GMT
From: "Kamil Tralewski" <kamil.tralewski@interestingperspective.pl>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.interestingperspective.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=interestingperspective.pl; s=mail; t=1720683763;
 bh=EywM+E+OIUr7RnYatSz3YfoNTVB6dOfImeA7tdj3yJA=;
 h=Date:From:To:Subject:From;
 b=0osbTEhstsyJYv04l3VjN56wJZrpKbVsAiTV0WaUuCjLgXZvGQLck1jR4gsxrIzpK
 gxI3I2qAVFs0YtsABoym/OpX4IHH751Z8jjok81G1yxcpE/QTazs39eFSp0OQTZM2U
 U6qSpoJxMR1pu4ROupzIkjn8iNS/iEQmsjgFU8W14M4fzUcl5/LC7mzp6MKcQrmNGG
 c4jhYe6Gdd9dXZQmrsXTUtF88k+7CeHUc0SFcBTpnaC91qVf7E6EspnSQUPfp2UfW+
 Txm/oVV6BP8xB/okJXSiT/Hp3FvvasbkFUd/NheLzT0H4oTECnirwOrjt08MiyNcA2
 fVt3naqYGuu9w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=interestingperspective.pl
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=interestingperspective.pl
 header.i=@interestingperspective.pl header.a=rsa-sha256 header.s=mail
 header.b=0osbTEhs
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
