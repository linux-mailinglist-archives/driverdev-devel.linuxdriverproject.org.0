Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 272DB56C988
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 Jul 2022 15:29:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 53F20401A3;
	Sat,  9 Jul 2022 13:29:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 53F20401A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gh11CrMxhLaa; Sat,  9 Jul 2022 13:29:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EDD66401A2;
	Sat,  9 Jul 2022 13:29:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EDD66401A2
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 731CD1BF3FB
 for <devel@linuxdriverproject.org>; Sat,  9 Jul 2022 13:29:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5AAF1401A3
 for <devel@linuxdriverproject.org>; Sat,  9 Jul 2022 13:29:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5AAF1401A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UOGmrKAcg6T6 for <devel@linuxdriverproject.org>;
 Sat,  9 Jul 2022 13:29:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA1C2401A2
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com
 [IPv6:2607:f8b0:4864:20::b43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AA1C2401A2
 for <devel@driverdev.osuosl.org>; Sat,  9 Jul 2022 13:29:42 +0000 (UTC)
Received: by mail-yb1-xb43.google.com with SMTP id g4so1916128ybg.9
 for <devel@driverdev.osuosl.org>; Sat, 09 Jul 2022 06:29:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=0Xk90BHf6mwPdkYbVeFP81sv99Zzs1R/GjMtspPD45M=;
 b=5/dhVTZJFAQLgMlQzj/6GiIX3yGsgkxQe7gaNvqzsOjfvvdN1SgzcEYu3sba+52F+B
 /5bnekjdCmD4nkLlDc1SlsdkLhKgXt2MuK5K3e6uPAvaUuWW9RN6L2DfeIBLqGkJyutv
 4Ax1XKoyYQCfTy2zBgEdROnmOhnre9HoH5hlQg6MFTg1CCc+aIAZSrgPABhTNS1YUv3Y
 uCYEsvi2VE3i8JwM+SKkTe3+DXR5+agVFzwyGDBEUo5J8USi8rkdhPV3X3133kR1trrN
 NcE+/UG3Ur4AYndk/9NDwVCNKTCHouEBD9FNN2ByVn+J44SwrttR4OlN+/FY8qTs4uEg
 J1wA==
X-Gm-Message-State: AJIora9yJQ7GQtJ9YTdipZ364tGB3al9XK/M0G4P02bikorV6IZQiEyw
 Pg9tB6s48Qq+baVwFRRmHA109GTv1p25EZVeAaI=
X-Google-Smtp-Source: AGRyM1u00mYIgrx+D6CcxEAHJAtYNPXkjb68ioA6rKdJfd8HElH4EX45MUkK9JrlGPWY8ou3gak/Ke2zhedg9V/RlZI=
X-Received: by 2002:a25:f808:0:b0:66e:4eb2:bd98 with SMTP id
 u8-20020a25f808000000b0066e4eb2bd98mr8987081ybd.212.1657373381040; Sat, 09
 Jul 2022 06:29:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7010:640f:b0:2df:49bd:15fb with HTTP; Sat, 9 Jul 2022
 06:29:40 -0700 (PDT)
From: "Mrs.Rose Raya" <okumajudith2@gmail.com>
Date: Sat, 9 Jul 2022 13:29:40 +0000
Message-ID: <CAJyRuTKKNH5t1UEHkArU_0K965JGOUYWRuBOpaHOTd1r5DVWfA@mail.gmail.com>
Subject: FROM MRS ROSE RAYA
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=0Xk90BHf6mwPdkYbVeFP81sv99Zzs1R/GjMtspPD45M=;
 b=etBoNiMYbShf4m/8VEvMXWUZpzeS+aWYUZAiAVbIRV+edfCQINXeQYDj7sAacdtUoi
 afJDzPDLpM3B9IYPQzu7pLt7nUsIoAAz54kwISbQp4aciwo5gDaDDX+EDKZ8+Bz4OOJP
 BjxztBnXbGgLeYWfME+ZljL5+Z7CAJmmpwNgC+GJ54ePuRkjP1VIxNjlglIvz2tUwT8L
 1Huxi63qW5Y0xlBSUz5OmidSpD0Eroo1navKGYXq5zqa1B6oADuXew7w+JkElcE/V1kx
 zS0YB6ufzsJLXZ+2/GBQgbIf25nkanIik7I932mQPIImHUOPC80Rbuvp7m6gQU5NqoQS
 kQXw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=etBoNiMY
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
Reply-To: mmrsroseraya@gmail.com
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
