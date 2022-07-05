Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FA25668B2
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Jul 2022 12:55:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4EAA4175B;
	Tue,  5 Jul 2022 10:54:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B4EAA4175B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cBL7BnrtA26Y; Tue,  5 Jul 2022 10:54:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D8AA4174A;
	Tue,  5 Jul 2022 10:54:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D8AA4174A
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 95C3F1BF314
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 Jul 2022 10:54:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6F5CA4174E
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 Jul 2022 10:54:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F5CA4174E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IxtHpPC-gsdr
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 Jul 2022 10:54:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8CCE44174A
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com
 [IPv6:2607:f8b0:4864:20::d41])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8CCE44174A
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 Jul 2022 10:54:52 +0000 (UTC)
Received: by mail-io1-xd41.google.com with SMTP id h85so10730344iof.4
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 05 Jul 2022 03:54:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=0Xk90BHf6mwPdkYbVeFP81sv99Zzs1R/GjMtspPD45M=;
 b=HYAzqUznFeQQq00SGbwyB/ugrhuWmA3npYmnzCuoSLcip+clx/RJn/RpRq6sdzgMrA
 HC9w8dZlYF/WCCsUAjQUreDKcJ4V67YNw9+P+UUgxiPQfnO61NnMSmGkjgHkH3VeC05n
 pndQuLTBekg2JIcHPbPg8gfurOLHxA6MuYtS32rIV9pchRD2WggiZg1TVAFHbw1tQv+4
 E1zdOXmsbHV2nbTBbVLlhcKzNmgc/zGVYUdN6Fji7i8v/4XUJgqD60XNBVyVvSp0NLSW
 OCHvLUYqrBAtEbBvsZ1pA4ob0zHZDkoKm9zj/XXdD9ZTnCIf9ZRZJaLvZXSTJjjOYCZI
 H8GQ==
X-Gm-Message-State: AJIora9qS95hUck+S90x6sseTscYmLWUv287suOkj0b4McXH+riR+dOj
 3EjH1wle1IPm8qywWaok+Nk5BrhOmoEwShlNMcs=
X-Google-Smtp-Source: AGRyM1uanQz3sM5cZm2GFa9x9QMDU82mOwRSy1HLeLhXJVLxrNJoelSwS2ae75gPBn6xZS9oxoWBBgk2EZvN56JoeTQ=
X-Received: by 2002:a5d:914b:0:b0:672:6629:bfa2 with SMTP id
 y11-20020a5d914b000000b006726629bfa2mr18257826ioq.159.1657018491412; Tue, 05
 Jul 2022 03:54:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6602:168c:0:0:0:0 with HTTP; Tue, 5 Jul 2022 03:54:50
 -0700 (PDT)
From: "Mrs.Rose Raya" <mrsyettybayarmaa005@gmail.com>
Date: Tue, 5 Jul 2022 10:54:50 +0000
Message-ID: <CADETUHE7RUBhhy=NiX52n9YQL7EdYyxVszf8hzuOE9+VhjNiUQ@mail.gmail.com>
Subject: FROM MRS ROSE RAYA
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=0Xk90BHf6mwPdkYbVeFP81sv99Zzs1R/GjMtspPD45M=;
 b=OJ1EBf/PGRNx+fdCf+7d0MP1/C5+rN1jI0Q5MXwTN/kwRsBrYLfrGdqvKpG5xXU9/Z
 woesqwX32lt2CaINqmdhB6OPWXV4dRR/rRyJDMUY3T7jIY0qg8xJC8N8Ryy5pRSBL2Kp
 tOXAr7i5qClk/LUsoV+MA+ACXNG1pMz2h95Wx3Zns+tpO4bMARIKI8UTRJwi/e67R08/
 7a2NZ3eS2LlITkogpki8fWgfZR3IscAIL/zmh1NsnyFWIF3t3Zm+eZDlOIiwKstUf2AC
 /NABFi/d9U2Pwr3z/RU+IB7PQUYX+E78CxG+6F8Y7+m5UL1vysxSvMHxQOLUoWAlLtP1
 RH9A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=OJ1EBf/P
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
