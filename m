Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 047475FC184
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Oct 2022 09:55:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2705883139;
	Wed, 12 Oct 2022 07:55:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2705883139
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P9di7gNnpo_W; Wed, 12 Oct 2022 07:55:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BBCCC83267;
	Wed, 12 Oct 2022 07:55:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BBCCC83267
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 64B621BF8C7
 for <devel@linuxdriverproject.org>; Wed, 12 Oct 2022 07:54:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4D48760AB8
 for <devel@linuxdriverproject.org>; Wed, 12 Oct 2022 07:54:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D48760AB8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FmhymFiK_hQr for <devel@linuxdriverproject.org>;
 Wed, 12 Oct 2022 07:54:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94EA9607B0
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com
 [IPv6:2607:f8b0:4864:20::443])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 94EA9607B0
 for <devel@driverdev.osuosl.org>; Wed, 12 Oct 2022 07:54:44 +0000 (UTC)
Received: by mail-pf1-x443.google.com with SMTP id f140so15816159pfa.1
 for <devel@driverdev.osuosl.org>; Wed, 12 Oct 2022 00:54:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:sender
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=LjEs1FymYvb0JzBy1JhY5UzB22Ikd1hmH3XhH3RuCBs=;
 b=ILqoOKKfunmunb9FMqtY4bmmZ5FFQhqvFi0SpAEtl0ZNpj+0Pf3YdtGOeOaFRExEXK
 Pw2d5hFhPtlc9K3vJ4MRyrBquvoMrD3GRh5t72h2W3G85Dpq94JN+w428ojvq3cPyom/
 c0RzI/3RHewNy9tfg5eYF0MT29MdO9SOQ4OdjLhUsQhm/+Yx4rG7mtxCa7I2qxW+twAV
 arxKHBJpxwgtaMgbRtqP643YfTLrCN4q3vaEsvXiLQHLY9z93bXT3ReCiVEn8q22knFP
 fK9p1arvECjPL39fFkvvyk2YJaPeZHhjpu0bAjg9bfaIwEKhR+B84NvUd28indrOj7vc
 Ba2g==
X-Gm-Message-State: ACrzQf13lAc7z0MMgPS4kMPkzxHgC3VQWLC00Ply50Ngw8kE5U96qL/v
 5S7m0QqzkDC+hNx5TyEbZbBfleW47bChT1POBuE=
X-Google-Smtp-Source: AMsMyM43AhtSEd7IKmMopfK7nQuW6Dv+/GiKyHjur/oARaV89fvh57sXYOCPGsHUJjQXrk4WJRFj1nmoKIYSrKESy74=
X-Received: by 2002:a05:6a00:4396:b0:563:6fd7:9c98 with SMTP id
 bt22-20020a056a00439600b005636fd79c98mr13720046pfb.13.1665561283961; Wed, 12
 Oct 2022 00:54:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a10:2d11:b0:2fc:ad69:b401 with HTTP; Wed, 12 Oct 2022
 00:54:43 -0700 (PDT)
From: "Mrs.Joan Chen" <mrsjoanchen11@gmail.com>
Date: Wed, 12 Oct 2022 07:54:43 +0000
X-Google-Sender-Auth: 6X24oLc7Zk-6JthcngNppwJzots
Message-ID: <CAA8deCvwS_kDj1zvftHEJmTm0_yx4mS2UCk1c6yvQ=KW34+Q9A@mail.gmail.com>
Subject: Greetings dear friend
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:sender
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=LjEs1FymYvb0JzBy1JhY5UzB22Ikd1hmH3XhH3RuCBs=;
 b=kG6RkgaL1yr3Y+3lh/cY0WVIsT/Wvld5ZgP5MC9o1Hv/k8u5HoC83LnXnaMdfoFS/L
 vRqSdozEJ9xO9i0Y7By1WoZq3VZahgr1lTGMTMrsyLq+BpXWJYkFIx43iXy3VLZ8j89T
 urv8DHwoI0Hn+kbixIKXQQqNyB6LHp0FDhXHSILNLDMlt+A9GD6jq5KVMpR36kT/+7i8
 hkbZUAv7rThxWMx0RkUD61DGQQuCopqA0ndcW2d39t+ihuW8IyatRPwR3Si2VW7nYsnd
 5p1QhkB0oE0FktmF4gyFum9inL4EuRXqMqIG7bOX/hVpwpJQd8FYfHUyQL4cHjyZbNon
 7y5g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=kG6RkgaL
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

