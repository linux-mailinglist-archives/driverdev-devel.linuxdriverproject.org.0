Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C054BF925
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Feb 2022 14:21:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1FAED40155;
	Tue, 22 Feb 2022 13:21:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y7SZm4zHJ28a; Tue, 22 Feb 2022 13:21:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 97C7D40143;
	Tue, 22 Feb 2022 13:21:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E7F271BF479
 for <devel@linuxdriverproject.org>; Tue, 22 Feb 2022 13:21:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D3A1860ECB
 for <devel@linuxdriverproject.org>; Tue, 22 Feb 2022 13:21:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qPaeO95miymn for <devel@linuxdriverproject.org>;
 Tue, 22 Feb 2022 13:21:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com
 [IPv6:2607:f8b0:4864:20::442])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4F7FD60EC9
 for <devel@driverdev.osuosl.org>; Tue, 22 Feb 2022 13:21:23 +0000 (UTC)
Received: by mail-pf1-x442.google.com with SMTP id x18so12004781pfh.5
 for <devel@driverdev.osuosl.org>; Tue, 22 Feb 2022 05:21:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=qr+ADqQYzmafZveo1g6eMP8umWQ5xsjt+GKPvDoJZ3I=;
 b=c1v+VUfCoe3xTfsiVmFRudp17NQJMidK4grwmtMSYlHyE3IMqM7RvV9HH2GyfWqyEz
 IEEcD7P9cOMQmdoKsXGeVxx9QajNY6BE+P0HUY12Ip3BeZlahf6/nQz6JlQBIeBG2Hz4
 jzuyBloqcfQ1W1yH2GQpsRKdBaIMCFdrcdCrU9aj2Es/FPEXZxcAMLdajhO9CuXAuVbr
 WjdIyT9MwmYFJqnxvslo3bCabGkO2tX1U007EN0yg7TZfqYyAP1rva52cMflrAn2Lc0+
 QNErvvaHo1kvtAT10CifmSCONUJww85CGS6z+d0zDDyPhCYkNo2/8mVzyujqvXM8uV8L
 kISg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=qr+ADqQYzmafZveo1g6eMP8umWQ5xsjt+GKPvDoJZ3I=;
 b=0ElN9Ibbbz3R+M5ZyW9teJnZD9HPb7g+Mfp58i2NiOPtocnnkD7ye4C84ph4nuncve
 Qcu3//1z5Fq0tbPcGoN1GscXkcoKNHzCHH6gbbmOTbufpMCV6p8nAUUy3/5B4rtd/U2K
 +HB2tpelcFmwfmMUNj+4XqclMMWhtMxjdsknNg9T/DdShWRmzBEqMvwfqOGNbpg0X9RI
 y0Wp4L5S9ceTM9OmViusFI44uL+9jffuv2yT3Y8YsjIYzELNhLRsd80Cn1/BsVeBsYdw
 q49FcldUgPEPVxa/43xH8s0OxEFBtf00MpAY6xi+1YEI+WIxGNT1qBvPbXSLHHTyiA6Q
 KYXA==
X-Gm-Message-State: AOAM530K8r+r6rJ7kEf5Tcr4yzYjhM1chfxgIg1g1f48CrwhsEeohh84
 llfvKhGppEMQb0qqdJEOvs5tPit5C80R6RA1pDg=
X-Google-Smtp-Source: ABdhPJxCyaDx/X3P0Q3FM+qoivnfvQimR5kf6i3hzN4y42bOmjbX96MyL4id3ZDFLrdVRAh1TRajNN7QdCjher6yKEg=
X-Received: by 2002:a62:7617:0:b0:4e1:5f3b:2643 with SMTP id
 r23-20020a627617000000b004e15f3b2643mr24511488pfc.13.1645536082648; Tue, 22
 Feb 2022 05:21:22 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:d614:0:0:0:0 with HTTP; Tue, 22 Feb 2022 05:21:22
 -0800 (PST)
From: Jackie James <jackiejames614@gmail.com>
Date: Tue, 22 Feb 2022 13:21:22 +0000
X-Google-Sender-Auth: 8JZNiXNdSjTFc5qK5xiNuoafaIc
Message-ID: <CACmcy00NsjVfUB4Yeu8FrmtCxYkR+mhVTh_rk76bWoiCUZ15_Q@mail.gmail.com>
Subject: Hello
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

