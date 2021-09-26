Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB89418844
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Sep 2021 13:14:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 551466063D;
	Sun, 26 Sep 2021 11:14:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z9voreMunykF; Sun, 26 Sep 2021 11:14:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D7E960622;
	Sun, 26 Sep 2021 11:14:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 380961BF354
 for <devel@linuxdriverproject.org>; Sun, 26 Sep 2021 11:13:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2F4144023B
 for <devel@linuxdriverproject.org>; Sun, 26 Sep 2021 11:13:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I9KpBR6O48vK for <devel@linuxdriverproject.org>;
 Sun, 26 Sep 2021 11:13:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 737C64021B
 for <devel@driverdev.osuosl.org>; Sun, 26 Sep 2021 11:13:56 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id l8so8505338edw.2
 for <devel@driverdev.osuosl.org>; Sun, 26 Sep 2021 04:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=zxYc19SdaCxEb91wd5SE8XRg7zaHPkbLErr44GThYiM=;
 b=esieqxwrgwu+rjHoZHGJZfD5u4oycgEf58odpqka3DR3DX8igk0ZwE8VqUEyany1x6
 uzZcOqwvkuPQYV5gOzlIdrG9z3dSD4YiybVTkZswaha3QSsSXnVaFg56DrF8J9CdUV1H
 pbTrvPXX43RB5tmg4YfQtYlTAgtnzxT3yD4T/y0P7Q2sNj72Vf0z4mF5upfpeYzOm5J4
 jRfyff/pcbWmF0u4P+Ml22HxhCNki0bj5ugaR1yLWaq715anuK+IPjvV2X+Uwlo3/TZQ
 h2OBSZJJMy+Kg5KY8G/E8iMDBwDxc3PB+kfCbEWkE1fkLo69tHv8qWgvuTY6nzT0DcLu
 FMWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=zxYc19SdaCxEb91wd5SE8XRg7zaHPkbLErr44GThYiM=;
 b=csYY8+fWiUBUF1+rseQiFWkbPdtl+t8U9VYyveGAH96MvPLAWlsCj5VZGrkPc5W3A4
 yMl9rFliKXX96ITuFsWTs2abiYwlEtUp9hglrxsC83w4PxGobfMdYvZ4xm8SPU6REfsk
 RO6874V8bpBSPKWVGR/SGXO1tj/aSa30BBcx50UYZ1xDS2Jvs/BglQX0tJNKa9GDhaDn
 O4N+YovxBAumnCapa8X93AhA8Uzw0Hd/BXfEUs5zdXlctZ8aweSDerp273aaNUIs4u1E
 oKBC9OBI8RffXn6gWcwT+IDL/hJ5tVgW/6cpyLCg5R2CbktPZurK357+MbIy/BjmkiiF
 FCkg==
X-Gm-Message-State: AOAM533MplrNwToaKS0BgBJgwaSEwUBnI1NmxJNiI52qmW4vQbfKFEZW
 klb2eG/Se41S3yMvkcPoHbV7rraWkUVDFcLp0Hg=
X-Google-Smtp-Source: ABdhPJx95XXmuLCtiIz+/oQlwUvJoNAaTl6ytPD1Ry9yoEc97EaNpLxt+O0J46Dts9jd0Oq5hbkmbSMJC3RryfNGF1U=
X-Received: by 2002:a17:906:2dd2:: with SMTP id
 h18mr21157455eji.496.1632654834412; 
 Sun, 26 Sep 2021 04:13:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:1593:0:0:0:0 with HTTP; Sun, 26 Sep 2021 04:13:54
 -0700 (PDT)
From: Jackie Fowler <jackiefowler597@gmail.com>
Date: Sun, 26 Sep 2021 11:13:54 +0000
X-Google-Sender-Auth: 9tNLZ3eRBvprZOVkikapNnp3JCU
Message-ID: <CAKV9mij1tCB316HiqU4c3cf7Qq2JY+0Y1W=nuz_joyisn8nLVw@mail.gmail.com>
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

