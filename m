Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3F156CF4B
	for <lists+driverdev-devel@lfdr.de>; Sun, 10 Jul 2022 15:39:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DEE3B408C9;
	Sun, 10 Jul 2022 13:39:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DEE3B408C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F_SJc9gPWITg; Sun, 10 Jul 2022 13:39:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 71E7740232;
	Sun, 10 Jul 2022 13:39:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 71E7740232
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2FAFE1BF429
 for <devel@linuxdriverproject.org>; Sun, 10 Jul 2022 13:39:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 03C8760E35
 for <devel@linuxdriverproject.org>; Sun, 10 Jul 2022 13:39:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03C8760E35
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hZ2pHo1Ht3H0 for <devel@linuxdriverproject.org>;
 Sun, 10 Jul 2022 13:39:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4785260A94
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com
 [IPv6:2607:f8b0:4864:20::d44])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4785260A94
 for <devel@driverdev.osuosl.org>; Sun, 10 Jul 2022 13:39:46 +0000 (UTC)
Received: by mail-io1-xd44.google.com with SMTP id p128so2899267iof.1
 for <devel@driverdev.osuosl.org>; Sun, 10 Jul 2022 06:39:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=0Xk90BHf6mwPdkYbVeFP81sv99Zzs1R/GjMtspPD45M=;
 b=xiQHt7xbjOsd7JaZi2hyWBnjHPqR1DiKeeQOrGkq5/JKw/bFy12dMnOuCIjd3NLR0V
 syG9W42WnWR8BExSfg//nb5rU2nw/6OiddS0CJsJzaJ9pBg1um0MmP1LxI1vOtLiXtz3
 OIqkGhLsRMGGg31sP+4Jd/Jbhc4n8Ctpqa90bawl5Rjru7ZGmTSaRwzWRAYuqx4aWrOd
 +1w2jaHcmaIwgnISi2utNdYlN6Ye6RIvYs0UqvpWqhZ4UUZFpUl7Q8cXqZgw5UXheSj3
 sXRt5JvHZGHA3ryIEEmEF7cxE+ghjRJNQwJUA7yGVfJgeeA4N1RJlCl1F5oLordLE1v/
 s08w==
X-Gm-Message-State: AJIora9q54RvJSwM+aggvGPsmiMPTdEk7Cexd5S/0wkfundgXVoAqKwB
 Kuymbf2sXjw9R0z22wdBjUm+EA89pJEsIoCL2P8=
X-Google-Smtp-Source: AGRyM1tdZgGfbwoNGusTDPtVAuWGSOXeJmgYzaTBihF1jJKrKF3q4lV7RKqTIaP8J7l9XYpb5/XLNOY2xgLg4QMNCCI=
X-Received: by 2002:a5d:914b:0:b0:672:6629:bfa2 with SMTP id
 y11-20020a5d914b000000b006726629bfa2mr7154974ioq.159.1657460384971; Sun, 10
 Jul 2022 06:39:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6602:168c:0:0:0:0 with HTTP; Sun, 10 Jul 2022 06:39:44
 -0700 (PDT)
