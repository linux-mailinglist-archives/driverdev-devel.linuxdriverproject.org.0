Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BA84614DD
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Nov 2021 13:18:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D4DF0403CE;
	Mon, 29 Nov 2021 12:18:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pJtUfKeIxCJM; Mon, 29 Nov 2021 12:18:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 91EA8403F2;
	Mon, 29 Nov 2021 12:18:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EB5731BF3BD
 for <devel@linuxdriverproject.org>; Mon, 29 Nov 2021 12:18:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DAC1A401BB
 for <devel@linuxdriverproject.org>; Mon, 29 Nov 2021 12:18:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Fb4vx29OZSo for <devel@linuxdriverproject.org>;
 Mon, 29 Nov 2021 12:18:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2886A40182
 for <devel@driverdev.osuosl.org>; Mon, 29 Nov 2021 12:18:02 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id x6so70854637edr.5
 for <devel@driverdev.osuosl.org>; Mon, 29 Nov 2021 04:18:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=t/DHJbAt4LQuAng+bYiqw1PD2Nvg3FUEo6hZ+aU+L5o=;
 b=EHqqx0E/M6MV+Y1LoEl3PB7ScJwEVWt0RrlBcm5SSwJJjE8qFnxZQN0ilwqPGPod+C
 NVkSkjAesxgMT8IWD22BWgXlez+ZKzg6nfNQH2Poq5/TAXn1KfKH/HA753ezOZsAYt3c
 wvn5pZzmfQtWsWGbUzXHghEMmRjmITt+6hWwh6GFUWg2RnYqZF+lML/XtApIsfzbwhcj
 VqaBYGet0Hk8edVw+bbqrAWD5bMsDTQxgGd5Uwf1K5jDteSVjvoM8/O+4J30SKGzKJR6
 4ajv4zuuwFDLoZPwvsMyvutdke7GR9ASZs0wIONE3uTFOampOh6VVKsQPJ5LJcGqbrDo
 pdqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=t/DHJbAt4LQuAng+bYiqw1PD2Nvg3FUEo6hZ+aU+L5o=;
 b=18QUquLQUGOcbSfiPT15P4uAGZ4ROh+Rs1hJPnohjc40cxvgEb9tDIXuCuU0Boil5N
 43OuReqIwsnwkcBD8ADHpADQicQiYRe3q2Ouaf4q33N67IPPsN07ADW/NLR67d64v5CD
 0R3Eqt7AdLICsJ5cyZbRzVDSVeNnXWO4xkqZGrrnQFDq4a4Sj4b1oMBLsbXs5XiYDmD9
 5aCEWEbe6vjvCP8DQggAoi9KgWcrsrpWKKIZP70IDKy8GAhqYLwCS6xdz2EXIQMZS0IY
 D/JbBMup3kIfu/Z3uWDLndNrRFSSJFFXIUVJZxTAPiskNWJywNn7MyDtOQtq0TNtJMdZ
 FIsg==
X-Gm-Message-State: AOAM53205FuMAto8io6BqH5XZUntI51JDOQiHJ3JhNAL8AK90VwAM2Ca
 KtRdpq068sHLPYU0ZXShYPXS8SRqTahJR1ikuY8=
X-Google-Smtp-Source: ABdhPJy6HXBtDbVsKJMOZO88spAkOyxqvnTjBgY80DLoo1A8qY65+AyURHSCMfWegYq+JQQ545/tH204XRFPdytFRNY=
X-Received: by 2002:a05:6402:1849:: with SMTP id
 v9mr73787861edy.335.1638188279870; 
 Mon, 29 Nov 2021 04:17:59 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:e8d:0:0:0:0 with HTTP; Mon, 29 Nov 2021 04:17:59
 -0800 (PST)
