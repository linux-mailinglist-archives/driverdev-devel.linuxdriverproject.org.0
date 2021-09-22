Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED84B4153DA
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Sep 2021 01:23:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C20AA8420B;
	Wed, 22 Sep 2021 23:23:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 376-z0wyAV3e; Wed, 22 Sep 2021 23:23:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2172B83FAD;
	Wed, 22 Sep 2021 23:23:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 945BC1BF38B
 for <devel@linuxdriverproject.org>; Wed, 22 Sep 2021 23:23:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 81DED401E6
 for <devel@linuxdriverproject.org>; Wed, 22 Sep 2021 23:23:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dGqZY25xKXYP for <devel@linuxdriverproject.org>;
 Wed, 22 Sep 2021 23:23:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4ED0940138
 for <devel@driverdev.osuosl.org>; Wed, 22 Sep 2021 23:23:26 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id g8so16251888edt.7
 for <devel@driverdev.osuosl.org>; Wed, 22 Sep 2021 16:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=/oaUPZNu78Mtn0od8873S9rsmSItTVGj8iF52jAOkLQ=;
 b=Ti/VHCxIA+kPCex56j7eTkF6ZinLNxUaaRy16HunurZ3tGTxj+iJf/7Fnw2upQESNI
 VpicOjeKwB3rY9c617a04sFccHKl/V9AH3BnfEE5TaR1dHvdCy2tX7qm3rXKRUcQDvSQ
 VfVAuaSD0KKmE5k0g0Y0TTjJ7i14O2MM+ZJnbXyLsOAdwWK9eZdEDei6c8gsdIoEOc3c
 JpXSUd3qvmleVmSJ+LQxYCsiAzzukt8CMrDlhEyutQMqRDtCxAFsv1QntqBoStCFR2eB
 vBYhWNcyg6sJOl0nGLHabHUjdcN/reLtkkwF/ggxz0LxeOZlTuFyKoOsD3pt07ghyWfh
 w84w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=/oaUPZNu78Mtn0od8873S9rsmSItTVGj8iF52jAOkLQ=;
 b=K6na7fbWRwJxzsYzdLr4ygLLyDKr91FQyZ0Bf68LernqIAvAgfBfrSE5Mrso2cUP2O
 7IGe0mz12kAkRfGr9Pc91UdsDiB9mlTYVIDsqETxlf5fnqn8KtRkBQaH1ZEt6BOrYtZ3
 UDPSj8ciRrm1K649uqEtxnVT35VKIGHrvrY5EylXC/lXWm2Ves8QSXJpEwbH/twmhdX8
 uMDua9MB9Yzk3PBbjYhDphDr8JqTXbzbDoBfDUnr76krZpRtJJBmfcNPiVAx21VLq/x1
 gRRhsTKlfNBr2uht2E7n6Z3Wwjtz6fNg/F0dgLfv8kerKvvnJ/bAUWiGOliArIqLuqQ9
 /UTg==
X-Gm-Message-State: AOAM533jeVZ6arO396Pd/WwCJKN2oJzrHy4zu2xOPg1ExKTL69CaWVGD
 izSaMuvefxyeV/iGAMcqtizom1kb66uEWKindtp5wsywTnk7XA==
X-Google-Smtp-Source: ABdhPJy/D6VkcpAD1X7VdRGFJIpH6L5PPEuNYca8lUL8qaiSKh0BjcgCyjRXOJD/t5ESKLhVVG72rFtB7f93wSE53zM=
X-Received: by 2002:a05:6402:203:: with SMTP id
 t3mr2139006edv.69.1632352693443; 
 Wed, 22 Sep 2021 16:18:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:2001:0:0:0:0:0 with HTTP; Wed, 22 Sep 2021 16:18:12
 -0700 (PDT)
