Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC0E580F0A
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Jul 2022 10:31:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA7DA4105B;
	Tue, 26 Jul 2022 08:31:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA7DA4105B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1xemPb3dIOtO; Tue, 26 Jul 2022 08:31:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8CF704017B;
	Tue, 26 Jul 2022 08:31:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8CF704017B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1A7331BF239
 for <devel@linuxdriverproject.org>; Tue, 26 Jul 2022 08:31:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E880E83F7F
 for <devel@linuxdriverproject.org>; Tue, 26 Jul 2022 08:31:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E880E83F7F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WxpUE9BViyJH for <devel@linuxdriverproject.org>;
 Tue, 26 Jul 2022 08:31:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C2A083F79
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com
 [IPv6:2607:f8b0:4864:20::b36])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3C2A083F79
 for <devel@driverdev.osuosl.org>; Tue, 26 Jul 2022 08:31:37 +0000 (UTC)
Received: by mail-yb1-xb36.google.com with SMTP id c131so24159235ybf.9
 for <devel@driverdev.osuosl.org>; Tue, 26 Jul 2022 01:31:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=rpGdBlWNbRvfCUxTp8N78CBB/ulEh4aiX7z1NwI2vQ4=;
 b=SQRrgGV4pFfqgctifa9f9E442fi5aA7e/i4VefW9xP3aPUyq/RIvNxg2hY6LrMCzEP
 xYqoamQuVe3ISFqSPFS3wfmh/Sxhv7ZbAine3SKpEgRIbs4NO1lh1uCUOicDtxvnoflY
 Qj8lKvll+BprJX/i6udPJesELwnyY1mSycSDFowH8mur4k+ErKIwtUvsVZwhzXHPfqO2
 960yyPo95bfPvmIvcGS0MvC72W3nqltvK1bZ3bRnehTFXeloymD0xPbpxg4WON3WJBch
 5+GFYjJVSg6OJGXq7kk0Qmyq2htusBZVuX70taym8+9+RLlT9UYX5AZqYpgJ1zeky/g1
 gvrg==
X-Gm-Message-State: AJIora+3PN03l4uDHY4IedQWxXQPuo85jEt0GTr5Ix8aXYwZS96zftJm
 tqZ24ThcrKH3ut6DjL04WK4kuZB7Zq/SyWzclaU=
X-Google-Smtp-Source: AGRyM1sojy8e3nHg2izI8xqZLxB/LTzV67izhKsVDjlL0AdtCQwTuHeJs+K/4isS0DwcF3HxN9tP+wAJVEpZ5YpPK8A=
X-Received: by 2002:a25:f508:0:b0:66f:3c5f:c39f with SMTP id
 a8-20020a25f508000000b0066f3c5fc39fmr11990655ybe.374.1658824295792; Tue, 26
 Jul 2022 01:31:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7010:3812:b0:2d9:f675:659b with HTTP; Tue, 26 Jul 2022
 01:31:35 -0700 (PDT)
From: Daouda Ali <daoudaali2200@gmail.com>
Date: Tue, 26 Jul 2022 08:31:35 +0000
Message-ID: <CABvkibu6zb-1QNoOX_OKnHaG6_0qgOXsvUHgC28GxN5HfK8xRg@mail.gmail.com>
Subject: Dear Friend
To: daoudaali101@gmail.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=rpGdBlWNbRvfCUxTp8N78CBB/ulEh4aiX7z1NwI2vQ4=;
 b=KZHNp/hWcsGpG1Spe5d6oalN5uV81MnYMscmACrpR6WjzVPfTQwOGfJGN2Iyq50Zwz
 CPh41uDJP/urNP/5mfimA7l1uqhXYsCUm7AEsfLRwfAjBPuALJSgPpn0RSNDUSixm/0G
 kOtN27JoBK7UR/u9vPy5ykgrb15LoQDPbjjBmcUKvCjzFLSD4cPgGlAmJylPYwmHnZCs
 7gglEHEs07ZGPDQp8mbWFR8bGya/ydFgY1zFQ3UmT5nFEJUAuEZO33sbcdhx3TSA1SJe
 J7OxYxk7veIntaUb/D+XnIRWDfTYJB0LGGNtbJuSD74xozRDlzEVPEtAunr8Ow7Q6HYb
 vOmg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=KZHNp/hW
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
Reply-To: daoudaali101@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SXTigJlzIG15IHBsZWFzdXJlIHRvIGNvbnRhY3QgeW91IHRocm91Z2ggdGhpcyBtZWRpYSBiZWNh
dXNlIEkgbmVlZCBhbgppbnZlc3RtZW50IGFzc2lzdGFuY2UgaW4geW91ciBjb3VudHJ5LiBIb3dl
dmVyIEkgaGF2ZSBhIHByb2ZpdGFibGUKaW52ZXN0bWVudCBwcm9wb3NhbCB3aXRoICBnb29kIGlu
dGVyZXN0IHRvIHNoYXJlIHdpdGggeW91LCBhbW91bnRlZAp0aGUgc3VtIG9mIChUd2VudHkgRWln
aHQgTWlsbGlvbiBGb3VyIEh1bmRyZWQgVGhvdXNhbmQgVW5pdGVkIFN0YXRlCkRvbGxhciAoJDI4
LjQwMC4wMDAuMDApLgoKSWYgeW91ICBhcmUgd2lsbGluZyB0byBoYW5kbGUgdGhpcyBwcm9qZWN0
IGtpbmRseSByZXBseSB1cmdlbnQgdG8KZW5hYmxlIG1lIHByb3ZpZGUgeW91IG1vcmUgaW5mb3Jt
YXRpb24gYWJvdXQgdGhlIGludmVzdG1lbnQgZnVuZHMgYW5kCnRoZSBwcm9qZWN0LgoKSSBhbSB3
YWl0aW5nIHRvIGhlYXIgZnJvbSB5b3UgdGhyb3VnaCB0aGlzIG15IHByaXZhdGUKZW1haWwoZGFv
dWRhYWxpMTAxQGdtYWlsLmNvbSkgc28gd2UgY2FuIHByb2NlZWQgZnVydGhlci4KCkJlc3QgUmVn
YXJkcy4KTXIuIERhb3VkYSBBbGkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5v
cmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpdmVyZGV2LWRldmVsCg==
