Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B1B5616CE
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jun 2022 11:51:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3908B84555;
	Thu, 30 Jun 2022 09:51:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3908B84555
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RI9tVrFLa0Mw; Thu, 30 Jun 2022 09:51:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9824184541;
	Thu, 30 Jun 2022 09:51:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9824184541
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ACD341BF956
 for <devel@linuxdriverproject.org>; Thu, 30 Jun 2022 09:51:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7BF856132A
 for <devel@linuxdriverproject.org>; Thu, 30 Jun 2022 09:51:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7BF856132A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8r688hhonceT for <devel@linuxdriverproject.org>;
 Thu, 30 Jun 2022 09:51:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2F1C61328
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com
 [IPv6:2607:f8b0:4864:20::541])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C2F1C61328
 for <devel@driverdev.osuosl.org>; Thu, 30 Jun 2022 09:51:47 +0000 (UTC)
Received: by mail-pg1-x541.google.com with SMTP id g4so11090705pgc.1
 for <devel@driverdev.osuosl.org>; Thu, 30 Jun 2022 02:51:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=Mh16V4DDmryXvRr5qAa+kUOIHQNEjsPFdvIXlGWznls=;
 b=b4azuwh06Y8d6O9yLbT6Bk1QnPhqV2hbd9h1s2b+JNzNwCuH/MHi5Ed01n5qM9qge9
 jzU2soaEg2n3VyS6Bpi727LBcpLBVJ3wXTS6cuZIvivaXDshnbappBjHGiMooSjy1lCx
 d4eh9+dbLLqd7FC7yoKKatn4BWp4s78OXop1UKVdh2PMsWz/uUt0XOR4NT2e63g/ITqB
 HLKGBPKtI6nmPu4Ou8+bD5+tt53eAh+i/+vp92V3tK6Sz8PZYnDWf3KNz5gNC38uNTn6
 DVlsnB2fcEeJ2ol1Tc1expdMTaVunbekXqg9TeG8lXZ3ggodzfKctNe23f4QfsJn7kU+
 OPwg==
X-Gm-Message-State: AJIora+B9Uc5rYOsM7ild0KB4D1zb7u7OPbKeS2KwOy8Iw2Eb+5UYyON
 RIR4GBOwLclGrKq/ZXH9orstlkkIaYEoFbegIxI=
X-Google-Smtp-Source: AGRyM1uvqG+ekt6xNue5WROxsIgYNn9f6FiI7F0Rma2jbSjPJDSsJcMUkLp/snoKMyvVe+V9ASEByFn0IWF2egq7eEw=
X-Received: by 2002:a63:86c7:0:b0:40d:af99:608 with SMTP id
 x190-20020a6386c7000000b0040daf990608mr6991786pgd.515.1656582706993; Thu, 30
 Jun 2022 02:51:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7301:2bcb:b0:6a:9824:ff19 with HTTP; Thu, 30 Jun 2022
 02:51:41 -0700 (PDT)
From: "Mrs,Jackie Grayson" <jackiegrayson08@gmail.com>
Date: Wed, 29 Jun 2022 21:51:41 -1200
X-Google-Sender-Auth: ShAr0KfLF4kRoVy90Rj6Ra0F_Cs
Message-ID: <CAEX3VDKv-Qmrb8pd79+aQTQg0yEzjHMMywJ6qy-Nqepbk+maQw@mail.gmail.com>
Subject: Greethings my beloved friend,
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=Mh16V4DDmryXvRr5qAa+kUOIHQNEjsPFdvIXlGWznls=;
 b=CHYYpnvIyPaPFM3WqxeU8qahSIk3XHLkVSaidBdWYGHEj1rV58Vi9okH95O9u/E0PX
 wxfpkPCp8jzs518DMOc8Z2q1B4hPDoq3roFXJ0NrfYq6YCQiccoo7V07mUMR5aqoWB5u
 pxUd0P/Ur2PkkXIkF3XnylwkYCt1tXT0rMwyY6bHZOpzqwlxP8GF4//1vEAmDtHIKBzM
 w8SBapXkVhQ8T+/6fuWEjjtuOkjL9R6/VmB6uouzCRUMktgv4/YxeApSr+c5MflbREV/
 rUVEQyy9fKLVoIYsvnWTiUSiYsK48lznE6/OP9vKpCo4XopjtqBVYS6mHBuBn2PrqWDV
 0XKQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=CHYYpnvI
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

