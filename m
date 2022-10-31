Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 75642613318
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Oct 2022 10:54:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D95C28109C;
	Mon, 31 Oct 2022 09:54:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D95C28109C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id juvrblhxsuXg; Mon, 31 Oct 2022 09:54:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 893E9812DA;
	Mon, 31 Oct 2022 09:54:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 893E9812DA
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 07B211BF358
 for <devel@linuxdriverproject.org>; Mon, 31 Oct 2022 09:54:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D6FAE60B26
 for <devel@linuxdriverproject.org>; Mon, 31 Oct 2022 09:54:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D6FAE60B26
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yzzj-WMKHoZS for <devel@linuxdriverproject.org>;
 Mon, 31 Oct 2022 09:54:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F3CC60B24
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com
 [IPv6:2607:f8b0:4864:20::112f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2F3CC60B24
 for <devel@driverdev.osuosl.org>; Mon, 31 Oct 2022 09:54:25 +0000 (UTC)
Received: by mail-yw1-x112f.google.com with SMTP id
 00721157ae682-3701a0681daso68201857b3.4
 for <devel@driverdev.osuosl.org>; Mon, 31 Oct 2022 02:54:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:sender
 :reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HimZc8yramtrHBkHsNskSIVkCsBkqEjbz+TPQpvnPJY=;
 b=2D0Evgk5EU2P/VUPZLJ3Z6M7zmmVmnsKXzN8Xmr00Khl9a5yfc0fKsS4EukRZWHZU2
 C9mWLivaLQjbkwdPxbjFI4y+Cspvx/iVYjQYvvE+glx0uX4FvZng3X4BIHTU+WPzLdjB
 rmKDW0bEnLjBMA+OzCvgMpdjTAzf06i6wmq7QYfm206dyFp+XvISehPg0JIQErq4BmTw
 kIT/ME4NfHWeef2VBkgF8Yoq9TOz5nX1u0qL9leBnWShstabF9fBIxCEKnC8U9MdP6DG
 0VP8rbyrPPjLwFuDpQqkVAkZkzj+rlUbIOYK7DdEZ6QN+nLedfYt1Hm4gBFIjklnxr3F
 gsuQ==
X-Gm-Message-State: ACrzQf26BXsCHJ/80RGkWFBGv/6uDtPq9GYvc5jhTUGuxTp83aAsRy4m
 y91WxOp9YVyDCNSdague0IfswRT+hFRONgReCaU=
X-Google-Smtp-Source: AMsMyM441entq3LEeXmiR0esH0UKhExoFSIosugWHaOBQrMSFRSxvJM54IaP5N1GxsJLnSNCBq8Sj2UDEB1HEBhMFPw=
X-Received: by 2002:a81:b04d:0:b0:370:45f7:4e15 with SMTP id
 x13-20020a81b04d000000b0037045f74e15mr8316707ywk.151.1667210065015; Mon, 31
 Oct 2022 02:54:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6900:26f2:0:0:0:0 with HTTP; Mon, 31 Oct 2022 02:54:24
 -0700 (PDT)
From: Alyona Degrik <alyonadegrik1@gmail.com>
Date: Mon, 31 Oct 2022 02:54:24 -0700
X-Google-Sender-Auth: CFQlWYcz5rake0HRHLhCPx6XvBM
Message-ID: <CALfOMd0UKgaygGORz2SkhpnEowLeySN0V6P9HUsA5D2aNBHDEg@mail.gmail.com>
Subject: Hilf mir, bitte
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:sender
 :reply-to:mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=HimZc8yramtrHBkHsNskSIVkCsBkqEjbz+TPQpvnPJY=;
 b=W/aRLbJpYD8MnZfNvmR4ze9jOPEYZ7oIBB8aFR+aELmGQD4FcxYK5Dxb/hm8+zRkO6
 wf3DYr635dMPkMg+t1KcZ8ncJQyPQgacpzCl3xaFN/YFi9HDXKf6MyNWhQ0ekzrpvCKs
 SJ1yWBdKaYZ8zlximZe5aY/mpm4LkvSnzWXp9H/i1hTcyRO5l6jx3M0ZLu5NFEZnXO42
 KBfzcBuPon+SPAuca+6yTz+XeAryiQgvG/JzRuQK/r0+OJDD5rxpGcOCJpBlbETLozOS
 TsSpk1R5ktzpGoevS+KLyV7VrGj4WY5IkOnc8A0aIORwzdpiYh9cXK9JSmXXCM6BMknI
 6jRw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=W/aRLbJp
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
Reply-To: alyonadegrik@yandex.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TGllYmVyIEZyZXVuZCwKCkJpdHRlIHNjaMOkbWVuIFNpZSBzaWNoIG5pY2h0LCBTaWUgw7xiZXIg
ZGllc2VzIE1lZGl1bSB6dSBrb250YWt0aWVyZW47Ck1laW4gWmllbCBpc3QgZXMsIGVpbmUgdHJh
Z2bDpGhpZ2UgR2VzY2jDpGZ0c2JlemllaHVuZyBtaXQgSWhuZW4gaW4KSWhyZW0gTGFuZCBhdWZ6
dWJhdWVuLgoKSWNoIGJpbiBGcmF1IEFseW9uYSBEZWdyaWsgYXVzIEtpZXcgKFVrcmFpbmUpOyBJ
Y2ggd2FyIEVpZ2VudMO8bWVyaW4KdW5kIEdlc2Now6RmdHNmw7xocmVyaW4gdm9uIExFT0dBTUlO
RywgYmV2b3IgUnVzc2xhbmQgaW4gbWVpbiBMYW5kCmVpbm1hcnNjaGllcnRlLiBJY2ggaGFiZSBJ
aHIgUHJvZmlsIGR1cmNoZ2VzZWhlbiB1bmQgZXMga2xpbmd0CmludGVyZXNzYW50LCBhbHNvIGhh
YmUgaWNoIGJlc2NobG9zc2VuLCBJaG5lbiB6dSBzY2hyZWliZW4gdW5kIElocmUKSGlsZmUgdW5k
IFVudGVyc3TDvHR6dW5nIGbDvHIgSW52ZXN0aXRpb25zendlY2tlIHp1IHN1Y2hlbiwgYXVmZ3J1
bmQgZGVyCkludmFzaW9uIFJ1c3NsYW5kcyBpbiBtZWluIExhbmQgVWtyYWluZS4KCkljaCBoYWx0
ZSBlcyBmw7xyIG5vdHdlbmRpZywgbWVpbiBHZXNjaMOkZnRzcHJvamVrdCBpbiBJaHJlbSBMYW5k
IHp1CmRpdmVyc2lmaXppZXJlbiwgdW0gZGllIFp1a3VuZnQgbWVpbmVzIGVpbnppZ2VuIFNvaG5l
cyB6dSBzaWNoZXJuLApuYWNoZGVtIG1laW4gR2VzY2jDpGZ0IHZvbiBkZW4gcnVzc2lzY2hlbiBN
aWxpdMOkcnRydXBwZW4gemVyc3TDtnJ0IHd1cmRlCnVuZCBpbiBtZWluZW0gTGFuZCBrZWluZSBz
aW5udm9sbGVuIHdpcnRzY2hhZnRsaWNoZW4gQWt0aXZpdMOkdGVuIG1laHIKc3RhdHRmaW5kZW4u
CgpJY2ggd8O8cmRlIHdpcmtsaWNoIGdlcm5lIG1laHIgw7xiZXIgZGljaCBlcmZhaHJlbiEgVW5k
IGljaCBob2ZmZSwgZGFzcwpkdSBtaWNoIGF1Y2gga2VubmVubGVybmVuIHdpbGxzdC4gV2VubiBq
YSwgZGFubiBmcmV1ZSBpY2ggbWljaCBhdWYKSWhyZSBBbnR3b3J0LgoKIk1pdCBhbGwgbWVpbmVy
IEF1ZnJpY2h0aWdrZWl0CkZyYXUgQWx5b25hIERlZ3JpawphbHlvbmFkZWdyaWtAbGVnaXNsYXRv
ci5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2
ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZl
cmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRl
dmVsCg==
