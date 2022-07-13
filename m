Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 422D8572A2F
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Jul 2022 02:18:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4AAB2419F3;
	Wed, 13 Jul 2022 00:18:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AAB2419F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SABSEYrV1SRM; Wed, 13 Jul 2022 00:18:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93D194152D;
	Wed, 13 Jul 2022 00:18:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93D194152D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ADB811BF303
 for <devel@linuxdriverproject.org>; Wed, 13 Jul 2022 00:18:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 964A3612DD
 for <devel@linuxdriverproject.org>; Wed, 13 Jul 2022 00:18:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 964A3612DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X3mUa8N3DW-z for <devel@linuxdriverproject.org>;
 Wed, 13 Jul 2022 00:18:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 057A161297
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com
 [IPv6:2607:f8b0:4864:20::112f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 057A161297
 for <devel@driverdev.osuosl.org>; Wed, 13 Jul 2022 00:17:59 +0000 (UTC)
Received: by mail-yw1-x112f.google.com with SMTP id
 00721157ae682-31c8bb90d09so97599327b3.8
 for <devel@driverdev.osuosl.org>; Tue, 12 Jul 2022 17:17:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=1b1gZlD2v8w18PFB4FrnSuBVvB7o7pJf9Kk8qB/LhuE=;
 b=sT+VGkRrdp4x+yjvC0qNVZu93rM8MLogti8i1xYHlNg3yhoBc641BlDT/I7Tpxe0xY
 FAmSEX7gSU1PrLSx34v3d6LjR7idOANCfr2LBQRjDIFOQUvPKZYDBDYxztOo00TeASjh
 bZhU+XUtYA4akPaH23p2BdiWb9zgNSGPtlXxXBnM9ro6PeoGT4SZ2Uj9qOdIzsJJ1LFR
 Z50VIFW0q5MMZTVI7n2vCo0f6KIVBqHfKdggT9DE7AEoGSV/nIemkMdsw6qGpZN0vZmt
 /lf5ELA/nYgUnuP8EHRfsQCvnH0Kx5som2SXOkO/tZkMcdFCEWXeFNrc7mpuSJJWv6tQ
 go4g==
X-Gm-Message-State: AJIora/uf6Gv7tEI+57bRyfWQfFwWLKYVp2UD0Gm3IK4pASwyWsLkHZF
 H9ciUi8nif9cWR4QfL0gc1fK8zs7Wdg/WN+kPJ8=
X-Google-Smtp-Source: AGRyM1tTEEcn2RSXdFv2kBSDOlsX1WLCDxEWHGDLn4K/9uk7ZsFbmtYj0gNQRlIFkLqtB2dW2nlNfgs65RxD7aedTVA=
X-Received: by 2002:a81:8642:0:b0:317:7c68:e517 with SMTP id
 w63-20020a818642000000b003177c68e517mr1098529ywf.41.1657671478904; Tue, 12
 Jul 2022 17:17:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6918:381:b0:cc:1e5d:21bc with HTTP; Tue, 12 Jul 2022
 17:17:58 -0700 (PDT)
From: Omar Arouna 500 <wilfriedemile@gmail.com>
Date: Tue, 12 Jul 2022 17:17:58 -0700
Message-ID: <CAAzJ4BidmG5wU70fjWC0Lky-wL0hHe1HXfEVyuUun5X2yonDCw@mail.gmail.com>
Subject: good morning
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=1b1gZlD2v8w18PFB4FrnSuBVvB7o7pJf9Kk8qB/LhuE=;
 b=lBIbyDLqsjQfC6BPM4Fsyi4A9jxn5gzDkW8deNXQu0bQhpUuImounFfVKxfNmaFtpv
 lZxY+RAqhvaTaaAiraKKe37Ev+scQbpHa1RHcsdx27B2K1rvlXI3/TO3aRa0HVjkBIgA
 SGnFkUR2Vs2t/AXG4DKBsx5oNXDVQ44Z5yGsgv1lgLlfxjdq27vnxYRjvDpeB6ELjxIj
 SilDZsNMAnGJZO2uYs8O5osQ7nPKenzBkAJMWfbuhToPiy9FUgrenc+Ka1V7ja2p8k45
 j6+Z7TOkwM1LcIzqzkXIBdhqA6eAJl73qB0mPztHavXgjBOMz0bwI5hc+Ji9BB6jp0gG
 fJww==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=lBIbyDLq
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
Reply-To: omar.arouna500@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Z29vZCBtb3JuaW5nCgpEZWFyIEZyaWVuZAoKUGxlYXNlCgogbXkgbmFtZSBpcyBNci4gT21hciBB
cm91bmEgZnJvbSBCdXJraW5hIEZhc28gYW5kIEkKd29yayB3aXRoIFVuaXRlZCBiYW5rIGZvciBB
ZnJpY2EgKFVCQSkgYXMgYWN0aW5nIGhlYWQgb2YgZmluYW5jZS4gSQpjb250YWN0ZWQgeW91IGlu
IGdvb2QgZmFpdGggYW5kIEkgYW0gb3B0aW1pc3RpYyB0aGF0IHRoZSBzdWNjZXNzIG9mCnRoaXMg
dHJhbnNhY3Rpb24gd2lsbCBnbyBhIGxvbmcgd2F5IHRvIHVwbGlmdCBvdXIgZmluYW5jaWFsIHN0
YXR1cyBpbgpubyBkaXN0YW50IHRpbWUuCgpIb3dldmVyLCBvbmUgb2Ygb3VyIGRlY2Vhc2VkIGN1
c3RvbWVycyBmcm9tIE1hbGF5c2lhIGFiYW5kb25lZCB0aGUgc3VtCm9mICQxMS45IG1pbGxpb24g
aW4gb3VyIGJhbmsgc2luY2UgMjAxMywgYW5kIGFjY29yZGluZyB0byB0aGUgZmluYW5jaWFsCmFj
dCBteSBnb3Zlcm5tZW50IGhhcyBldmVyeSByaWdodCB0byBjb25maXNjYXRlIGZ1bmRzIGluIHVu
Y2xhaW1lZApiYW5rIGFjY291bnQvdW5hdHRlbmRlZCBhZnRlciA4IHllYXJzLCBpdOKAmXMgaW4g
dGhpcyByZWdhcmQgdGhhdCBJIHdhbnQKdG8gY29tbWlzc2lvbiB0aGlzIGZ1bmQgdG8geW91IHNv
IHRoYXQgeW91IHdpbGwgc3RhbmQgYXMgYXNzb2NpYXRlIHRvCnRoZSBkZWNlYXNlZCBjdXN0b21l
ciBhbmQgY2xhaW0gdGhpcyBmdW5kIGZyb20gbXkgYmFuayBhZnRlciB3aGljaCB3ZQp3aWxsIHNo
YXJlIGl0IGF0IHRoZSByYXRpbyBvZiA0MCUgZm9yIHlvdSBhbmQgNjAlIGZvciBtZS5QbGVhc2UK
CnlvdSBvbiBob3cgdG8gYXBwbHkgdG8gbXkgYmFuayBmb3IgdGhlIHRyYW5zZmVyIG9mIHRoaXMg
ZnVuZAppbnRvIHlvdXIgcGVyc29uYWwgYmFuayBhY2NvdW50LiBJIGhvcGUgdG8gaGVhciBmcm9t
IHlvdSBzb29uLgoKKDEpIFlvdXIgRnVsbCBOYW1lLAoKKDIpIFNleCBhbmQgQWdlOgoKKDMpIENv
dW50cnkgb2Ygb3JpZ2luOgoKKDQpIFJlc2lkZW50aWFsIGFkZHJlc3M6CgooNSkgUGhvbmUgbnVt
YmVyOgoKKDYpIE9jY3VwYXRpb246CgpCZXN0IHJlZ2FyZHMsCgpNci4gT21hciBBcm91bmEuCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxp
bmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
