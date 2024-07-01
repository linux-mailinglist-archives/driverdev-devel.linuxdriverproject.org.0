Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C6D91D98A
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2024 10:01:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77C3A81BCF;
	Mon,  1 Jul 2024 08:01:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MiSAQYFW0-Cq; Mon,  1 Jul 2024 08:01:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B97EA81B9D
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B97EA81B9D;
	Mon,  1 Jul 2024 08:01:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B9DFF1BF371
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2024 08:01:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A6A3E608D3
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2024 08:01:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dkI6dbjhiMn0 for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2024 08:01:50 +0000 (UTC)
X-Greylist: delayed 640 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 01 Jul 2024 08:01:49 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6C0F2607C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C0F2607C0
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.61.97.94;
 helo=mail.interestingperspective.pl;
 envelope-from=kamil.tralewski@interestingperspective.pl; receiver=<UNKNOWN> 
Received: from mail.interestingperspective.pl (mail.interestingperspective.pl
 [217.61.97.94])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6C0F2607C0
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2024 08:01:49 +0000 (UTC)
Received: by mail.interestingperspective.pl (Postfix, from userid 1001)
 id B82A28378C; Mon,  1 Jul 2024 08:50:59 +0100 (BST)
Received: by mail.interestingperspective.pl for <devel@driverdev.osuosl.org>;
 Mon,  1 Jul 2024 07:50:44 GMT
Message-ID: <20240701074502-0.1.do.1db2m.0.f1r3k6vbeu@interestingperspective.pl>
Date: Mon,  1 Jul 2024 07:50:44 GMT
From: "Kamil Tralewski" <kamil.tralewski@interestingperspective.pl>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.interestingperspective.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=interestingperspective.pl; s=mail; t=1719820259;
 bh=EywM+E+OIUr7RnYatSz3YfoNTVB6dOfImeA7tdj3yJA=;
 h=Date:From:To:Subject:From;
 b=OZBMyxoBX1IVX/KsYXruUgeU5kEQj58S/6o+GGT1C1wJgXRXEfqBJJdWNdTlAAtdG
 AtNegkX+Hkal56Ft0eGgJgihRk+EMNPj9wN3GzYBV+xJp4jWqQ/uWcgqLsofyclth0
 WYVsk/h2hjcPiycPiio3gt2XMrf6NQF79/cvh7Ukj6jGd7UVNI8eE5GWavWIhBxPx7
 pi1xEwQOuyTVQ8nuqise6xQB9pERl2w6JdYqeXPkL6TTwvjDFWD9l50eqgsMRTU6oO
 99DtwXD9eJny9DQksKj0i744sUinjxjM9PQwBqZrGthdxiPnI1dlxFOsVeoLI5Mv/L
 FNhRAMvvDkvkQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=interestingperspective.pl
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=interestingperspective.pl
 header.i=@interestingperspective.pl header.a=rsa-sha256 header.s=mail
 header.b=OZBMyxoB
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