From: Jackie Fowler <jackiefowler597@gmail.com>
Date: Wed, 22 Sep 2021 23:18:12 +0000
X-Google-Sender-Auth: mNgIi2sTZ8kRkai4TRY6zm94vLQ
Message-ID: <CAMzF8FkG5MPCZxorru6of_E0_9FugjCbNYP6_B9+yUDN_fTiqw@mail.gmail.com>
Subject: Good Day My beloved,
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8sCgogICBJIHNlbnQgdGhpcyBtYWlsIHByYXlpbmcgaXQgd2lsbCBnZXQgdG8geW91IGlu
IGEgZ29vZCBjb25kaXRpb24gb2YKaGVhbHRoLCBzaW5jZSBJIG15c2VsZiBhcmUgaW4gYSB2ZXJ5
IGNyaXRpY2FsIGhlYWx0aCBjb25kaXRpb24gaW4Kd2hpY2ggSSBzbGVlcCBldmVyeSBuaWdodCB3
aXRob3V0IGtub3dpbmcgaWYgSSBtYXkgYmUgYWxpdmUgdG8gc2VlIHRoZQpuZXh0IGRheS4gSSBi
cmluZyBwZWFjZSBhbmQgbG92ZSB0byB5b3UuIEl0IGlzIGJ5IHRoZSBncmFjZSBvZiBHb2QsIEkK
aGFkIG5vIGNob2ljZSB0aGFuIHRvIGRvIHdoYXQgaXMgbGF3ZnVsIGFuZCByaWdodCBpbiB0aGUg
c2lnaHQgb2YgR29kCmZvciBldGVybmFsIGxpZmUgYW5kIGluIHRoZSBzaWdodCBvZiBtYW4sIGZv
ciB3aXRuZXNzIG9mIEdvZOKAmXMgbWVyY3kKYW5kIGdsb3J5IHVwb24gbXkgbGlmZS4gSSBhbSBN
cnMuRm93bGVyLkphY2tpZSxhIHdpZG93IGFuZCBjaXRpemVuIG9mCkNhbmFkYS4gSSBhbSBzdWZm
ZXJpbmcgZnJvbSBhIGxvbmcgdGltZSBicmFpbiB0dW1vciwgSXQgaGFzIGRlZmlsZWQKYWxsIGZv
cm1zIG9mIG1lZGljYWwgdHJlYXRtZW50LCBhbmQgcmlnaHQgbm93IEkgaGF2ZSBhYm91dCBhIGZl
dwptb250aHMgdG8gbGVhdmUsIGFjY29yZGluZyB0byBtZWRpY2FsIGV4cGVydHMuIFRoZSBzaXR1
YXRpb24gaGFzCmdvdHRlbiBjb21wbGljYXRlZCByZWNlbnRseSB3aXRoIG15IGluYWJpbGl0eSB0
byBoZWFyIHByb3BlciwgYW0KY29tbXVuaWNhdGluZyB3aXRoIHlvdSB3aXRoIHRoZSBoZWxwIG9m
IHRoZSBjaGllZiBudXJzZSBoZXJlaW4gdGhlCmhvc3BpdGFsLCBmcm9tIGFsbCBpbmRpY2F0aW9u
IG15IGNvbmRpdGlvbnMgaXMgcmVhbGx5IGRldGVyaW9yYXRpbmcKYW5kIGl0IGlzIHF1aXRlIG9i
dmlvdXMgdGhhdCwgYWNjb3JkaW5nIHRvIG15IGRvY3RvcnMgdGhleSBoYXZlCmFkdmlzZWQgbWUg
dGhhdCBJIG1heSBub3QgbGl2ZSB0b28gbG9uZywgQmVjYXVzZSB0aGlzIGlsbG5lc3MgaGFzCmdv
dHRlbiB0byBhIHZlcnkgYmFkIHN0YWdlLiBJIHBsZWFkIHRoYXQgeW91IHdpbGwgbm90IGV4cG9z
ZSBvciBiZXRyYXkKdGhpcyB0cnVzdCBhbmQgY29uZmlkZW5jZSB0aGF0IEkgYW0gYWJvdXQgdG8g
cmVwb3NlIG9uIHlvdSBmb3IgdGhlCm11dHVhbCBiZW5lZml0IG9mIHRoZSBvcnBoYW5zIGFuZCB0
aGUgbGVzcyBwcml2aWxlZ2UuIEkgaGF2ZSBzb21lCmZ1bmRzIEkgaW5oZXJpdGVkIGZyb20gbXkg
bGF0ZSBodXNiYW5kLCB0aGUgc3VtIG9mICgkIDEyLDUwMCwwMDAuMDAKRG9sbGFycykuSGF2aW5n
IGtub3duIG15IGNvbmRpdGlvbiwgSSBkZWNpZGVkIHRvIGRvbmF0ZSB0aGlzIGZ1bmQgdG8KeW91
IGJlbGlldmluZyB0aGF0IHlvdSB3aWxsIHV0aWxpemUgaXQgdGhlIHdheSBpIGFtIGdvaW5nIHRv
IGluc3RydWN0CmhlcmVpbi4gSSBuZWVkIHlvdSB0byBhc3Npc3QgbWUgYW5kIHJlY2xhaW0gdGhp
cyBtb25leSBhbmQgdXNlIGl0IGZvcgpDaGFyaXR5IHdvcmtzLCBmb3Igb3JwaGFuYWdlcyBhbmQg
Z2l2ZXMganVzdGljZSBhbmQgaGVscCB0byB0aGUgcG9vciwKbmVlZHkgYW5kIHdpZG93cyBzYXlz
IFRoZSBMb3JkLiIgSmVyZW1pYWggMjI6MTUtMTYu4oCcIGFuZCBhbHNvIGJ1aWxkCnNjaG9vbHMg
Zm9yIGxlc3MgcHJpdmlsZWdlIHRoYXQgd2lsbCBiZSBuYW1lZCBhZnRlciBteSBsYXRlIGh1c2Jh
bmQgaWYKcG9zc2libGUgYW5kIHRvIHByb21vdGUgdGhlIHdvcmQgb2YgR29kIGFuZCB0aGUgZWZm
b3J0IHRoYXQgdGhlIGhvdXNlCm9mIEdvZCBpcyBtYWludGFpbmVkLiBJIGRvIG5vdCB3YW50IGEg
c2l0dWF0aW9uIHdoZXJlIHRoaXMgbW9uZXkgd2lsbApiZSB1c2VkIGluIGFuIHVuZ29kbHkgbWFu
bmVyLiBUaGF0J3Mgd2h5IEknbSB0YWtpbmcgdGhpcyBkZWNpc2lvbi4gSSdtCm5vdCBhZnJhaWQg
b2YgZGVhdGgsIHNvIEkga25vdyB3aGVyZSBJJ20gZ29pbmcuIEkgYWNjZXB0IHRoaXMgZGVjaXNp
b24KYmVjYXVzZSBJIGRvIG5vdCBoYXZlIGFueSBjaGlsZCB3aG8gd2lsbCBpbmhlcml0IHRoaXMg
bW9uZXkgYWZ0ZXIgSQpkaWUuIFBsZWFzZSBJIHdhbnQgeW91ciBzaW5jZXJlbHkgYW5kIHVyZ2Vu
dCBhbnN3ZXIgdG8ga25vdyBpZiB5b3UKd2lsbCBiZSBhYmxlIHRvIGV4ZWN1dGUgdGhpcyBwcm9q
ZWN0IGZvciB0aGUgZ2xvcnkgb2YgR29kLCBhbmQgSSB3aWxsCmdpdmUgeW91IG1vcmUgaW5mb3Jt
YXRpb24gb24gaG93IHRoZSBmdW5kIHdpbGwgYmUgdHJhbnNmZXJyZWQgdG8geW91cgpiYW5rIGFj
Y291bnQuIE1heSB0aGUgZ3JhY2UsIHBlYWNlLCBsb3ZlIGFuZCB0aGUgdHJ1dGggaW4gdGhlIFdv
cmQgb2YKR29kIGJlIHdpdGggeW91IGFuZCBhbGwgdGhvc2UgdGhhdCB5b3UgbG92ZSBhbmQgY2Fy
ZSBmb3IuCkknbSB3YWl0aW5nIGZvciB5b3VyIGltbWVkaWF0ZSByZXBseS4KQmVzdCBSZWdhcmQn
cyAuCk1ycy5Gb3dsZXIuSmFja2llLgpXcml0dGluZyBGcm9tIHRoZSBob3NwaXRhbC4KTWF5IEdv
ZCBCbGVzcyB5b3UsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
