Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E3310790A67
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 Sep 2023 02:48:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D296660E70;
	Sun,  3 Sep 2023 00:48:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D296660E70
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xBidvX0ABgAl; Sun,  3 Sep 2023 00:48:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2B506100A;
	Sun,  3 Sep 2023 00:48:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B2B506100A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C4401BF293
 for <devel@linuxdriverproject.org>; Sun,  3 Sep 2023 00:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7283940128
 for <devel@linuxdriverproject.org>; Sun,  3 Sep 2023 00:48:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7283940128
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ujaQYinF81zx for <devel@linuxdriverproject.org>;
 Sun,  3 Sep 2023 00:48:41 +0000 (UTC)
Received: from mail-oo1-xc41.google.com (mail-oo1-xc41.google.com
 [IPv6:2607:f8b0:4864:20::c41])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 55B34400BF
 for <devel@driverdev.osuosl.org>; Sun,  3 Sep 2023 00:48:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 55B34400BF
Received: by mail-oo1-xc41.google.com with SMTP id
 006d021491bc7-573675e6b43so237751eaf.0
 for <devel@driverdev.osuosl.org>; Sat, 02 Sep 2023 17:48:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693702120; x=1694306920;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=smgjNQvN/zBz3mmU82nhG4r+4c8flcKe6kNVrKkmVXI=;
 b=X/laiA7bhtlE/bqershmwoXNqnx3LdZsXfXocb9H6DL3r5tofjWR0jG5rX3V4wz9hu
 ZOclmlyvx0PRc9FtJhEDxQ7V5l8NIFoPA6m1lxhynmdncAQVA8MKS2OYTANZfMISu9SS
 YJAqAx1/yhSNtsklyZuezQwE3H3YalUBPvztEdVWZPRQLWRfh//6IZao7ck+YSUEbf4U
 l/0XsiWgGJE5xcVAboPJwmR57gsJUWCywhnmE8VEUwtMeavaE6/rVk833PZDpKTk4LVW
 O4EVlROoqa6DP5HsityKC+ipCnRO17ADWEZg2k3UdsdS/i9cL6bsJ4iKSQgy99M5o4QX
 9R2A==
X-Gm-Message-State: AOJu0YwEVs9nSEPwN5UKCzihp38Lxp30wcXiVka/Jih7jKsRg+tN35V/
 AW5XO5lm+feetzZmAfgroYGmJRr1uBQ8g8nn1tM=
X-Google-Smtp-Source: AGHT+IHyAZ/LSdWXdyVp+iqcxh23pIEx40EyG4DaZKwG3fOdN3rbLy1vrAOkY3Jft/HB9QuEYoSXgK+qf61RG2PSd6o=
X-Received: by 2002:a4a:275d:0:b0:573:60f6:dde8 with SMTP id
 w29-20020a4a275d000000b0057360f6dde8mr5574739oow.6.1693702120130; Sat, 02 Sep
 2023 17:48:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a8a:ca:0:b0:4e3:bcb8:5b7 with HTTP; Sat, 2 Sep 2023 17:48:39
 -0700 (PDT)
