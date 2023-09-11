Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F012579A79D
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Sep 2023 13:27:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43A2140C53;
	Mon, 11 Sep 2023 11:27:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43A2140C53
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NFzzzKT29Tr4; Mon, 11 Sep 2023 11:27:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0CF1C40C4F;
	Mon, 11 Sep 2023 11:27:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CF1C40C4F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 742AE1BF287
 for <devel@linuxdriverproject.org>; Mon, 11 Sep 2023 11:27:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4D86761005
 for <devel@linuxdriverproject.org>; Mon, 11 Sep 2023 11:27:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D86761005
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dHL2REHYF9V2 for <devel@linuxdriverproject.org>;
 Mon, 11 Sep 2023 11:27:35 +0000 (UTC)
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com
 [IPv6:2607:f8b0:4864:20::841])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A16EC60FDF
 for <devel@linuxdriverproject.org>; Mon, 11 Sep 2023 11:27:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A16EC60FDF
Received: by mail-qt1-x841.google.com with SMTP id
 d75a77b69052e-4135d72c75bso31616941cf.0
 for <devel@linuxdriverproject.org>; Mon, 11 Sep 2023 04:27:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694431654; x=1695036454;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=smgjNQvN/zBz3mmU82nhG4r+4c8flcKe6kNVrKkmVXI=;
 b=Rh/j/8Q9m5kQ4zEgqherveXn2QXeoWOxiSMBsrCCvAubFxqJU9kiGwOJNk5FSS4EVj
 VwYTyE+kYYk2Gg+hiT2sGXnlGvTHC1u1K20tLXVDuQea0wzDQps5nCHIv3DcKL5Htpiy
 rEUqqbjLNnSkUXW6ymejUkEqPzoMc6ub913ZCNxKP4hnIFNxRpoF8VAh6xDh04fmgo1t
 bk5utdrpkneK3bKlbGK6NJhPVZB19HV3N7egGaVAxxkh5lH8glCyyJ+S6yelZ15Hfpf4
 PMqqS/5XwjU43MCCWKAm+/VMQJUj1sJQW479DZiQ/a4j8pieqpyshoIG4duhKQgwRgcp
 yDnw==
X-Gm-Message-State: AOJu0YxDmVcukAOvt7pbAka1LYOhZeMEJd+FfXeWBzlXYtoPGDBJoZgl
 DPzb6hxWU3HEzWKhxgTlSJhWme8do4b3UkDLT3M=
X-Google-Smtp-Source: AGHT+IEqc7LmvjtAxl9BSerTn5leoIiIqHttK59qS16EaKRuOZlmioDgWBtTuoaa4WFfIISIh6xeuVKxxQ6uTx24qs0=
X-Received: by 2002:a05:622a:20f:b0:405:56bb:343b with SMTP id
 b15-20020a05622a020f00b0040556bb343bmr10776990qtx.41.1694431653620; Mon, 11
 Sep 2023 04:27:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:622a:15d4:b0:403:b79a:ef1f with HTTP; Mon, 11 Sep 2023
 04:27:33 -0700 (PDT)
From: "Mrs. Tiril Freydis Brundtland" <dr.akarsh.shankar1@gmail.com>
Date: Mon, 11 Sep 2023 04:27:33 -0700
Message-ID: <CAKRPCNKnAdwHUSmQN+x-5DtFzC-7O0C1+FbxQWRV9Z6WigatLA@mail.gmail.com>
Subject: My Dear
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1694431654; x=1695036454;
 darn=linuxdriverproject.org; 
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=smgjNQvN/zBz3mmU82nhG4r+4c8flcKe6kNVrKkmVXI=;
 b=D6dGL5uyvQbn2PEp54EwvIRmPvwAvJ6WgGvl5ME1oLK0CdqFOB5Vy8ovyQcHZZK9K4
 D6DOdGzZiSnSM4qm7JoDlmvXmbTYhHZ+TS9xVxL6KqYLxfu4smUEdwGZrnbB3CZm+N31
 2OvL94MOyCr5W9tQKYnEyfKtnpvE8MARIDPjGRMFlLsSWz8CAKFXTIv8r5TIMX4X1Grk
 OMmHTVqxJCLEJaqRbCVa6e/JGrelCOc5M85JBp2McQXrLkLvPio9xiYJyaflEePYMukW
 ahom1dY+TfLjIM1igVgF1UhoTEmZOtyHxntCl9voI6Ondnt07MyZeaftj+jm2cIwi0e0
 gWSQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=D6dGL5uy
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
