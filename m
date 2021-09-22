Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 185D14153EC
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Sep 2021 01:32:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40F276150B;
	Wed, 22 Sep 2021 23:32:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eW0xXezAjlJ1; Wed, 22 Sep 2021 23:32:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67094614CC;
	Wed, 22 Sep 2021 23:32:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 62B0D1BF38B
 for <devel@linuxdriverproject.org>; Wed, 22 Sep 2021 23:32:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4339060BBF
 for <devel@linuxdriverproject.org>; Wed, 22 Sep 2021 23:32:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AMCOUKt63OfM for <devel@linuxdriverproject.org>;
 Wed, 22 Sep 2021 23:32:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8A0B360B90
 for <devel@driverdev.osuosl.org>; Wed, 22 Sep 2021 23:32:37 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id u18so11749365wrg.5
 for <devel@driverdev.osuosl.org>; Wed, 22 Sep 2021 16:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=/oaUPZNu78Mtn0od8873S9rsmSItTVGj8iF52jAOkLQ=;
 b=Y8JX3+VHIGWdeTHHIBgh9H7G9TIN11znk9MXgj4Wmz4ZzUoEhv9BS5GjQje+bgNQOL
 WlNQOV9ZE9afVYL2l0WnsHcMNcL1iXY+j7SS2dU5Z/OyfjsLzSJmCoQGF0d1X6EotCk+
 pMEba2S7sSqk6XSJJOXeq+30etdFaMfx/5y+4bkmF1jUPwRgbUYmVBkD4atP2CG6C/sb
 +QcciTPhVrB2f3MfyS1Epx3uyzzj+NdesVYgu7E9uiKLZKBbp0a3tvMe0yCR1PtmhTJm
 ioalMILBBpbT2TUcu9oTWlUJ3jvTg3CLy+jc1HjvCyvGZKG1ramAuhPafCVw2zCRtxij
 jTWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=/oaUPZNu78Mtn0od8873S9rsmSItTVGj8iF52jAOkLQ=;
 b=vhovuRrhGqYigvrZy9Lg+y32BRgxISyyuQC1EOUbFdmfCwqTCjBNjCK9rFyCsPI0OS
 PQl8yIbi9KXecDypeI3DprC7iPBzdKLDUjzl+CjMl9/tWR6YM+HZavj+SjUbNL7fInpz
 4EEZbPcsEdc/1o+uCH+QXwc0y6uFYikLJxiUoiOyqhwJoNcLaH0mKF8mNicmLlIPrnhj
 8RHMuqY7EKDoZsVaGeQZGgx6/xHLCgNr6n/naQxjP762sdwf8KUXvx83Zhzg4d0XRS3O
 9Qd1PeFxlE++HkM5bWf4sgtZT+HXUERto3dwe0fGdmhjZOv5DjXE7ONLXSkizpXvVcdQ
 eZhw==
X-Gm-Message-State: AOAM532e+u1W5H9spx1pgJwkCePaR7BIH38qjIyvD4xKlDlMuL8Tt7hd
 qsiv/zHd5AONwahnIt6L66RYFXloCTlxeUteZYE=
X-Google-Smtp-Source: ABdhPJxCX3RvETq13kAOiSChVUP8l16H8T4ZRHcbsv52PmKEZ3u45ndadDsAOx/yA3/EejOJ3TPg5sA3zNfPfg+LInU=
X-Received: by 2002:a7b:cd15:: with SMTP id f21mr1425787wmj.16.1632353555686; 
 Wed, 22 Sep 2021 16:32:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a7b:c052:0:0:0:0:0 with HTTP; Wed, 22 Sep 2021 16:32:35
 -0700 (PDT)
From: Jackie Fowler <jackiefowler597@gmail.com>
Date: Wed, 22 Sep 2021 23:32:35 +0000
X-Google-Sender-Auth: nI3EbtUQh1v9ibD-r8hMlHmqfBA
Message-ID: <CAK+X-7XO66VzoA_AEOqug02HR2B3S=sC=7Xw-FbLp_5EjGkwRg@mail.gmail.com>
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
