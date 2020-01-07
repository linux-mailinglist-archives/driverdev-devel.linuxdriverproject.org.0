Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B2D132168
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Jan 2020 09:31:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1F16C8765E;
	Tue,  7 Jan 2020 08:31:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g1n9KKI69jw6; Tue,  7 Jan 2020 08:31:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C11A08758B;
	Tue,  7 Jan 2020 08:31:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 81F931BF2B6
 for <devel@linuxdriverproject.org>; Tue,  7 Jan 2020 08:31:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7D94080C8A
 for <devel@linuxdriverproject.org>; Tue,  7 Jan 2020 08:31:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TD7gccXIH8vs for <devel@linuxdriverproject.org>;
 Tue,  7 Jan 2020 08:31:13 +0000 (UTC)
X-Greylist: delayed 00:05:15 by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 16B958072F
 for <devel@driverdev.osuosl.org>; Tue,  7 Jan 2020 08:31:13 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id j5so44674909qtq.9
 for <devel@driverdev.osuosl.org>; Tue, 07 Jan 2020 00:31:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=P1qNd7psLj1vN7YrSNjPLisR1SYB4sdk/yxx7a4dqv0=;
 b=bzrYxlco4uNeu7RE3s8e2uVp04X/ylErL+05vS7qIpO+v/86iOTebSWfPL5kFVs1ee
 vQlUC/RCwSEJjK/JplOZO0A1p5YdUhdaUBPkIhp6gWYMNeosBUUwPH+/Uch6kg19MaeN
 mqHSzPq1GskwNO05/rUG2U+JMl2Y9BrePYB+scQSMkzxn9cjXxvsSEUwPFMFzFbw5QEz
 L3UFTxDcGYy6VZkM5z+aWtlCpDKj2o95XuLrHr8mJu5Q1RGEnFSlQv2Buz3+x8z4A1Wl
 0C8JA879OWzxmHzfBCefMKAyftykJuQYapTgBDT2/VtRyGBBdLuy+EgGLy+/CX5vle8o
 USDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=P1qNd7psLj1vN7YrSNjPLisR1SYB4sdk/yxx7a4dqv0=;
 b=VAAdQ9wzZgTfDv8OgBk8tcXk3QgAiMQ2/tHiB1fE3SEbEL9coabLIEYumaSyQbn7JI
 y8GdrZ2Nn6yP5TZQQIe8dwVKOmURTHDgUG6Ux+WerT4XQol3q1PhYp+uzFceEKq34sD7
 rRKxhLte68zswZThz1LI4/Sh7xnnX5OPlEgvmXpkGA71OldQn03nqbSuxWAhWFsyLxzf
 5Jzaz20SIXUTcmY3/ut/u01LG0550cAUy2iaBUh2bpJY7pvtT++nojwkhI9fqujYF/9L
 glaITIHnKt0M5G3XzfjAwoU+sX5FHOjkFOz7BIYvcpxCL1zjU7k9tk5sr75wPaThCEmx
 OGOw==
X-Gm-Message-State: APjAAAVooumxf5WJlgScmHvMW3ORHxUiimDXKoGS8DlUOvTqgn2v6ujl
 uJfVfoFHXaMnTKEXNyHL+81OTuDU6h7mEEDjxuc+VQ==
X-Google-Smtp-Source: APXvYqzjhkSvCozGISHl98iBSuMlg0RKAZKkYeLKPjudgFxA5+wsaLdBqZ41PxHunEVSDcVUly1rZyC2ez3w7BJow5U=
X-Received: by 2002:ac8:6784:: with SMTP id b4mr75846060qtp.27.1578385558120; 
 Tue, 07 Jan 2020 00:25:58 -0800 (PST)
MIME-Version: 1.0
References: <20191215183047.9414-1-digetx@gmail.com>
 <CACRpkdYAKS50-CNmE0nRNQanFxKejoHrwxho3fZXROoLZUb4+Q@mail.gmail.com>
