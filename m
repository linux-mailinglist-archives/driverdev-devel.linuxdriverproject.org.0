Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1887B1ECA67
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jun 2020 09:21:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D21868863E;
	Wed,  3 Jun 2020 07:21:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id leeWwSqOuWx8; Wed,  3 Jun 2020 07:21:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5443988618;
	Wed,  3 Jun 2020 07:21:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3F3CB1BF5A4
 for <devel@linuxdriverproject.org>; Wed,  3 Jun 2020 07:21:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3BC1F885B6
 for <devel@linuxdriverproject.org>; Wed,  3 Jun 2020 07:21:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BLGgSfqcflvW for <devel@linuxdriverproject.org>;
 Wed,  3 Jun 2020 07:21:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6D5D58863B
 for <devel@driverdev.osuosl.org>; Wed,  3 Jun 2020 07:21:09 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id q13so864610edi.3
 for <devel@driverdev.osuosl.org>; Wed, 03 Jun 2020 00:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=vx88ON+UFkh4ABL4pG0NLQrIOYVxNTrYi/4Z1S6HqD0=;
 b=IAg+5xLRZzwyGbrxX9Rzj7OnPMwvzGLL89Sm6t83HFvFgL7NGNjIQLmX1vpE+JINIS
 J5eEaBrkKDoLfGDZl3crJ+demFCbj9cHh1lMVIiYlicK2LCxq8//D4l4VvKr2xafya7g
 jVoOBD0pczObp0mdAkeEOL+yRTdqFEg+3YLb9kRIhmw5ZAkuiNAntkTK4vFdgVFajF8e
 n7AydUd5nUTiPjX8Lfg5m5KwZzCWju8U66BugFGvln4ZK3QNgcjUrfZw8rVBAEpNSMBE
 IuCX9baC1tGFkh0PBMmRLQmLr1+jBaUAeDnMA/aRuTEHa7M+pxjndAZOiKKKAap52j9x
 uLzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=vx88ON+UFkh4ABL4pG0NLQrIOYVxNTrYi/4Z1S6HqD0=;
 b=jbXPQMQCYDcvCprn8x08CePWAG/iCOmxHorRKBfjXETIDNlQ14x+uwgDTyV177/Vpc
 IwSqFnb1JGa2IZhppvqQ8kMfehxUxuvwISBUMlTo3QVmX++3JQH2vWDQSCiLbJRRk8QT
 ah+rqPnPKb1bY83x/mr9NcUAsPN73CYDKcAEaP6gKGFbSK5HFpZ2+zfHUGniEv5gMBak
 UJjcPK4yKEOx/VVw4NzYTeaQzj1PFe4kCOJpNF/1ku2fQnX1nAvADEP4utOXXiQpQoDp
 ZzIadntoQ86LuofCHVqfgpj/Vi29docUZlrMb5amGlbdr2TBR4YDLAURVa30gBKWqV3F
 cGXg==
X-Gm-Message-State: AOAM533RPm9NcOsYCdwjgC+mTuk+8I0svVCagA+vWX5ypqoVkWIbF6KA
 xUhZbdMDIu75tuH8MwTSFjJCgB/daFFWpuUC28s=
X-Google-Smtp-Source: ABdhPJwmdM5w+wpG3NvGjmBSOxvp4xsPeTmXq+Vn3nyCXpZ25dAZ8+aqdBMSaYx84/mjwo1aJgr7Em+RGwUoS6B3vVM=
X-Received: by 2002:a05:6402:c09:: with SMTP id
 co9mr17346326edb.238.1591168867615; 
 Wed, 03 Jun 2020 00:21:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:28ce:0:0:0:0:0 with HTTP;
 Wed, 3 Jun 2020 00:21:07 -0700 (PDT)
From: "Ms. Anita Kwassou" <samolele9@gmail.com>
Date: Wed, 3 Jun 2020 09:21:07 +0200
Message-ID: <CAF0XWJ_CmXJ+8Xn4Sro2pdEjV5sH0MAm85dYhX2EL4Fsfc__0Q@mail.gmail.com>
Subject: =?UTF-8?B?0KHQutGK0L8g0L/RgNC40Y/RgtC10LssIGhlbGxv?=
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
Reply-To: anitkwas@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