SGVsbG8gbXkgZGVhciBmcmllbmQsCgogIEkgc2VudCB0aGlzIG1haWwgcHJheWluZyBpdCB3aWxs
IGdldCB0byB5b3UgaW4gYSBnb29kIGNvbmRpdGlvbiBvZgpoZWFsdGgsIHNpbmNlIEkgbXlzZWxm
IGFyZSBpbiBhIHZlcnkgY3JpdGljYWwgaGVhbHRoIGNvbmRpdGlvbiBpbgp3aGljaCBJIHNsZWVw
IGV2ZXJ5IG5pZ2h0IHdpdGhvdXQga25vd2luZyBpZiBJIG1heSBiZSBhbGl2ZSB0byBzZWUgdGhl
Cm5leHQgZGF5LiBJIGJyaW5nIHBlYWNlIGFuZCBsb3ZlIHRvIHlvdS4gSXQgaXMgYnkgdGhlIGdy
YWNlIG9mIEdvZCwgSQpoYWQgbm8gY2hvaWNlIHRoYW4gdG8gZG8gd2hhdCBpcyBsYXdmdWwgYW5k
IHJpZ2h0IGluIHRoZSBzaWdodCBvZiBHb2QKZm9yIGV0ZXJuYWwgbGlmZSBhbmQgaW4gdGhlIHNp
Z2h0IG9mIG1hbiwgZm9yIHdpdG5lc3Mgb2YgR29k4oCZcyBtZXJjeQphbmQgZ2xvcnkgdXBvbiBt
eSBsaWZlLEkgYW0gTXJzLEphY2tpZSBHcmF5c29uLmEgd2lkb3cuSSBhbSBzdWZmZXJpbmcKZnJv
bSBhIGxvbmcgdGltZSBicmFpbiB0dW1vciwgSXQgaGFzIGRlZmlsZWQgYWxsIGZvcm1zIG9mIG1l
ZGljYWwKdHJlYXRtZW50LCBhbmQgcmlnaHQgbm93IEkgaGF2ZSBhYm91dCBhIGZldyBtb250aHMg
dG8gbGVhdmUsIGFjY29yZGluZwp0byBtZWRpY2FsIGV4cGVydHMuVGhlIHNpdHVhdGlvbiBoYXMg
Z290dGVuIGNvbXBsaWNhdGVkIHJlY2VudGx5IHdpdGgKbXkgaW5hYmlsaXR5IHRvIGhlYXIgcHJv
cGVyLCBhbSBjb21tdW5pY2F0aW5nIHdpdGggeW91IHdpdGggdGhlIGhlbHAKb2YgdGhlIGNoaWVm
IG51cnNlIGhlcmVpbiB0aGUgaG9zcGl0YWwsIGZyb20gYWxsIGluZGljYXRpb24gbXkKY29uZGl0
aW9ucyBpcyByZWFsbHkgZGV0ZXJpb3JhdGluZyBhbmQgaXQgaXMgcXVpdGUgb2J2aW91cyB0aGF0
LAphY2NvcmRpbmcgdG8gbXkgZG9jdG9ycyB0aGV5IGhhdmUgYWR2aXNlZCBtZSB0aGF0IEkgbWF5
IG5vdCBsaXZlIHRvbwpsb25nLCBCZWNhdXNlIHRoaXMgaWxsbmVzcyBoYXMgZ290dGVuIHRvIGEg
dmVyeSBiYWQgc3RhZ2UuIEkgcGxlYWQKdGhhdCB5b3Ugd2lsbCBub3QgZXhwb3NlIG9yIGJldHJh
eSB0aGlzIHRydXN0IGFuZCBjb25maWRlbmNlIHRoYXQgSSBhbQphYm91dCB0byByZXBvc2Ugb24g
eW91IGZvciB0aGUgbXV0dWFsIGJlbmVmaXQgb2YgdGhlIG9ycGhhbnMgYW5kIHRoZQpsZXNzIHBy
aXZpbGVnZS4gSSBoYXZlIHNvbWUgZnVuZHMgSSBpbmhlcml0ZWQgZnJvbSBteSBsYXRlIGh1c2Jh
bmQsCnRoZSBzdW0gb2YgKCQxMSw1MDAsMDAwLjAwIERvbGxhcnMpLkhhdmluZyBrbm93biBteSBj
b25kaXRpb24sIEkKZGVjaWRlZCB0byBkb25hdGUgdGhpcyBmdW5kIHRvIHlvdSBiZWxpZXZpbmcg
dGhhdCB5b3Ugd2lsbCB1dGlsaXplIGl0CnRoZSB3YXkgaSBhbSBnb2luZyB0byBpbnN0cnVjdCBo
ZXJlaW4uIEkgbmVlZCB5b3UgdG8gYXNzaXN0IG1lIGFuZApyZWNsYWltIHRoaXMgbW9uZXkgYW5k
IHVzZSBpdCBmb3IgQ2hhcml0eSB3b3JrcywgZm9yIG9ycGhhbmFnZXMgYW5kCmdpdmVzIGp1c3Rp
Y2UgYW5kIGhlbHAgdG8gdGhlIHBvb3IsIG5lZWR5IGFuZCB3aWRvd3Mgc2F5cyBUaGUgTG9yZC4i
CkplcmVtaWFoIDIyOjE1LTE2LuKAnCBhbmQgYWxzbyBidWlsZCBzY2hvb2xzIGZvciBsZXNzIHBy
aXZpbGVnZSB0aGF0CndpbGwgYmUgbmFtZWQgYWZ0ZXIgbXkgbGF0ZSBodXNiYW5kIGlmIHBvc3Np
YmxlIGFuZCB0byBwcm9tb3RlIHRoZQp3b3JkIG9mIEdvZCBhbmQgdGhlIGVmZm9ydCB0aGF0IHRo
ZSBob3VzZSBvZiBHb2QgaXMgbWFpbnRhaW5lZC4gSSBkbwpub3Qgd2FudCBhIHNpdHVhdGlvbiB3
aGVyZSB0aGlzIG1vbmV5IHdpbGwgYmUgdXNlZCBpbiBhbiB1bmdvZGx5Cm1hbm5lci4gVGhhdCdz
IHdoeSBJJ20gdGFraW5nIHRoaXMgZGVjaXNpb24uIEknbSBub3QgYWZyYWlkIG9mIGRlYXRoLApz
byBJIGtub3cgd2hlcmUgSSdtIGdvaW5nLiBJIGFjY2VwdCB0aGlzIGRlY2lzaW9uIGJlY2F1c2Ug
SSBkbyBub3QKaGF2ZSBhbnkgY2hpbGQgd2hvIHdpbGwgaW5oZXJpdCB0aGlzIG1vbmV5IGFmdGVy
IEkgZGllLiBQbGVhc2UgSSB3YW50CnlvdXIgc2luY2VyZWx5IGFuZCB1cmdlbnQgYW5zd2VyIHRv
IGtub3cgaWYgeW91IHdpbGwgYmUgYWJsZSB0bwpleGVjdXRlIHRoaXMgcHJvamVjdCBmb3IgdGhl
IGdsb3J5IG9mIEdvZCwgYW5kIEkgd2lsbCBnaXZlIHlvdSBtb3JlCmluZm9ybWF0aW9uIG9uIGhv
dyB0aGUgZnVuZCB3aWxsIGJlIHRyYW5zZmVycmVkIHRvIHlvdXIgYmFuayBhY2NvdW50LgpNYXkg
dGhlIGdyYWNlLCBwZWFjZSwgbG92ZSBhbmQgdGhlIHRydXRoIGluIHRoZSBXb3JkIG9mIEdvZCBi
ZSB3aXRoCnlvdSBhbmQgYWxsIHRob3NlIHRoYXQgeW91IGxvdmUgYW5kIGNhcmUgZm9yLgpJJ20g
d2FpdGluZyBmb3IgeW91ciBpbW1lZGlhdGUgcmVwbHksClJlZ2FyZHMKTXJzLEphY2tpZSBHcmF5
c29uLgpXcml0dGluZyBGcm9tIHRoZSBob3NwaXRhbC4KTWF5IEdvZCBCbGVzcyB5b3UuCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