From: MRS ANNA BRUUN <mreelizabethnetanya@gmail.com>
Date: Mon, 29 Nov 2021 13:17:59 +0100
Message-ID: <CAD0X7e=-hRR7D9DyPo+ULve3qMF5O2nA5jNN1PhaUn9Fh4VmJg@mail.gmail.com>
Subject: READ CAREFULLY
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
Reply-To: mrs.annahbruun1@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TXkgRGVhcgoKTXkgTmFtZSBpcyBNcnMuIEFubmEgSC4gQnJ1dW4sICBmcm9tIE5vcndheS4gSSBr
bm93IHRoYXQgdGhpcyBtZXNzYWdlIHdpbGwKYmUgYSBzdXJwcmlzZSB0byB5b3UuIEZpcnN0bHks
IEkgYW0gbWFycmllZCB0byBNci4gUGF0cmljayBCcnV1biwgQSBnb2xkCm1lcmNoYW50IHdobyBv
d25zIGEgc21hbGwgZ29sZCBNaW5lIGluIEJ1cmtpbmEgRmFzbzsgSGUgZGllZCBvZgpDYXJkaW92
YXNjdWxhciBEaXNlYXNlIGluIG1pZC1NYXJjaCAyMDExLiBEdXJpbmcgaGlzIGxpZmUgdGltZSBo
ZSBkZXBvc2l0ZWQKdGhlIHN1bSBvZiDigqwgOC41IE1pbGxpb24gRXVybykgRWlnaHQgbWlsbGlv
biwgRml2ZSBodW5kcmVkIHRob3VzYW5kIEV1cm9zCmluIGEgYmFuayBpbiBPdWFnYWRvdWdvdSB0
aGUgY2FwaXRhbCBjaXR5IG9mIEJ1cmtpbmEgRmFzbyBpbiBXZXN0IEFmcmljYS4KVGhlIGRlcG9z
aXRlZCBtb25leSB3YXMgZnJvbSB0aGUgc2FsZSBvZiB0aGUgc2hhcmVzLCBkZWF0aCBiZW5lZml0
cwpwYXltZW50IGFuZCBlbnRpdGxlbWVudHMgb2YgbXkgZGVjZWFzZWQgaHVzYmFuZCBieSBoaXMg
Y29tcGFueS4KCkkgYW0gc2VuZGluZyB0aGlzIG1lc3NhZ2UgdG8geW91IHByYXlpbmcgdGhhdCBp
dCB3aWxsIHJlYWNoIHlvdSBpbiBnb29kCmhlYWx0aCwgc2luY2UgSSBhbSBub3QgaW4gZ29vZCBo
ZWFsdGggY29uZGl0aW9uIGluIHdoaWNoIEkgc2xlZXAgZXZlcnkKbmlnaHQgd2l0aG91dCBrbm93
aW5nIGlmIEkgbWF5IGJlIGFsaXZlIHRvIHNlZSB0aGUgbmV4dCBkYXkuIEkgYW0Kc3VmZmVyaW5n
IGZyb20gbG9uZyB0aW1lIGNhbmNlciBhbmQgcHJlc2VudGx5IGkgYW0gcGFydGlhbGx5IHN1ZmZl
cmluZyBmcm9tCmEgc3Ryb2tlCmlsbG5lc3Mgd2hpY2ggaGFzIGJlY29tZSBhbG1vc3QgaW1wb3Nz
aWJsZSBmb3IgbWUgdG8gbW92ZSBhcm91bmQuIEkgYW0KbWFycmllZCB0byBteSBsYXRlIGh1c2Jh
bmQgZm9yIG92ZXIgNCB5ZWFycyBiZWZvcmUgaGUgZGllZCBhbmQgaXMKdW5mb3J0dW5hdGVseSB0
aGF0IHdlIGRvbid0IGhhdmUgYSBjaGlsZCwgbXkgZG9jdG9yIGNvbmZpZGVkIGluIG1lIHRoYXQg
aQpoYXZlIGxlc3MgY2hhbmNlIHRvIGxpdmUuIEhhdmluZyBrbm93biBteSBoZWFsdGggY29uZGl0
aW9uLCBJIGRlY2lkZWQgdG8KY29udGFjdCB5b3UgdG8gY2xhaW0gdGhlIGZ1bmQgc2luY2UgSSBk
b24ndCBoYXZlIGFueSByZWxhdGlvbiBJIGdyZXcgdXAKZnJvbSB0aGUgb3JwaGFuYWdlIGhvbWUs
CgpJIGhhdmUgZGVjaWRlZCB0byBkb25hdGUgd2hhdCBJIGhhdmUgdG8geW91IGZvciB0aGUgc3Vw
cG9ydCBvZiAgaGVscGluZwpNb3RoZXJsZXNzIGJhYmllcy9MZXNzIHByaXZpbGVnZWQvV2lkb3dz
JyBiZWNhdXNlIEkgYW0gZHlpbmcgYW5kIGRpYWdub3NlZApvZiBjYW5jZXIgZm9yIGFib3V0IDIg
eWVhcnMgYWdvLiBJIGhhdmUgYmVlbiB0b3VjaGVkIGJ5IEdvZCBBbG1pZ2h0eSB0bwpkb25hdGUg
ZnJvbSB3aGF0IEkgaGF2ZSBpbmhlcml0ZWQgZnJvbSBteSBsYXRlIGh1c2JhbmQgdG8geW91IGZv
ciBnb29kIHdvcmsKb2YgR29kIEFsbWlnaHR5LiBJIGhhdmUgYXNrZWQgQWxtaWdodHkgR29kIHRv
IGZvcmdpdmUgbWUgYW5kIGJlbGlldmUgaGUKaGFzLCBiZWNhdXNlIEhlIGlzIGEgTWVyY2lmdWwg
R29kIEkgd2lsbCBiZSBnb2luZyBpbiBmb3IgYW4gb3BlcmF0aW9uCnN1cmdlcnkgc29vbgoKVGhp
cyBpcyB0aGUgcmVhc29uIGkgbmVlZCB5b3VyIHNlcnZpY2VzIHRvIHN0YW5kIGFzIG15IG5leHQg
b2Yga2luIG9yIGFuCmV4ZWN1dG9yIHRvIGNsYWltIHRoZSBmdW5kcyBmb3IgY2hhcml0eSBwdXJw
b3Nlcy4gSWYgdGhpcyBtb25leSByZW1haW5zCnVuY2xhaW1lZCBhZnRlciBteSBkZWF0aCwgdGhl
IGJhbmsgZXhlY3V0aXZlcyBvciB0aGUgZ292ZXJubWVudCB3aWxsIHRha2UKdGhlIG1vbmV5IGFz
IHVuY2xhaW1lZCBmdW5kIGFuZCBtYXliZSB1c2UgaXQgZm9yIHNlbGZpc2ggYW5kIHdvcnRobGVz
cwp2ZW50dXJlcywgSSBuZWVkIGEgdmVyeSBob25lc3QgcGVyc29uIHdobyBjYW4gY2xhaW0gdGhp
cyBtb25leSBhbmQgdXNlIGl0CmZvciBDaGFyaXR5IHdvcmtzLCBmb3Igb3JwaGFuYWdlcywgd2lk
b3dzIGFuZCBhbHNvIGJ1aWxkIHNjaG9vbHMgZm9yIGxlc3MKcHJpdmlsZWdlIHRoYXQgd2lsbCBi
ZSBuYW1lZCBhZnRlciBteSBsYXRlIGh1c2JhbmQgYW5kIG15IG5hbWU7IEkgbmVlZAp5b3VyIHVy
Z2VudCBhbnN3ZXIgdG8ga25vdyBpZiB5b3Ugd2lsbCBiZSBhYmxlIHRvIGV4ZWN1dGUgdGhpcyBw
cm9qZWN0LCBhbmQKSQp3aWxsIGdpdmUgeW91IG1vcmUgaW5mb3JtYXRpb24gb24gaG93IHRoZSBm
dW5kIHdpbGwgYmUgdHJhbnNmZXJyZWQgdG8geW91cgpiYW5rIGFjY291bnQuCmNvbnRhY3QgbWUg
b24gbXkgcHJpdmF0ZSBlbWFpbCBhZHJlc3MgKG1ycy5hbm5haGJydXVuMUBnbWFpbC5jb20pCgoK
VGhhbmtzCk1ycy4gQW5uYSBILgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9y
ZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcml2ZXJkZXYtZGV2ZWwK