In-Reply-To: <CACRpkdYAKS50-CNmE0nRNQanFxKejoHrwxho3fZXROoLZUb4+Q@mail.gmail.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Tue, 7 Jan 2020 09:25:47 +0100
Message-ID: <CAMpxmJVi1hy6a72M7rAHP0AXW1Z4cGp8H0O6ayLMwFm9UL3WPQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/3] Tegra GPIO: Minor code clean up
To: Linus Walleij <linus.walleij@linaro.org>
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
Cc: devel@driverdev.osuosl.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-tegra@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

cG9uLiwgNiBzdHkgMjAyMCBvIDIzOjU5IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGlu
YXJvLm9yZz4gbmFwaXNhxYIoYSk6Cj4KPiBPbiBTdW4sIERlYyAxNSwgMjAxOSBhdCA3OjMxIFBN
IERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiA+IEkgd2FzIGlu
dmVzdGlnYXRpbmcgd2h5IENQVSBoYW5ncyBkdXJpbmcgb2YgR1BJTyBkcml2ZXIgc3VzcGVuZCBh
bmQgaW4KPiA+IHRoZSBlbmQgaXQgdHVybmVkIG91dCB0aGF0IGl0IGlzIGEgQnJvYWRjb20gV2lG
aSBkcml2ZXIgcHJvYmxlbSBiZWNhdXNlCj4gPiBpdCBrZWVwcyBPT0Igd2FrZS1pbnRlcnJ1cHQg
ZW5hYmxlZCB3aGlsZSBXTEFOIGludGVyZmFjZSBpcyBET1dOIGFuZCB0aGlzCj4gPiBtYXkgY2F1
c2UgYSBiaXQgd2VpcmQgQ1BVIGhhbmcgb24gd3JpdGluZyB0byBJTlRfRU5CIHJlZ2lzdGVyIGR1
cmluZyBvZgo+ID4gR1BJTyBkcml2ZXIgc3VzcGVuZC4gTWVhbndoaWxlIEkgYWxzbyBub3RpY2Vk
IHRoYXQgYSBmZXcgdGhpbmdzIGNvdWxkIGJlCj4gPiBpbXByb3ZlZCBpbiB0aGUgZHJpdmVyLCB0
aGF0J3Mgd2hhdCB0aGlzIHNtYWxsIHNlcmllcyBhZGRyZXNzZXMuCj4gPgo+ID4gRG1pdHJ5IE9z
aXBlbmtvICgzKToKPiA+ICAgZ3BpbzogdGVncmE6IFVzZSBnZW5lcmljIHJlYWRsX3JlbGF4ZWQv
d3JpdGVsX3JlbGF4ZWQgYWNjZXNzb3JzCj4gPiAgIGdwaW86IHRlZ3JhOiBQcm9wZXJseSBoYW5k
bGUgaXJxX3NldF9pcnFfd2FrZSgpIGVycm9yCj4gPiAgIGdwaW86IHRlZ3JhOiBVc2UgTk9JUlEg
cGhhc2UgZm9yIHN1c3BlbmQvcmVzdW1lCj4KPiBBbGwgdGhyZWUgcGF0Y2hlcyBhcHBsaWVkIHdp
dGggVGhpZXJyeSdzIHJldmlldy90ZXN0IHRhZy4KPgo+IFlvdXJzLAo+IExpbnVzIFdhbGxlaWoK
ClVnaCwgSSBub3cgbm90aWNlZCBJIHJlc3BvbmRlZCB0byBUaGllcnJ5IG9ubHkgYWZ0ZXIgYXBw
bHlpbmcgdGhpcyB0byBteSB0cmVlLgoKQW55d2F5LCBpdCBzaG91bGRuJ3QgYmUgYSBwcm9ibGVt
LiBJJ2xsIHRha2UgbW9yZSBjYXJlIG5leHQgdGltZS4KCkJhcnQKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