TXkgQmVsb3ZlZCwKCiBJIHNlbnQgdGhpcyBtYWlsIHByYXlpbmcgaXQgd2lsbCBnZXQgdG8geW91
IGluIGEgZ29vZCBjb25kaXRpb24gb2YKaGVhbHRoLCBzaW5jZSBJIG15c2VsZiBhcmUgaW4gYSB2
ZXJ5IGNyaXRpY2FsIGhlYWx0aCBjb25kaXRpb24gaW4Kd2hpY2ggSSBzbGVlcCBldmVyeSBuaWdo
dCB3aXRob3V0IGtub3dpbmcgaWYgSSBtYXkgYmUgYWxpdmUgdG8gc2VlIHRoZQpuZXh0IGRheS4g
SSBicmluZyBwZWFjZSBhbmQgbG92ZSB0byB5b3UuIEl0IGlzIGJ5IHRoZSBncmFjZSBvZiBHb2Qs
IEkKaGFkIG5vIGNob2ljZSB0aGFuIHRvIGRvIHdoYXQgaXMgbGF3ZnVsIGFuZCByaWdodCBpbiB0
aGUgc2lnaHQgb2YgR29kCmZvciBldGVybmFsIGxpZmUgYW5kIGluIHRoZSBzaWdodCBvZiBtYW4s
IGZvciB3aXRuZXNzIG9mIEdvZOKAmXMgbWVyY3kKYW5kIGdsb3J5IHVwb24gbXkgbGlmZS4gSSBh
bSBNcnMuRm93bGVyLEphY2tpZS5hIHdpZG93IGFuZCBjaXRpemVuIG9mCkNhbmFkYS4gSSBhbSBz
dWZmZXJpbmcgZnJvbSBhIGxvbmcgdGltZSBicmFpbiB0dW1vciwgSXQgaGFzIGRlZmlsZWQKYWxs
IGZvcm1zIG9mIG1lZGljYWwgdHJlYXRtZW50LCBhbmQgcmlnaHQgbm93IEkgaGF2ZSBhYm91dCBh
IGZldwptb250aHMgdG8gbGVhdmUsIGFjY29yZGluZyB0byBtZWRpY2FsIGV4cGVydHMuIFRoZSBz
aXR1YXRpb24gaGFzCmdvdHRlbiBjb21wbGljYXRlZCByZWNlbnRseSB3aXRoIG15IGluYWJpbGl0
eSB0byBoZWFyIHByb3BlciwgYW0KY29tbXVuaWNhdGluZyB3aXRoIHlvdSB3aXRoIHRoZSBoZWxw
IG9mIHRoZSBjaGllZiBudXJzZSBoZXJlaW4gdGhlCmhvc3BpdGFsLCBmcm9tIGFsbCBpbmRpY2F0
aW9uIG15IGNvbmRpdGlvbnMgaXMgcmVhbGx5IGRldGVyaW9yYXRpbmcKYW5kIGl0IGlzIHF1aXRl
IG9idmlvdXMgdGhhdCwgYWNjb3JkaW5nIHRvIG15IGRvY3RvcnMgdGhleSBoYXZlCmFkdmlzZWQg
bWUgdGhhdCBJIG1heSBub3QgbGl2ZSB0b28gbG9uZywgQmVjYXVzZSB0aGlzIGlsbG5lc3MgaGFz
CmdvdHRlbiB0byBhIHZlcnkgYmFkIHN0YWdlLiBJIHBsZWFkIHRoYXQgeW91IHdpbGwgbm90IGV4
cG9zZSBvciBiZXRyYXkKdGhpcyB0cnVzdCBhbmQgY29uZmlkZW5jZSB0aGF0IEkgYW0gYWJvdXQg
dG8gcmVwb3NlIG9uIHlvdSBmb3IgdGhlCm11dHVhbCBiZW5lZml0IG9mIHRoZSBvcnBoYW5zIGFu
ZCB0aGUgbGVzcyBwcml2aWxlZ2UuIEkgaGF2ZSBzb21lCmZ1bmRzIEkgaW5oZXJpdGVkIGZyb20g
bXkgbGF0ZSBodXNiYW5kLCB0aGUgc3VtIG9mICgkIDEyLDUwMCwwMDAuMDAKRG9sbGFycykuSGF2
aW5nIGtub3duIG15IGNvbmRpdGlvbiwgSSBkZWNpZGVkIHRvIGRvbmF0ZSB0aGlzIGZ1bmQgdG8K
eW91IGJlbGlldmluZyB0aGF0IHlvdSB3aWxsIHV0aWxpemUgaXQgdGhlIHdheSBpIGFtIGdvaW5n
IHRvIGluc3RydWN0CmhlcmVpbi4KIEkgbmVlZCB5b3UgdG8gYXNzaXN0IG1lIGFuZCByZWNsYWlt
IHRoaXMgbW9uZXkgYW5kIHVzZSBpdCBmb3IgQ2hhcml0eQp3b3JrcywgZm9yIG9ycGhhbmFnZXMg
YW5kIGdpdmVzIGp1c3RpY2UgYW5kIGhlbHAgdG8gdGhlIHBvb3IsIG5lZWR5CmFuZCB3aWRvd3Mg
c2F5cyBUaGUgTG9yZC4iIEplcmVtaWFoIDIyOjE1LTE2LuKAnCBhbmQgYWxzbyBidWlsZCBzY2hv
b2xzCmZvciBsZXNzIHByaXZpbGVnZSB0aGF0IHdpbGwgYmUgbmFtZWQgYWZ0ZXIgbXkgbGF0ZSBo
dXNiYW5kIGlmCnBvc3NpYmxlIGFuZCB0byBwcm9tb3RlIHRoZSB3b3JkIG9mIEdvZCBhbmQgdGhl
IGVmZm9ydCB0aGF0IHRoZSBob3VzZQpvZiBHb2QgaXMgbWFpbnRhaW5lZC4gSSBkbyBub3Qgd2Fu
dCBhIHNpdHVhdGlvbiB3aGVyZSB0aGlzIG1vbmV5IHdpbGwKYmUgdXNlZCBpbiBhbiB1bmdvZGx5
IG1hbm5lci4gVGhhdCdzIHdoeSBJJ20gdGFraW5nIHRoaXMgZGVjaXNpb24uIEknbQpub3QgYWZy
YWlkIG9mIGRlYXRoLCBzbyBJIGtub3cgd2hlcmUgSSdtIGdvaW5nLiBJIGFjY2VwdCB0aGlzIGRl
Y2lzaW9uCmJlY2F1c2UgSSBkbyBub3QgaGF2ZSBhbnkgY2hpbGQgd2hvIHdpbGwgaW5oZXJpdCB0
aGlzIG1vbmV5IGFmdGVyIEkKZGllLiBQbGVhc2UgSSB3YW50IHlvdXIgc2luY2VyZWx5IGFuZCB1
cmdlbnQgYW5zd2VyIHRvIGtub3cgaWYgeW91CndpbGwgYmUgYWJsZSB0byBleGVjdXRlIHRoaXMg
cHJvamVjdCBmb3IgdGhlIGdsb3J5IG9mIEdvZCwgYW5kIEkgd2lsbApnaXZlIHlvdSBtb3JlIGlu
Zm9ybWF0aW9uIG9uIGhvdyB0aGUgZnVuZCB3aWxsIGJlIHRyYW5zZmVycmVkIHRvIHlvdXIKYmFu
ayBhY2NvdW50LiBNYXkgdGhlIGdyYWNlLCBwZWFjZSwgbG92ZSBhbmQgdGhlIHRydXRoIGluIHRo
ZSBXb3JkIG9mCkdvZCBiZSB3aXRoIHlvdSBhbmQgYWxsIHRob3NlIHRoYXQgeW91IGxvdmUgYW5k
IGNhcmUgZm9yLgpJJ20gd2FpdGluZyBmb3IgeW91ciBpbW1lZGlhdGUgcmVwbHkuCk1heSBHb2Qg
Qmxlc3MgeW91LApNeSBSZWdhcmQncy4KTXJzLkZvd2xlLEphY2tpZS4KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
