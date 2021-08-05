Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF213E1018
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Aug 2021 10:21:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9620605D5;
	Thu,  5 Aug 2021 08:21:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BavT8LGN31Wz; Thu,  5 Aug 2021 08:21:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42E4A605C1;
	Thu,  5 Aug 2021 08:21:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 55CE71BF9CB
 for <devel@linuxdriverproject.org>; Thu,  5 Aug 2021 08:21:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 42E08605C1
 for <devel@linuxdriverproject.org>; Thu,  5 Aug 2021 08:21:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wAk_sluqrWpc for <devel@linuxdriverproject.org>;
 Thu,  5 Aug 2021 08:21:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1E587600C5
 for <devel@driverdev.osuosl.org>; Thu,  5 Aug 2021 08:21:22 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id p5so5388522wro.7
 for <devel@driverdev.osuosl.org>; Thu, 05 Aug 2021 01:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=UwlX4bp1n9HGMkP7SGsSZKkpfdLKFQuSArFd7QWr5SU=;
 b=t7SSKHckU8SktJZRmEoYRel9DidD6gn7mL5CYmLnjQlkFsbZM79wcs5PNjc/b+nNN7
 9qmzGM42m3YcZNnyc7Z0wsjMcNVKJrzWC393eA84YRqU3UtWJcf/ppaPOCV0x866Tyca
 XCOx6csCkuM6tPwO3q6iOnIau9uXml2IyzlhIIhUeQ3NnibYtt0MXmc9UGRcuZVToN+Z
 AWO8J+swQl9+f5JLMuh20MhUl6EcZDK8nIzWS+VQbKFpTdWTSA5BytpjsmiGRQhNI1dL
 VBYEEgOqI6VQQsyBlSeP7c9KEXfrDNlYxK1O2hgX5AzXtGmOX07UZ6TlV926bE15JtOZ
 5MJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=UwlX4bp1n9HGMkP7SGsSZKkpfdLKFQuSArFd7QWr5SU=;
 b=PztKbJGRswnofYFNbI0a++CE0C5eE1JPDhZiXB5NxkyWc8/JxjrHyDCQ1HIn8ROZbc
 BAq87HuNwaNj3V91wxSzvK4tXO6zN0hYYIsIr0c9xIb3jefAgk17FLkpyfygGWGzVFyU
 Uk6lfM9R5YWP23G1T7DuYzGtwqZm1CVYS6r7Njtni7A6MmftCcOQ+9qtGb6ZqL4cvtEC
 B20Y3vkg/4SaRHpVSP5YisyaQWIkr/Umm4p59Rk07zkqhkrqard+ZKR8QrPmNX9kQYbF
 +GJ3QffiQKawWN9tt/yzuUDDtFbT2RsR6axVUX/bkf5b/tI+EsdCd8dGGkA4UrhbFyJy
 YLTQ==
X-Gm-Message-State: AOAM531zbLAN6jHONz0pZp7w5rOpdFNg92k8fP066MvaJNpWs1aVbi74
 rnHdcNkhPeYCvAjSnQ+HaojOkiOEQGlBBUNbTxQ=
X-Google-Smtp-Source: ABdhPJwD6fGaZT0gElZ1ICgbQlGhW2QkZX1RotOfPKUEPExnFxcr2aniY31ogYOhY5IRm6oeLGMqR1+uSBWLweOD5Ww=
X-Received: by 2002:adf:f046:: with SMTP id t6mr3862128wro.266.1628151680028; 
 Thu, 05 Aug 2021 01:21:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a7b:ce02:0:0:0:0:0 with HTTP;
 Thu, 5 Aug 2021 01:21:19 -0700 (PDT)