0KHQutGK0L8g0L/RgNC40Y/RgtC10LssDQoNCtCf0LjRiNCwINCy0Lgg0L7RgiDQn9Cw0YDQsNCz
0LLQsNC5INCyINC60L7QvNCw0L3QtNC40YDQvtCy0LrQsCDRgSDQvdC+0LLQsNGC0LAg0LzQuA0K
0L/QsNGA0YLQvdGM0L7RgCDRgdC70LXQtCDRg9GB0L/QtdGI0L3QvtGC0L4g0L/RgNC10LLQtdC2
0LTQsNC90LUg0L3QsCDRgdGA0LXQtNGB0YLQstCw0YLQsCDQsiDRgNCw0LfQvNC10YAg0L3QsCAk
DQo1LDUg0LzQuNC70LjQvtC90LAuDQoNCtCU0LAsINC60LDQutGC0L4g0LLQuCDQutCw0LfQsNGF
INC/0YDQtdC00LgsINC90LUg0YHRitC8INCw0LvRh9C10L0g0YfQvtCy0LXQuiDQuCDRgdGK0YnQ
viDQvtCx0LjRh9Cw0LwNCtGA0LDQt9C/0L7Qt9C90LDQudGC0LUg0YPRgdC40LvQuNGP0YLQsCDQ
vdCwINC90Y/QutC+0LPQviwg0LHQtdC3INC30L3QsNGH0LXQvdC40LUg0LrQsNC60YrQsiDQvNC+
0LbQtSDQtNCwINC1INC/0YDQvtCx0LvQtdC80YrRgiwNCtCp0LUg0LLQuCDQv9C+0LzQvtC70Y8g
0LTQsCDRgdC1INGB0LLRitGA0LbQtdGC0LUg0YEg0LzQvtGPINGB0LXQutGA0LXRgtCw0YA6DQoN
CtCTLdC20LAg0JDQvdC40YLQsCDQmtCy0LDRgdGDDQrQldC70LXQutGC0YDQvtC90L3QsCDQv9C+
0YnQsDogYW5pdGt3YXNAZ21haWwuY29tDQoNCtCTLdC20LAg0JDQvdC40YLQsCDRidC1INCy0Lgg
0LjQt9C/0YDQsNGC0Lgg0L7RgdC10LzQtNC10YHQtdGCINGF0LjQu9GP0LTQuCDQtNC+0LvQsNGA
0LAgKDgwIDAwMC4wMCDRidCw0YLRgdC60LgNCtC00L7Qu9Cw0YDQsCksINC60L7QuNGC0L4NCtGJ
0LUg0LHRitC00LUg0L/RgNC10YXQstGK0YDQu9C10L0g0LrRitC8INCy0LDRgSDQsiDQvNC10LbQ
tNGD0L3QsNGA0L7QtNC90LAg0LLQuNC30L7QstCwINC60LDRgNGC0LAg0LfQsCDQsdCw0L3QutC+
0LzQsNGCLA0KDQrQlNCw0LLQsNC8INCy0Lgg0YLQvtCy0LAg0L7QsdC10LfRidC10YLQtdC90LjQ
tSDQt9CwINCy0YHQuNGH0LrQuCDQstCw0YjQuCDQv9GA0LXQtNC40YjQvdC4INGD0YHQuNC70LjR
jyDQuCDRgdGD0LzQsNGC0LANCtC40L3QstC10YHRgtC40YDQsNGF0YLQtSDQsiDQv9GA0L7RhtC1
0YHQsCDQvdCwINC/0YDQtdCy0L7QtCwg0L3QviDQvdC1INC80L7QttCw0YXRgtC1INC00LAg0LfQ
sNCy0YrRgNGI0LjRgtC1DQrRgSDQvNC10L0g0LfQsNGA0LDQtNC4INGB0YLRgNCw0YUg0Lgg0L3Q
tdCy0LXRgNC40LUuDQoNCtCQ0Lcg0YHRitGJ0L4g0LLQuCDQtNCw0LLQsNC8INGC0LDQt9C4INC8
0LDQu9C60LAg0YHRg9C80LAg0LrQsNGC0L4g0L/RgNC40LfQvdCw0YLQtdC70L3QvtGB0YIg0LfQ
sCDQkdC+0LMNCtCx0LXQt9C60YDQsNC50L3QuCDQvNC40LvQvtGB0YLQuCDQtNCwINGB0LHRitC0
0L3QsCDQsiDRgtCw0LfQuCDQvNC+0Y8g0LzQtdGH0YLQsCwg0LAg0YHRitGJ0L4g0Lgg0LfQsA0K
0LLQvtC00LXQudC60Lgg0LzQtSDRgdC/0L7QutC+0LnQvdC+INCyINGC0LDQt9C4INGB0YLRgNCw
0L3QsC4NCg0K0KHQstGK0YDQttC10YLQtSDRgdC1INGBINCzLdC20LAg0JDQvdC40YLQsCDQuCDQ
vtCx0YHRitC00LXRgtC1INGBINC90LXQs9C+INC60LDQuiDQuNGB0LrQsNGC0LUg0LHQsNC90LrQ
vtC80LDRgtCwDQrQuNC30L/RgNCw0YLQtdC90L4g0LTQviDQstCw0YEg0Lgg0YHQtSDQvtC/0LjR
gtCw0LnRgtC1INC00LAg0LzQtSDQuNC90YTQvtGA0LzQuNGA0LDRgtC1INCy0LXQtNC90LDQs9Cw
INGJ0L7QvCDQv9C+0LvRg9GH0LjRgtC1INC60LDRgNGC0LDRgtCwLg0KDQrQndCw0Lkt0LTQvtCx
0YDQuCDQv9C+0LbQtdC70LDQvdC40Y8sDQrQk9C+0YHQv9C+0LTQuNC9INCh0LDQvCDQntC70LXQ
u9C1DQoNCg0KbW1tbW1tbW1tbW1tbW1tbW1tbW1tbW1tbW1tbW1tbW1tbW1tbW1tbW1tbW1tbW1t
bW1tbW1tbW1tbW1tbW1tbW1tbW1tbW1tbW1tbW1tbW1tDQoNCg0KRGVhciBmcmllbmQsDQoNCkkg
YW0gd3JpdGluZyB0byB5b3UgZnJvbSBQYXJhZ3VheSBvbiBhIGJ1c2luZXNzIHRyaXAgd2l0aCBt
eSBuZXcNCnBhcnRuZXIgYWZ0ZXIgdGhlIHN1Y2Nlc3NmdWwgdHJhbnNmZXIgb2YgdGhlIGZ1bmRz
IGluIHRoZSBhbW91bnQgb2YgJA0KNS41IG1pbGxpb24uDQoNClllcywgYXMgSSB0b2xkIHlvdSBi
ZWZvcmUsIEkgYW0gbm90IGEgZ3JlZWR5IHBlcnNvbiBhbmQgYWxzbyBsaWtlIHRvDQpyZWNvZ25p
emUgdGhlIGVmZm9ydHMgb2Ygc29tZW9uZSwgbm8gbWF0dGVyIHdoYXQgbWlnaHQgYmUgdGhlIHBy
b2JsZW0sDQpJIHdpbGwgcmVxdWVzdCB5b3UgdG8gY29udGFjdCBteSBzZWNyZXRhcnk6DQoNCk1z
LiBBbml0YSBLd2Fzc291DQpFLU1haWw6IGFuaXRrd2FzQGdtYWlsLmNvbQ0KDQpNcy4gQW5pdGEg
d2lsbCBzZW5kIHlvdSBFaWdodHkgVGhvdXNhbmQgZG9sbGFycyAoVVMkODAuMDAwLjAwKSB3aGlj
aA0KaXMgYmVlbiByb2xsZWQgdG8geW91IGludG8gYW4gaW50ZXJuYXRpb25hbCBBVE0gdmlzYSBj
YXJkLA0KDQpJIGdpdmUgeW91IHRoaXMgY29tcGVuc2F0aW9uIGZvciBhbGwgeW91ciBwYXN0IGVm
Zm9ydHMgYW5kIHRoZSBhbW91bnQNCnlvdSBpbnZlc3RlZCBpbiB0aGUgdHJhbnNsYXRpb24gcHJv
Y2VzcywgYnV0IHlvdSBjb3VsZG4ndCBjb21wbGV0ZQ0Kd2l0aCBtZSBiZWNhdXNlIG9mIGZlYXIg
YW5kIGRpc2JlbGlldmUuDQoNCkkgYW0gYWxzbyBnaXZpbmcgdG8geW91IHRoaXMgc21hbGwgYW1v
dW50IGFzIGFuIGFwcHJlY2lhdGlvbiBmb3IgR29kJ3MNCmVuZGxlc3MgbWVyY2llcyB0byBtYWtl
IGluIHRoaXMgbXkgZHJlYW0gY29tZSB0cnVlLCBhbmQgYWxzbyBmb3INCmxlYWRpbmcgbWUgcGVh
Y2VmdWxseSB0byB0aGlzIGNvdW50cnkuDQoNCkNvbnRhY3QgTXMuIEFuaXRhIGFuZCBkaXNjdXNz
IHdpdGggaGltIG9uIGhvdyB5b3Ugd2FudCB0aGUgQVRNIGNhcmQNCnNlbnQgdG8geW91IGFuZCB0
cnkgdG8gaW5mb3JtIG1lIGFzIHNvb24gYXMgeW91IHJlY2VpdmVkIHRoZSBjYXJkLg0KDQpCZXN0
IHdpc2hlcywNCk1yLiBTYW0gT2xlbGUNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
