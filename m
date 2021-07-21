Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F5A3D1139
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Jul 2021 16:25:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36E5760B02;
	Wed, 21 Jul 2021 14:25:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8ruXeq8lFmTJ; Wed, 21 Jul 2021 14:25:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9CCF0606C6;
	Wed, 21 Jul 2021 14:25:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD7EA1BF3C4
 for <devel@linuxdriverproject.org>; Wed, 21 Jul 2021 14:25:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB47D606C6
 for <devel@linuxdriverproject.org>; Wed, 21 Jul 2021 14:25:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vK4aQFOWcReN for <devel@linuxdriverproject.org>;
 Wed, 21 Jul 2021 14:25:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 90DB76075E
 for <devel@driverdev.osuosl.org>; Wed, 21 Jul 2021 14:25:04 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id qb4so3496785ejc.11
 for <devel@driverdev.osuosl.org>; Wed, 21 Jul 2021 07:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=hgUZRHyDHpLu1mBEC+0bDj0YZuZT9euQGhj78jUAhfI=;
 b=C772n2b/k8YYPLJCdRZXMCz8nt7+9r5+qP3E+3tu7KNl8n3oy/k05F7pQrz++5WYDR
 Eoc3rPCT9meiDFg5B8J4dqm0Iy/90dpOW1OIaa3QDiBWAiwIE0cnXhAnQbsfg8kLRH2R
 KqI2i8HQnrQd+czMfWx4yku7YhFfkLnF7ELltte7wx2/igLXZGC2gzkWHj/kOzfRhXoP
 9FXRSEt+Fe2wD4bI8ndoSy8qp6SrQyym5XCqp56PbRROFt3WdNL/bDrmTogIluyygFk7
 m9wDShuUinCm8G4l2AQ7kTc5D94hTI1aozCW8JGa55JMcOovAyMzgIUdqnqPZHW5F3j1
 H/Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=hgUZRHyDHpLu1mBEC+0bDj0YZuZT9euQGhj78jUAhfI=;
 b=feogLdaoQZU2Vw1NupgWdw5nC3ulq05JZQh+5WzWAVroODTBKKSG1Ccz10uM5TN1uc
 +Fr7oFGnzrq6jUwW2604hJ2k+IobzBtzwIRNAUndzL8RJBi02abVSVpBccAhWWOur+Id
 kFBqmGC006rrsYm9yln1fJPm8UFnPwiKzG8ImkCAcu84PIYQgweQ+JkseRUFBRfSO9xg
 ElAd37fRya8/ouBPNcla4xfM5K5sNO1gYNGZL3Tl80ekgb4LqoUnGMGFmfmmERDuoufe
 dgeiesiuUGbazVu7ZFumTxpYkOmC5sHLxaMfIIz/Szx50l42p2UHKSvM4RdjdwwJIVix
 Gu5Q==
X-Gm-Message-State: AOAM532MgrPFJ20rmgTLLgqQ1SF7k3wGeEvIs6WdrR1Mpat7yyAR1LHf
 u3LVECtICPag/xlsEKC8hJypumVpRZkvQioNDPY=
X-Google-Smtp-Source: ABdhPJxlDMkT4RMNQHdMwY1jznttVwPvgKcw/uAteKtvUe8tvOYqdqyN69YLejBOrwDKxO8JBns3KQX0Z0l2Zpx3vzU=
X-Received: by 2002:a17:906:a391:: with SMTP id
 k17mr39271029ejz.516.1626877502436; 
 Wed, 21 Jul 2021 07:25:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:69c7:0:0:0:0 with HTTP; Wed, 21 Jul 2021 07:25:01
 -0700 (PDT)
From: "Mrs.Maryam Abdel" <maryamabdel76@gmail.com>
Date: Wed, 21 Jul 2021 07:25:01 -0700
X-Google-Sender-Auth: JAKEKj87knqg4YIxcyrnbPbOLYg
Message-ID: <CANZ1vnb7HjSXid1bYgx2mdN=o=buLqspb36ZApDE7KPU1QZ0cw@mail.gmail.com>
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

