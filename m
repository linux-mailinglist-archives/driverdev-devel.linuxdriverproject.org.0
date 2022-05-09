Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AE351F60B
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 May 2022 09:57:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6ADB740499;
	Mon,  9 May 2022 07:57:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8VKoDodHN2u9; Mon,  9 May 2022 07:57:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 15EDE400EF;
	Mon,  9 May 2022 07:57:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 192331BF2A2
 for <devel@linuxdriverproject.org>; Mon,  9 May 2022 07:57:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 06420405C4
 for <devel@linuxdriverproject.org>; Mon,  9 May 2022 07:57:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4COxtSincLua for <devel@linuxdriverproject.org>;
 Mon,  9 May 2022 07:57:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com
 [IPv6:2607:f8b0:4864:20::144])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 65283400EF
 for <devel@linuxdriverproject.org>; Mon,  9 May 2022 07:57:50 +0000 (UTC)
Received: by mail-il1-x144.google.com with SMTP id y11so8770043ilp.4
 for <devel@linuxdriverproject.org>; Mon, 09 May 2022 00:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=0Xk90BHf6mwPdkYbVeFP81sv99Zzs1R/GjMtspPD45M=;
 b=YDz5f9eghLmGDKrrJm7uRFJn+11daiedD1cSULEtmcrQmNAVkNZ0K0nrrIagkpgogs
 wqdi1L+DweZsbheL5nHO291rtqGUbhbiROoGsOCqq/juc+DEEM7D+5loH9h+D3W13zpz
 oS62mwH3bZX4mOAxj1gxtSxpNjWMuVnCrR+cGX2YJ9OdS98GiTh/vPwdR39sM1diNqdk
 zYX1JvK+guTS+hZzH5f3Vu596q4BbOX0eG/s7AEXY9pXH7SIkMSMfuq4BPhvEsk6kRHq
 TVUZdt1bxRhENwWfvuJL4UiTz4PsZJEdsP8KbfnazZq+I4POdODzHc/4xwyoBOJ1IupN
 31rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=0Xk90BHf6mwPdkYbVeFP81sv99Zzs1R/GjMtspPD45M=;
 b=aVG0E5kIMAtb6KP1L9AORjTojFOzJ2jUHQFYXuEM7BtmpRqCfXn5z9hxg0PB7G/Kan
 VNe6+juhlTbHUirgmZwHEb//wiHcXPOonTlL477YY3nRf2dKJtaBvOiOM39pfaY81U/j
 TUr5LIp54FhpV5LuHHhtcAjSJ72fnaBhuRF//MpfIsMCVA3MtzUM+Euq9fEstKCGc3IR
 +vxJn3RfnVjYO68Bc5o6QFNhUH2VfS61kWRj3djJS8bYIZwYtI6h33x4Szkd7COr0kwc
 AUGG6UBXTqxuCNLl/K8D6dkITIHKsMIlYnBGAf8C4f49Lj8fbE+0Obncz/tMVa3fCO0K
 Ef8w==
X-Gm-Message-State: AOAM533TBxiZwZwmZ8YWrg8nIOLngs9EDOorgp/4pv+qd8iA/kBnz8LS
 wlqtn6UF0Yx4zA4O4e4VZvs/kqz6wvvkQ7GxLuc=
X-Google-Smtp-Source: ABdhPJwlkNysofi1Y1tl4kyVmXesxQnSX0eDNENVrB4/5Il6UWDFGKEm4cG83drG4FqOyjBMJjv9aU1z4yEtjAs6IKc=
X-Received: by 2002:a05:6e02:128e:b0:2cd:aeb3:ab6 with SMTP id
 y14-20020a056e02128e00b002cdaeb30ab6mr5823938ilq.291.1652083069166; Mon, 09
 May 2022 00:57:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6e02:1be1:0:0:0:0 with HTTP; Mon, 9 May 2022 00:57:48
 -0700 (PDT)
From: "Mrs.Rose Raya" <drzackwilliams@gmail.com>
Date: Mon, 9 May 2022 07:57:48 +0000
Message-ID: <CAAvHn07QmWFRov6kenKSVAc3DFcNLajKh-a6s4rpSQ0ePDk7rw@mail.gmail.com>
Subject: FROM MRS ROSE RAYA
To: undisclosed-recipients:;
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