SGVsbG8gZGVhciwKCiAgSSBzZW50IHRoaXMgbWFpbCBwcmF5aW5nIGl0IHdpbGwgZ2V0IHRvIHlv
dSBpbiBhIGdvb2QgY29uZGl0aW9uIG9mCmhlYWx0aCwgc2luY2UgSSBteXNlbGYgYXJlIGluIGEg
dmVyeSBjcml0aWNhbCBoZWFsdGggY29uZGl0aW9uIGluCndoaWNoIEkgc2xlZXAgZXZlcnkgbmln
aHQgd2l0aG91dCBrbm93aW5nIGlmIEkgbWF5IGJlIGFsaXZlIHRvIHNlZSB0aGUKbmV4dCBkYXku
IEkgYnJpbmcgcGVhY2UgYW5kIGxvdmUgdG8geW91LiBJdCBpcyBieSB0aGUgZ3JhY2Ugb2YgR29k
LCBJCmhhZCBubyBjaG9pY2UgdGhhbiB0byBkbyB3aGF0IGlzIGxhd2Z1bCBhbmQgcmlnaHQgaW4g
dGhlIHNpZ2h0IG9mIEdvZApmb3IgZXRlcm5hbCBsaWZlIGFuZCBpbiB0aGUgc2lnaHQgb2YgbWFu
LCBmb3Igd2l0bmVzcyBvZiBHb2TigJlzIG1lcmN5CmFuZCBnbG9yeSB1cG9uIG15IGxpZmUuIEkg
YW0gTXJzLkphY2tpZSBKYW1lcy5hIHdpZG93LEkgYW0gc3VmZmVyaW5nCmZyb20gYSBsb25nIHRp
bWUgYnJhaW4gdHVtb3IsIEl0IGhhcyBkZWZpbGVkIGFsbCBmb3JtcyBvZiBtZWRpY2FsCnRyZWF0
bWVudCwgYW5kIHJpZ2h0IG5vdyBJIGhhdmUgYWJvdXQgYSBmZXcgbW9udGhzIHRvIGxlYXZlLCBh
Y2NvcmRpbmcKdG8gbWVkaWNhbCBleHBlcnRzLgoKICAgVGhlIHNpdHVhdGlvbiBoYXMgZ290dGVu
IGNvbXBsaWNhdGVkIHJlY2VudGx5IHdpdGggbXkgaW5hYmlsaXR5IHRvCmhlYXIgcHJvcGVyLCBh
bSBjb21tdW5pY2F0aW5nIHdpdGggeW91IHdpdGggdGhlIGhlbHAgb2YgdGhlIGNoaWVmCm51cnNl
IGhlcmVpbiB0aGUgaG9zcGl0YWwsIGZyb20gYWxsIGluZGljYXRpb24gbXkgY29uZGl0aW9ucyBp
cyByZWFsbHkKZGV0ZXJpb3JhdGluZyBhbmQgaXQgaXMgcXVpdGUgb2J2aW91cyB0aGF0LCBhY2Nv
cmRpbmcgdG8gbXkgZG9jdG9ycwp0aGV5IGhhdmUgYWR2aXNlZCBtZSB0aGF0IEkgbWF5IG5vdCBs
aXZlIHRvbyBsb25nLCBCZWNhdXNlIHRoaXMKaWxsbmVzcyBoYXMgZ290dGVuIHRvIGEgdmVyeSBi
YWQgc3RhZ2UuIEkgcGxlYWQgdGhhdCB5b3Ugd2lsbCBub3QKZXhwb3NlIG9yIGJldHJheSB0aGlz
IHRydXN0IGFuZCBjb25maWRlbmNlIHRoYXQgSSBhbSBhYm91dCB0byByZXBvc2UKb24geW91IGZv
ciB0aGUgbXV0dWFsIGJlbmVmaXQgb2YgdGhlIG9ycGhhbnMgYW5kIHRoZSBsZXNzIHByaXZpbGVn
ZS4gSQpoYXZlIHNvbWUgZnVuZHMgSSBpbmhlcml0ZWQgZnJvbSBteSBsYXRlIGh1c2JhbmQsIHRo
ZSBzdW0gb2YgKCQKMTIsNTAwLDAwMC4wMCBEb2xsYXJzKS5IYXZpbmcga25vd24gbXkgY29uZGl0
aW9uLCBJIGRlY2lkZWQgdG8gZG9uYXRlCnRoaXMgZnVuZCB0byB5b3UgYmVsaWV2aW5nIHRoYXQg
eW91IHdpbGwgdXRpbGl6ZSBpdCB0aGUgd2F5IGkgYW0gZ29pbmcKdG8gaW5zdHJ1Y3QgaGVyZWlu
LgoKICAgSSBuZWVkIHlvdSB0byBhc3Npc3QgbWUgYW5kIHJlY2xhaW0gdGhpcyBtb25leSBhbmQg
dXNlIGl0IGZvcgpDaGFyaXR5IHdvcmtzLCBmb3Igb3JwaGFuYWdlcyBhbmQgZ2l2ZXMganVzdGlj
ZSBhbmQgaGVscCB0byB0aGUgcG9vciwKbmVlZHkgYW5kIHdpZG93cyBzYXlzIFRoZSBMb3JkLiIg
SmVyZW1pYWggMjI6MTUtMTYu4oCcIGFuZCBhbHNvIGJ1aWxkCnNjaG9vbHMgZm9yIGxlc3MgcHJp
dmlsZWdlIHRoYXQgd2lsbCBiZSBuYW1lZCBhZnRlciBteSBsYXRlIGh1c2JhbmQgaWYKcG9zc2li
bGUgYW5kIHRvIHByb21vdGUgdGhlIHdvcmQgb2YgR29kIGFuZCB0aGUgZWZmb3J0IHRoYXQgdGhl
IGhvdXNlCm9mIEdvZCBpcyBtYWludGFpbmVkLiBJIGRvIG5vdCB3YW50IGEgc2l0dWF0aW9uIHdo
ZXJlIHRoaXMgbW9uZXkgd2lsbApiZSB1c2VkIGluIGFuIHVuZ29kbHkgbWFubmVyLiBUaGF0J3Mg
d2h5IEknbSB0YWtpbmcgdGhpcyBkZWNpc2lvbi4gSSdtCm5vdCBhZnJhaWQgb2YgZGVhdGgsIHNv
IEkga25vdyB3aGVyZSBJJ20gZ29pbmcuIEkgYWNjZXB0IHRoaXMgZGVjaXNpb24KYmVjYXVzZSBJ
IGRvIG5vdCBoYXZlIGFueSBjaGlsZCB3aG8gd2lsbCBpbmhlcml0IHRoaXMgbW9uZXkgYWZ0ZXIg
SQpkaWUuIFBsZWFzZSBJIHdhbnQgeW91ciBzaW5jZXJlbHkgYW5kIHVyZ2VudCBhbnN3ZXIgdG8g
a25vdyBpZiB5b3UKd2lsbCBiZSBhYmxlIHRvIGV4ZWN1dGUgdGhpcyBwcm9qZWN0IGZvciB0aGUg
Z2xvcnkgb2YgR29kLCBhbmQgSSB3aWxsCmdpdmUgeW91IG1vcmUgaW5mb3JtYXRpb24gb24gaG93
IHRoZSBmdW5kIHdpbGwgYmUgdHJhbnNmZXJyZWQgdG8geW91cgpiYW5rIGFjY291bnQuIE1heSB0
aGUgZ3JhY2UsIHBlYWNlLCBsb3ZlIGFuZCB0aGUgdHJ1dGggaW4gdGhlIFdvcmQgb2YKR29kIGJl
IHdpdGggeW91IGFuZCBhbGwgdGhvc2UgdGhhdCB5b3UgbG92ZSBhbmQgY2FyZSBmb3IuCkknbSB3
YWl0aW5nIGZvciB5b3VyIGltbWVkaWF0ZSByZXBseS4KUmVzcGVjdGZ1bGx5LApNcnMuSmFja2ll
IEphbWVzLApXcml0dGluZyBGcm9tIHRoZSBob3NwaXRhbC4KTWF5IEdvZCBCbGVzcyB5b3UuCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxp
bmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