From: AISHA GADDAFI <aishagddaf68@gmail.com>
Date: Thu, 5 Aug 2021 01:21:19 -0700
Message-ID: <CAEN3N-AQ0W8JXDN4KDAwiW2H5ZDKAQSVb9vWBTDU8Xp8Mvu85Q@mail.gmail.com>
Subject: Dearest Friend,?
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
Reply-To: ayishagddafio@mail.ru
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TGllYnN0ZXIgRnJldW5kLAoKSW0gTmFtZW4gR290dGVzLCBkZXMgZ27DpGRpZ3N0ZW4sIGJhcm1o
ZXJ6aWdzdGVuLgoKRnJpZWRlIHNlaSBtaXQgZGlyIHVuZCBCYXJtaGVyemlna2VpdCBzZWkgbWl0
IGRpciB1bmQgU2VnZW4gc2VpIG1pdCBkaXIuCkljaCBoYWJlIGRpZSBTdW1tZSB2b24gMjcsNSBN
aWxsaW9uZW4gVVNEIGbDvHIgSW52ZXN0aXRpb25lbiwgaWNoCmludGVyZXNzaWVyZSBtaWNoIGbD
vHIgU2llIGbDvHIgZGllIFVudGVyc3TDvHR6dW5nIHZvbgpJbnZlc3RpdGlvbnNwcm9qZWt0ZW4g
aW4gSWhyZW0gTGFuZC4gTWVpbiBOYW1lIGlzdCBBaXNoYSBHYWRkYWZpIHVuZApsZWJlIGRlcnpl
aXQgaW0gT21hbiwgaWNoIGJpbiBlaW5lIFdpdHdlIHVuZCBhbGxlaW5lcnppZWhlbmRlIE11dHRl
cgptaXQgZHJlaSBLaW5kZXJuLCBkaWUgZWluemlnZSBsZWlibGljaGUgVG9jaHRlciBkZXMgdmVy
c3RvcmJlbmVuCmxpYnlzY2hlbiBQcsOkc2lkZW50ZW4gKGRlbSB2ZXJzdG9yYmVuZW4gT2JlcnN0
IE11YW1tYXIgR2FkZGFmaSkgdW5kCnN0ZWhlIGRlcnplaXQgdW50ZXIgcG9saXRpc2NoZW0gQXN5
bHNjaHV0eiBkZXIgb21hbmlzY2hlbiBSZWdpZXJ1bmcuCgpCaXR0ZSBhbnR3b3J0ZW4gU2llIGRy
aW5nZW5kIGbDvHIgd2VpdGVyZSBEZXRhaWxzLgoKbWVpbmUgRS1NYWlsLUFkcmVzc2UgdW50ZW46
IGF5aXNoYWdkZGFmaW9AbWFpbC5ydQpWaWVsZW4gRGFuawpNaXQgZnJldW5kbGljaGVuIEdyw7zD
n2VuIEFpc2hhCgoKCkRlYXJlc3QgRnJpZW5kLAoKSW4gdGhlIG5hbWUgb2YgR29kLCBNb3N0IEdy
YWNpb3VzLCBNb3N0IE1lcmNpZnVsLgoKUGVhY2UgYmUgdXBvbiB5b3UgYW5kIG1lcmN5IGJlIHVw
b24geW91IGFuZCBibGVzc2luZ3MgYmUgdXBvbiB5b3UuCkkgaGF2ZSB0aGUgc3VtIG9mICQyNy41
IG1pbGxpb24gVVNEIGZvciBpbnZlc3RtZW50LCBJIGFtIGludGVyZXN0ZWQgaW4KeW91IGZvciBp
bnZlc3RtZW50IHByb2plY3QgYXNzaXN0YW5jZSBpbiB5b3VyIGNvdW50cnkuIE15IG5hbWUgaXMK
QWlzaGEgIEdhZGRhZmkgYW5kIHByZXNlbnRseSBsaXZpbmcgaW4gT21hbiwgSSBhbSBhIFdpZG93
IGFuZCBzaW5nbGUKTW90aGVyIHdpdGggdGhyZWUgQ2hpbGRyZW4sIHRoZSBvbmx5IGJpb2xvZ2lj
YWwgRGF1Z2h0ZXIgb2YgbGF0ZQpMaWJ5YW4gUHJlc2lkZW50IChMYXRlIENvbG9uZWwgTXVhbW1h
ciBHYWRkYWZpKSBhbmQgcHJlc2VudGx5IEkgYW0KdW5kZXIgcG9saXRpY2FsIGFzeWx1bSBwcm90
ZWN0aW9uIGJ5IHRoZSBPbWFuaSBHb3Zlcm5tZW50LgoKS2luZGx5IHJlcGx5IHVyZ2VudGx5IGZv
ciBtb3JlIGRldGFpbHMuCgpteSBlbWFpbCBhZGRyZXNzIGJlbG93OiBheWlzaGFnZGRhZmlvQG1h
aWwucnUKVGhhbmtzCllvdXJzIFRydWx5IEFpc2hhCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZl
cnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