From: "Mrs. Tiril Freydis Brundtland" <tapsobas045@gmail.com>
Date: Sat, 2 Sep 2023 17:48:39 -0700
Message-ID: <CADNzZ4US1N9UVkVQSHnQj5C79WgC+kjOS6MAq2EEpPaFsYu17A@mail.gmail.com>
Subject: My Dear
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1693702120; x=1694306920; darn=driverdev.osuosl.org;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=smgjNQvN/zBz3mmU82nhG4r+4c8flcKe6kNVrKkmVXI=;
 b=poBBlD1aBe1rLH0WpbX7rUTHV2Kqn0JuYFRA+4j/n6GPW+T4sBuDdGCcA3d6G7l+3L
 m+nkc/heqtK7TZX2sX72HZuhe0PpwexgWlaaf0g9PYJWVx7bOol1vb4NmxJHo3yk2uWh
 GYMGvPrWvtQuYdA7su98t2RWiinmNvXW3LslHzo3oL2wi3e2XYlalUJrm+XjFuDbyfOn
 sdnUKV/m19xfwg6uedJGTEB9nRWHeaz6F+/d2SrrMRr6D1qy7LiVdQtblZ7oJFAqww26
 IpfMeZZkLns1CLTrI9KjHuDBUcHl/LDFwEWZ0j3wr/FwjgDh3Go4ztGqJGYS/zKMeHeu
 W3Jg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=poBBlD1a
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
Reply-To: brundtlandm@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TXkgRGVhcgoKTXkgTmFtZSBpcyBNcnMuIFRpcmlsIEZyZXlkaXMgQnJ1bmR0bGFuZCwgZnJvbSBO
b3J3YXkuIEkga25vdyB0aGF0CnRoaXNtZXNzYWdlIHdpbGwgYmUgYSBzdXJwcmlzZSB0byB5b3Uu
IEZpcnN0bHksIEkgYW0gbWFycmllZCB0byBNci4gSm8KQmVua293IEJydW5kdGxhbmQsIEEgZ29s
ZCBtZXJjaGFudCB3aG8gb3ducyBhIHNtYWxsIGdvbGQgTWluZSBpbgpCdXJraW5hIEZhc287IEhl
IGRpZWQgb2YgQ2FyZGlvdmFzY3VsYXIgRGlzZWFzZSBpbiBtaWQtTWFyY2ggMjAxMS4KRHVyaW5n
IGhpcyBsaWZlIHRpbWUgaGUgZGVwb3NpdGVkdGhlIHN1bSBvZiDigqwgOC41IE1pbGxpb24gRXVy
bykgRWlnaHQKbWlsbGlvbiwgRml2ZSBodW5kcmVkIHRob3VzYW5kIEV1cm9zIGluIGEgYmFuayBp
biBPdWFnYWRvdWdvdSB0aGUKQ2FwaXRhbCBjaXR5IG9mIEJ1cmtpbmEgRmFzbyBpbiBXZXN0IEFm
cmljYS4gVGhlIGRlcG9zaXRlZCBtb25leSB3YXMKZnJvbSB0aGUgc2FsZSBvZiB0aGUgc2hhcmVz
LCBkZWF0aCBiZW5lZml0cyBwYXltZW50IGFuZCBlbnRpdGxlbWVudHMKb2YgbXkgZGVjZWFzZWQg
aHVzYmFuZCBieSBoaXMgY29tcGFueS4KCkkgYW0gc2VuZGluZyB0aGlzIG1lc3NhZ2UgdG8geW91
IHByYXlpbmcgdGhhdCBpdCB3aWxsIHJlYWNoIHlvdSBpbgpnb29kIGhlYWx0aCwgc2luY2UgSSBh
bSBub3QgaW4gZ29vZCBoZWFsdGggY29uZGl0aW9uIGluIHdoaWNoIEkgc2xlZXAKZXZlcnkgbmln
aHQgd2l0aG91dCBrbm93aW5nIGlmIEkgbWF5IGJlIGFsaXZlIHRvIHNlZSB0aGUgbmV4dCBkYXku
IEkKYW0gc3VmZmVyaW5nIGZyb20gbG9uZyB0aW1lIGNhbmNlciBhbmQgcHJlc2VudGx5IEkgYW0g
cGFydGlhbGx5CnN1ZmZlcmluZyBmcm9tIGEgc3Ryb2tlIGlsbG5lc3Mgd2hpY2ggaGFzIGJlY29t
ZSBhbG1vc3QgaW1wb3NzaWJsZSBmb3IKbWUgdG8gbW92ZSBhcm91bmQuIEkgYW0gbWFycmllZCB0
byBteSBsYXRlIGh1c2JhbmQgZm9yIG92ZXIgNCB5ZWFycwpiZWZvcmUgaGUgZGllZCBhbmQgaXMg
dW5mb3J0dW5hdGVseSB0aGF0IHdlIGRvbid0IGhhdmUgYSBjaGlsZCwgbXkKZG9jdG9yIGNvbmZp
ZGVkIGluIG1lIHRoYXQgaSBoYXZlIGxlc3MgY2hhbmNlIHRvIGxpdmUuIEhhdmluZyBrbm93biBt
eQpoZWFsdGggY29uZGl0aW9uLCBJIGRlY2lkZWQgdG8gY29udGFjdCB5b3UgdG8gY2xhaW0gdGhl
IGZ1bmQgc2luY2UgSQpkb24ndCBoYXZlIGFueSByZWxhdGlvbi4gSSBncmV3IHVwIGZyb20gdGhl
IG9ycGhhbmFnZS4KCkkgaGF2ZSBkZWNpZGVkIHRvIGRvbmF0ZSB3aGF0IEkgaGF2ZSB0byB5b3Ug
Zm9yIHRoZSBzdXBwb3J0IG9mIGhlbHBpbmcKTW90aGVybGVzcyBiYWJpZXMvTGVzcyBwcml2aWxl
Z2VkL1dpZG93cycgYmVjYXVzZSBJIGFtIGR5aW5nIGFuZApkaWFnbm9zZWQgb2YgY2FuY2VyIGZv
ciBhYm91dCAyIHllYXJzIGFnby4gSSBoYXZlIGJlZW4gdG91Y2hlZCBieSBHb2QKQWxtaWdodHkg
dG8gZG9uYXRlIGZyb20gd2hhdCBJIGhhdmUgaW5oZXJpdGVkIGZyb20gbXkgbGF0ZSBodXNiYW5k
IHRvCnlvdSBmb3IgZ29vZCB3b3JrIG9mIEdvZCBBbG1pZ2h0eS4gSSBoYXZlIGFza2VkIEFsbWln
aHR5IEdvZCB0bwpmb3JnaXZlIG1lIGFuZCBiZWxpZXZlIGhlIGhhcywgYmVjYXVzZSBIZSBpcyBh
IE1lcmNpZnVsIEdvZCBJIHdpbGwgYmUKZ29pbmcgaW4gZm9yIGFuIG9wZXJhdGlvbiBzdXJnZXJ5
IHNvb24uCgpUaGlzIGlzIHRoZSByZWFzb24gSSBuZWVkIHlvdXIgc2VydmljZXMgdG8gc3RhbmQg
YXMgbXkgbmV4dCBvZiBraW4gb3IKYW4gZXhlY3V0b3IgdG8gY2xhaW0gdGhlIGZ1bmRzIGZvciBj
aGFyaXR5IHB1cnBvc2VzLiBJZiB0aGlzIG1vbmV5CnJlbWFpbnMgdW5jbGFpbWVkIGFmdGVyIG15
IGRlYXRoLCB0aGUgYmFuayBleGVjdXRpdmVzIG9yIHRoZQpnb3Zlcm5tZW50IHdpbGwgdGFrZSB0
aGUgbW9uZXkgYXMgdW5jbGFpbWVkIGZ1bmQgYW5kIG1heWJlIHVzZSBpdCBmb3IKc2VsZmlzaCBh
bmQgd29ydGhsZXNzIHZlbnR1cmVzLCBJbmRlZWQgYSB2ZXJ5IGhvbmVzdCBwZXJzb24gd2hvIGNh
bgpjbGFpbSB0aGlzIG1vbmV5IGFuZCB1c2UgaXQgZm9yIENoYXJpdHkgd29ya3MsIGZvciBvcnBo
YW5hZ2VzLCB3aWRvd3MKYW5kIGFsc28gYnVpbGQgc2Nob29scyBmb3IgbGVzcyBwcml2aWxlZ2Ug
dGhhdCB3aWxsIGJlIG5hbWVkIGFmdGVyIG15CmxhdGUgaHVzYmFuZCBhbmQgbXkgbmFtZTsgSSBu
ZWVkIHlvdXIgdXJnZW50IGFuc3dlciB0byBrbm93IGlmIHlvdQp3aWxsIGJlIGFibGUgdG8gZXhl
Y3V0ZSB0aGlzIHByb2plY3QsIGFuZCBJIHdpbGwgZ2l2ZSB5b3UgbW9yZQppbmZvcm1hdGlvbiBv
biBob3cgdGhlIGZ1bmQgd2lsbCBiZSB0cmFuc2ZlcnJlZCB0byB5b3VyIGJhbmsgYWNjb3VudC4K
ClRoYW5rcwpNcnMuIFRpcmlsIEYuIEJydW5kdGxhbmQKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJp
dmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