RGVhcmVzdCBiZWxvdmVkIG9uZSwKCkkgYW0gTXJzLk1hcmlhbSBBYmR1bCBhIDUyIHllYXIgb2xk
ICBmcm9tIER1YmFpLiBJIHdhcyBib3JuIGFuIG9ycGhhbgphbmQgR09EIGJsZXNzZWQgbWUgYWJ1
bmRhbnRseSB3aXRoIHJpY2hlcyBidXQgbm8gY2hpbGRyZW4gbm9yIGh1c2JhbmQKd2hpY2ggbWFr
ZXMgbWUgYW4gdW5oYXBweSB3b21hbi4gTm93IEkgYW0gYWZmZWN0ZWQgd2l0aCBjYW5jZXIgb2Yg
dGhlCmx1bmcgYW5kIGJyZWFzdCB3aXRoIGEgcGFydGlhbCBzdHJva2Ugd2hpY2ggaGFzIGFmZmVj
dGVkIG15IHNwZWVjaC4gSQpjYW4gbm8gbG9uZ2VyIHRhbGsgd2VsbCBhbmQgaGFsZiBvZiBteSBi
b2R5IGlzIHBhcmFseXplZCwgSSBzZW50IHRoaXMKZW1haWwgdG8geW91IHdpdGggdGhlIGhlbHAg
b2YgbXkgcHJpdmF0ZSBmZW1hbGUgbnVyc2UuCgpNeSBjb25kaXRpb24gaXMgcmVhbGx5IGRldGVy
aW9yYXRpbmcgZGF5IGJ5IGRheSBhbmQgaXQgaXMgcmVhbGx5CmdpdmluZyBtZSBsb3RzIHRvIHRo
aW5rIGFib3V0LiAgVGhpcyBoYXMgcHJvbXB0ZWQgbXkgZGVjaXNpb24gdG8KZG9uYXRlIGFsbCBJ
IGhhdmUgZm9yIGNoYXJpdHk7IEkgaGF2ZSBtYWRlIG51bWVyb3VzIGRvbmF0aW9ucyBhbGwgb3Zl
cgp0aGUgd29ybGQuIEFmdGVyIGdvaW5nIHRocm91Z2ggeW91ciBwcm9maWxlLCBJIGRlY2lkZWQg
dG8gbWFrZSBteSBsYXN0CmRvbmF0aW9uIG9mIHNldmVuIE1pbGxpb24gRml2ZSBIdW5kcmVkIFRo
b3VzYW5kIFVuaXRlZCBLaW5nZG9tIFBvdW5kcwooVUvCozcuNTAwLCAwMDAsIDAwKSB0byB5b3Ug
YXMgbXkgaW52ZXN0bWVudCBtYW5hZ2VyLiBJIHdhbnQgeW91IHRvCmJ1aWxkIGFuIE9ycGhhbmFn
ZSBob21lIHdpdGggbXkgbmFtZSAoICBmTWFyaWFtIEFiZHVsKSBpbiB5b3VyCmNvdW50cnkuCgpJ
ZiB5b3UgYXJlIHdpbGxpbmcgYW5kIGFibGUgdG8gZG8gdGhpcyB0YXNrIGZvciB0aGUgc2FrZSBv
ZiBodW1hbml0eQp0aGVuIHNlbmQgbWUgYmVsb3cgaW5mb3JtYXRpb24gZm9yIG1vcmUgZGV0YWls
cyB0byByZWNlaXZlIHRoZSBmdW5kcy4KCjEuIE5hbWUuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4KCjIuIFBob25lIG51bWJlci4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4KCjMuIEFkZHJlc3MuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4KCjQuIENvdW50cnkgb2YgT3JpZ2luIGFuZCByZXNpZGVuY2UKCgpI
b3BlIHRvIGhlYXIgZnJvbSB5b3Ugc29vbi4KCllvdXJzIEZhaXRoZnVsbHksCk1ycy5NYXJpYW0g
QWJkdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2
ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZl
cmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRl
dmVsCg==
