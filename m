Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 798989659E3
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2024 10:16:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB286410FA;
	Fri, 30 Aug 2024 08:16:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KffyVk7z0Jsm; Fri, 30 Aug 2024 08:16:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B76EB410C6
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B76EB410C6;
	Fri, 30 Aug 2024 08:16:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2DCDE1BF844
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2024 08:16:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1A78541E8A
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2024 08:16:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vIrqgATrZm6E for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2024 08:16:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.61.97.94;
 helo=mail.originateinc.pl; envelope-from=kamil.tralewski@originateinc.pl;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 18FD442390
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18FD442390
Received: from mail.OriginateInc.pl (mail.originateinc.pl [217.61.97.94])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 18FD442390
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2024 08:16:27 +0000 (UTC)
Received: by mail.OriginateInc.pl (Postfix, from userid 1001)
 id CEA7A8706C; Fri, 30 Aug 2024 09:16:17 +0100 (BST)
Received: by mail.OriginateInc.pl for <devel@driverdev.osuosl.org>;
 Fri, 30 Aug 2024 08:16:10 GMT
Message-ID: <20240830074502-0.1.ev.1mkjw.0.a6yxujgdxt@OriginateInc.pl>
Date: Fri, 30 Aug 2024 08:16:10 GMT
From: "Kamil Tralewski" <kamil.tralewski@originateinc.pl>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.OriginateInc.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=OriginateInc.pl; s=mail; t=1725005781;
 bh=EywM+E+OIUr7RnYatSz3YfoNTVB6dOfImeA7tdj3yJA=;
 h=Date:From:To:Subject:From;
 b=qBa4QXPM3Ag0uKBXh0yufArSJl5u9KFz0kfNXi/toGwYbfJ0Es2ogfs3DFqzogLMJ
 CGiQ7FJvLqrfo1e33o99fPGcIwZfTKF+U56hN59vs3GybnuS5dB4vlewj1qARAXmRm
 vXsI33p4szkxb9l6aUiNTxO+gJYv0KGxM5koIAdXecKuZjo+FgsJd1aqyXHNjplvLY
 6t1J1mVErfTTUtdxYj+UMDzwY1f6DTnmjp8rbqeqYqzp5xEsEwXwd/Q/Tt1UYxz9Y1
 xk5UamDS8C/2oJSqWS635Ce75iQGrxN4nGX9PFVt6ouqBFbUUzaMwxYle2M+kiochT
 XF5tk/Sh0yNWQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=originateinc.pl
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=OriginateInc.pl header.i=@OriginateInc.pl
 header.a=rsa-sha256 header.s=mail header.b=qBa4QXPM
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