R3JlZXRpbmdzCk15IE5hbWUgSXMgTXJzLkpvYW4gQ2hlbiwgZnJvbSBDYW5hZGEsIEkgaGF2ZSBi
ZWVuIHN1ZmZlcmluZyBmcm9tCm92YXJpYW4gY2FuY2VyIGRpc2Vhc2UgYW5kIHRoZSBkb2N0b3Ig
c2F5cyB0aGF0IEkgaGF2ZSBqdXN0IGEgc2hvcnQKdGltZSB0byBsaXZlLiBBbmQgZm9yIHRoZSBw
YXN0IFR3ZWx2ZSB5ZWFycywgSSBoYXZlIGJlZW4gZGVhbGluZyBvbgpnb2xkIGV4cG9ydGF0aW9u
LCBiZWZvcmUgdGhpcyBkaXNlYXNlIGNyaXBwbGVkIG1lIGRvd24uIE15IGxhdGUKaHVzYmFuZCwg
RHIuIEpha2UgQ2hlbiAsIGEgcmV0aXJlZCBkaXBsb21hdCBhbmQgb25lIHRpbWUgbWluaXN0ZXIg
b2YKbWluZXMgYW5kIFBvd2VyLiBNYWRlIGEgbG90IG9mIG1vbmV5IGZyb20gdGhlIHNhbGVzIG9m
IEdvbGQgYW5kIGNvdHRvbgp3aGlsZSBoZSB3YXMgYSBtaW5pc3RlciwgYnV0IHdlIGhhZCBubyBj
aGlsZCBvZiBvdXIgb3duLgoKbGF0ZXIgbXkgaHVzYmFuZCByZWFsaXplZCB0aHJvdWdoIGEgcG93
ZXJmdWwgbWFuIG9mIEdvZCB0aGF0IGl0IHdhcwpldmlsIGNvdXJzZSBpbnN0aXR1dGVkIGJ5IGhp
cyBicm90aGVyIGluIG90aGVyIHRvIGluaGVyaXQgaGlzIHdlYWx0aCwKYnV0IGJlZm9yZSB0aGVu
IGl0IHdhcyB0b28gbGF0ZSwgSSBhbmQgbXkgaHVzYmFuZCBhZ3JlZWQgdGhhdCBoZQpzaG91bGQg
cmVtYXJyeSBhbm90aGVyIHdpZmUgYnV0IG91ciByZWxpZ2lvbiBkaWQgbm90IHBlcm1pdCBpdCwg
d2hpbGUKcGxhbm5pbmcgdGhpcyBteSBodXNiYW5k4oCZcyBoZSBkaWVkIGluIHRoZSBtb250aCBv
ZiBTZXB0ZW1iZXIgMjAwOS4gTm93CkkgYW0gdmVyeSBzaWNrIGFuZCBhY2NvcmRpbmcgdG8gdGhl
IGRvY3Rvciwgd2lsbCBub3Qgc3Vydml2ZSB0aGUKc2lja25lc3MuIFRoZSB3b3JzdCBvZiBpdCBh
bGwgaXMgdGhhdCBJIGRvIG5vdCBoYXZlIGFueSBmYW1pbHkgbWVtYmVycwpvciBjaGlsZHJlbiB0
byBpbmhlcml0IG15IHdlYWx0aC4gSSBhbSB3cml0aW5nIHRoaXMgbGV0dGVyIG5vdyB0aHJvdWdo
CnRoZSBoZWxwIG9mIHRoZSBjb21wdXRlciBiZXNpZGUgbXkgYmVkLgoKSSBoYXZlICgyMC41TWls
bGlvbiBEb2xsYXJzKSBkZXBvc2l0ZWQgaW4gQkFOSyB0aGVyZSBhbmQgSSBhbSB3aWxsaW5nCnRv
IGluc3RydWN0IG15IGJhbmsgdG8gdHJhbnNmZXIgdGhlIHNhaWQgZnVuZCB0byB5b3UgYXMgbXkg
Zm9yZWlnbgpUcnVzdGVlLiBZb3Ugd2lsbCBhcHBseSB0byB0aGUgYmFuayB0aGF0IHRoZXkgc2hv
dWxkIHJlbGVhc2UgdGhlIGZ1bmQKdG8geW91LCBidXQgeW91IHdpbGwgYXNzdXJlIG1lIHRoYXQg
eW91IHdpbGwgdGFrZSAyMCUgb2YgdGhlIGZ1bmQgYW5kCmdpdmUgODAlIHRvIHRoZSBvcnBoYW5h
Z2UgaG9tZSBpbiB5b3VyIGNvdW50cnkgZm9yIG15IHNvdWwgdG8gcmVzdAphZnRlciBJIGhhdmUg
Z29uZS4gSW4gbXkgbmV4dCBlbWFpbCwgSSB3aWxsIHNlbmQgeW91IHRoZSBjb3B5IG9mIHRoZQpD
ZXJ0aWZpY2F0ZSBvZiBEZXBvc2l0IHdoaWNoIHdpbGwgZW5hYmxlIHlvdSB0byBhcHBseSB0byB0
aGUgYmFuayBhbmQKcmVjZWl2ZSB0aGUgbW9uZXkgd2l0aCBlYXNlLlRoaXMgbW9uZXkgaXMgc3Rp
bGwgd2l0aCB0aGVtIGFuZCB0aGUKbWFuYWdlbWVudCBqdXN0IHdyb3RlIG1lIGFzIHRoZSB0cnVl
IG93bmVyIHRvIGNvbWUgZm9yd2FyZCB0byByZWNlaXZlCnRoZSBtb25leSBmb3Iga2VlcGluZyBp
dCBzb2xvIG9yIHJhdGhlciBpc3N1ZSBhIGxldHRlciBvZgphdXRob3JpemF0aW9uIHRvIHNvbWVi
b2R5IHRvIHJlY2VpdmUgaXQgb24gbXkgYmVoYWxmIHNpbmNlIEkgY2Fubm90CmNvbWUgb3ZlciBi
ZWNhdXNlIG9mIG15IGlsbG5lc3Mgb3IgdGhleSBnZXQgaXQgY29uZmlzY2F0ZWQuIFByZXNlbnRs
eSwKSSdtIHdpdGggbXkgbGFwdG9wIGluIGEgaG9zcGl0YWwgaGVyZSB3aGVyZSBJIGhhdmUgYmVl
biB1bmRlcmdvaW5nCnRyZWF0bWVudCBmb3IgY2FuY2VyIG9mIHRoZSBsdW5ncy4gSXQgaXMgbXkg
bGFzdCB3aXNoIHRvIHNlZSB0aGF0IHRoaXMKbW9uZXkgaXMgaW52ZXN0ZWQgdG8gYW55IG9yZ2Fu
aXphdGlvbiBvZiB5b3VyIGNob2ljZSBhbmQgZGlzdHJpYnV0ZWQKZWFjaCB5ZWFyIGFtb25nIHRo
ZSBjaGFyaXR5IG9yZ2FuaXphdGlvbiwgdGhlIHBvb3IgYW5kIHRoZSBtb3RoZXJsZXNzCmJhYmll
c+KAmSBob21lLgoKSSB3YW50IHlvdSBhcyBHb2QgZmVhcmluZyBwZXJzb24sIHRvIGFsc28gdXNl
IHRoaXMgbW9uZXkgdG8gZnVuZApvcnBoYW5hZ2VzIGFuZCB3aWRvd3M7IEkgdG9vayB0aGlzIGRl
Y2lzaW9uLCBiZWZvcmUgSSByZXN0IGluIHBlYWNlCmJlY2F1c2UgbXkgdGltZSB3aWxsIHNvb24g
YmUgdXAuIEFzIHNvb24gYXMgSSByZWNlaXZlIHlvdXIgcmVwbHkgSQpzaGFsbCBnaXZlIHlvdSB0
aGUgY29udGFjdCBvZiB0aGVtLiBJIGFtIGFic29sdXRlbHkgYXNzdXJpbmcgeW91IHRoYXQKbm8g
dHJvdWJsZSBpcyBpbnZvbHZlZCBpbiB0aGlzIG1vbmV5IGJlY2F1c2UgdGhpcyBpcyBteSBsYXRl
IGh1c2JhbmQncwptb25leS5SZXNwb25kIHRvIG1lIGltbWVkaWF0ZWx5IGZvciBmdXJ0aGVyIGRl
dGFpbHMgYW5kIGluc3RydWN0aW9ucwpzaW5jZSBJIGFtIGluIHRoZSBlbmQgdGltZXMgb2YgbXkg
bGlmZSBkdWUgdG8gdGhlIG92YXJpYW4gY2FuY2VyCmRpc2Vhc2UuCkhvcGluZyB0byByZWNlaXZl
IHlvdXIgcmVzcG9uc2UgYXMgc29vbiBhcyBwb3NzaWJsZS4KCllvdXIgdXJnZW50bHkgcmVzcG9u
c2VzIGlzIG5lZWRlZApUaGFua3MgYW5kIFJlbWFpbiBibGVzc2VkCllvdXJzIFNpc3RlciBpbiBU
aGUgTG9yZCwKTXJzLkpvYW4gQ2hlbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