From: "Mrs.Rose Raya" <mrsyettybayarmaa005@gmail.com>
Date: Sun, 10 Jul 2022 13:39:44 +0000
Message-ID: <CADETUHFR97kw+Jo+LN4_LBf=xN1CXCcKjXJ29kuCfib-biZA6w@mail.gmail.com>
Subject: FROM MRS ROSE RAYA
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=0Xk90BHf6mwPdkYbVeFP81sv99Zzs1R/GjMtspPD45M=;
 b=jngARs/aN3Mjdc1ABjEeR9xbvML6TG1gwBBd4V1fDpF8l9FDGf0YUxDBE8hrAwPX0X
 28Uj8Zb640RhVn9f0AHaGfEsTZIoM0F1ZzCUpI/1V56nHcaWpMvuuuooFa2DEu4Dm5vp
 5wBmEchXR90kQ56qXXhrNtxo8k3YbRQYAP4Jc88ykCw3GO9lSkq76c1bprvlAKp3tWkH
 QwiQm0K+6khnwNfSNW2FmMrn0kS9x6+DucxaKBxS8boq87e0bw7Uz1hzE3BX5Dr3qOQ6
 Ee+EPMVSAsdYTDJy4Y8I3g8TLtoDpnesmizHIZ4dT/ltHNxQ/WumGBdAFZ5rBFsk/Nwe
 LJqA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=jngARs/a
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
Reply-To: mrsroseraya32@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TXkgbmFtZSBpcyBNcnMuUm9zZSBSYXlhLmZyb20gSW5kb25lc2lhLAoKSSBrbm93IHRoYXQgdGhp
cyBtZXNzYWdlIG1pZ2h0IGNvbWUgdG8geW91IGFzIGEgc3VycHJpc2UgYmVjYXVzZSB3ZQpkb24n
dCBrbm93IGVhY2ggb3RoZXIgbm9yIGhhdmUgd2UgZXZlciBtZXQgYmVmb3JlIGJ1dCBhY2NlcHQg
aXQgd2l0aAphbiBvcGVuIGFuZCBwb3NpdGl2ZSBtaW5kLiBJIGhhdmUgYSBWZXJ5IGltcG9ydGFu
dCByZXF1ZXN0IHRoYXQgbWFkZQptZSB0byBjb250YWN0IHlvdTsgSSB3YXMgZGlhZ25vc2VkIHdp
dGggb3ZhcmlhbiBjYW5jZXIgZGlzZWFzZSB3aGljaApkb2N0b3JzIGhhdmUgY29uZmlybWVkIGFu
ZCBhbm5vdW5jZWQgdG8gbWUgdGhhdCBpIGhhdmUganVzdCBmZXcgZGF5cwp0byBsZWF2ZSwgTm93
IHRoYXQgSeKAmW0gZW5kaW5nIHRoZSByYWNlIGxpa2UgdGhpcywgd2l0aG91dCBhbnkgZmFtaWx5
Cm1lbWJlcnMgYW5kIG5vIGNoaWxkLCBJIGp1c3QgY2FtZSBhY3Jvc3MgeW91ciBlbWFpbCBjb250
YWN0IGZyb20gbXkKcGVyc29uYWwgc2VhcmNoLgoKSeKAmW0gYSBidXNpbmVzcyB3b21hbiBmcm9t
IEluZG9uZXNpYSBkZWFsaW5nIHdpdGggZ29sZCBleHBvcnRhdGlvbiBoZXJlCmluIHRoZSBSZXB1
YmxpYyBvZiBCdXJraW5hIEZhc28uIEkgaGF2ZSBkZWNpZGVkIHRvIGhhbmQgb3ZlciB0aGUgc3Vt
Cm9mICgkMTAuNSBNaWxsaW9uIERvbGxhcikgaW4gbXkgYWNjb3VudCB0byB5b3UgZm9yIHRoZSBo
ZWxwIG9mCm9ycGhhbmFnZSBob21lcy90aGUgbmVlZHkgb25jZSBpbiB5b3VyIGxvY2F0aW9uIHRv
IGZ1bGZpbGwgbXkgd2lzaCBvbgplYXJ0aC4gQnV0IGJlZm9yZSBoYW5kaW5nIG92ZXIgbXkgZGF0
YeKAmXMgdG8geW91LCBraW5kbHkgYXNzdXJlIG1lIHRoYXQKeW91IHdpbGwgdGFrZSBvbmx5IDUw
JSBvZiB0aGUgbW9uZXkgYW5kIHNoYXJlIHRoZSByZXN0IHRvIG9ycGhhbmFnZQpob21lcy90aGUg
bmVlZHkgb25jZSBpbiB5b3VyIGNvdW50cnksIFJldHVybiB0byBlbmFibGUgbWUgZm9yd2FyZCB0
bwp5b3UgdGhlIGJhbmsgY29udGFjdCBkZXRhaWxzIG5vdyB0aGF0IEkgaGF2ZSBhY2Nlc3MgdG8g
SW50ZXJuZXQgaW4gdGhlCmhvc3BpdGFsIHRvIGVuYWJsZSB5b3UgY29udGFjdCB0aGUgYmFuaywg
YWx3YXlzCmNoZWNrIHlvdXIgZW1haWwgYW5kIHJlcGx5IGluIHRpbWUgZm9yIGJldHRlciBjb21t
dW5pY2F0aW9ucy4KClBMRUFTRSBSRVBMWSBNRSBXSVRIIFRIRSBBTlNXRVJTIFRPIFRIT1NFIFFV
RVNUSU9OUyBCRUxPVyBGT1IgTVkKQ09ORklSTUFUSU9OIFNPIFRIQVQgSSBDQU4gR0lWRSBZT1Ug
VEhFIEVNQUlMIEFERFJFU1MgT0YgVEhFIEJBTksgRk9SIFlPVQpUTyBDT05UQUNUIFRIRU0uCgox
LiBGVUxMIE5BTUU6CjIuIFlPVVIgQUdFOgozLiBTRVg6CjQuIE5BVElPTkFMSVRZOgo1LiBDT1VO
VFJZIE9GIFJFU0lERU5DRToKNi4gVEVMRVBIT05FIE5VTUJFUjoKNy4gWU9VUiBNQVJJVEFMIFNU
QVRVUzoKOC4gWU9VUiBPQ0NVUEFUSU9OOgo5LiBTRU5EIFRPIE1FIFlPVVIgUElDVFVSRToKMTAu
IFlPVSBIQVZFIFRPIEFTU1VSRSBNRSBZT1UgV0lMTCBBQ1QgQVMgSSBIQVZFIElOU1RSVUNURUQg
WU9VIElGIFRIRQpNT05FWSBHRVRTIFRPIFlPVVIgQkFOSyBBQ0NPVU5ULgoKWW91ciBlYXJseSBy
ZXNwb25zZSB3aWxsIGJlIGFwcHJlY2lhdGVkLgpZb3VycyBGYWl0aGZ1bGx5LApNcnMuUm9zZSBS
YXlhLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
