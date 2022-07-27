Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A545827BA
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jul 2022 15:32:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B0C894055E;
	Wed, 27 Jul 2022 13:32:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0C894055E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BNCMGIJ57zQT; Wed, 27 Jul 2022 13:32:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 54F564056A;
	Wed, 27 Jul 2022 13:32:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54F564056A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 794841BF2BA
 for <devel@linuxdriverproject.org>; Wed, 27 Jul 2022 13:32:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 537194054B
 for <devel@linuxdriverproject.org>; Wed, 27 Jul 2022 13:32:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 537194054B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nKPMYFmCbaNh for <devel@linuxdriverproject.org>;
 Wed, 27 Jul 2022 13:31:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4607E40518
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com
 [IPv6:2001:4860:4864:20::33])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4607E40518
 for <devel@driverdev.osuosl.org>; Wed, 27 Jul 2022 13:31:58 +0000 (UTC)
Received: by mail-oa1-x33.google.com with SMTP id
 586e51a60fabf-10e3852b463so5922533fac.3
 for <devel@driverdev.osuosl.org>; Wed, 27 Jul 2022 06:31:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=ObIdrx/2+rwrr3Spu0DNQxwWs/W3U8LHCozkhGpRsnM=;
 b=q1+ViegATAp+jmuPMy4kZLw3aQlph90gu4A1VXHh3NfUnqV+sYeO+Ap9uJh+ZC+BDh
 u7ZvridZEW5lu8n2GQ0aiKQA/hvjrr5e1IVSaRECoCVRb3CaALUahTNELMZR4UHDWZu7
 An3kXC79iLYtyTH+sNtPOZsAusF55C+P8A8h06Gb6TnzUUgYwxXW1Gr292c2PsCIKHJL
 TPconlzI98SKHJ/MASQDgu6mxKowp9GpUiQGG9doj7MnRCTN3Ch4gIXZNUcjmKl6Z6Nt
 B7anyKoy4I4OopAuScSTlLHgkua04DqKl4YdVPpQUr3Uep9qpasbviyRvE/YTbYe/wpe
 7MLw==
X-Gm-Message-State: AJIora8xsB8jjEXF/4FxqCXNybpo8z1qhIoYdj5Rh/y2GOjb9iLyOtxy
 OHDIx3DeVJE6PpehamC+16g/LAfbQFioVWng5tw=
X-Google-Smtp-Source: AGRyM1vuoCYsTiZfpIOHRvGxLc3ejNF3/LyLLe/aoqRdjjnm8yzJiMNkNZjXj3kfln8rv3fqHDYy4pUx8PPalWaNc0o=
X-Received: by 2002:a05:6870:89a9:b0:101:d81d:e970 with SMTP id
 f41-20020a05687089a900b00101d81de970mr2034827oaq.43.1658928717163; Wed, 27
 Jul 2022 06:31:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a8a:d94:0:0:0:0:0 with HTTP;
 Wed, 27 Jul 2022 06:31:56 -0700 (PDT)
From: Attorney Amadou <kodzoagbolan12@gmail.com>
Date: Wed, 27 Jul 2022 06:31:56 -0700
Message-ID: <CAHtEYbkgXn33GUzsMjcHqiEoxeV6kkBT7+k3zGrEfFSKTT6Cjg@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=ObIdrx/2+rwrr3Spu0DNQxwWs/W3U8LHCozkhGpRsnM=;
 b=HEFE83oX6MIoDr8+E/XQs57RqTXk104bR7nyv6cNnIgKoy1T2foaJxQSthfseXFwe4
 H9YEhyI/W1z7jJftlEiNu/DHOLMoJLrNjLSb0oy0WOvWQxQSi4thSw1ePINsYgAZA3op
 1nCeR61b3vQ0diSIYMaM09LO1rPyb8Go5VNB6LgD8WHb+GbL0FwLKG3Elqdjp740UE4m
 f0n5vZtu8PAiwvmDXXkX+FKRqnxlATu9ygaPeqSS+AZUTTctl9fWI9KYFgftbpqexzb6
 dDiKiujTx52tTrtX1fGHz/JdfypZ5kWoiIVcm4abCt5Q14vY92i7NzlPT46fztI7CHjC
 VZ/w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=HEFE83oX
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
Reply-To: barristerbenjamin221@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8gZ29vZCBkYXkuCgpJIGFtIEJhcnJpc3RlciBBbWFkb3UgQmVuamFtaW4gYnkgbmFtZSwg
V2l0aCBkdWUgcmVzcGVjdCBkZWFyIGZyaWVuZCwKSSBhbSBjb250YWN0aW5nIHlvdSB0byBoZWxw
IGdldCB0aGUgZGVwb3NpdCBvZiAxMC41IG1pbGxpb24gRG9sbGFycywgbXkKbGF0ZSBjbGllbnQg
bGVmdCBpbiBoaXMgQmFuayBiZWZvcmUgaGlzIHN1ZGRlbiBkZWF0aCBvbiBBcHJpbCAyMSwKMjAw
NywgdG8gYXZvaWQgY29uZmlzY2F0aW9uIGJ5IExsb3lkcyBiYW5rLiBQbGVhc2Ugd3JpdGUgbWUg
YmFjawp0aHJvdWdoIHRoaXMgZW1haWwgKGJhcnJpc3RlcmJlbmphbWluMjIxQGdtYWlsLmNvbSkg
Zm9yIG1vcmUKaW5mb3JtYXRpb24gYWJvdXQgdGhpcyB0cmFuc2FjdGlvbiBvciBzZW5kIG1lIHlv
dXIgcHJpdmF0ZSBlbWFpbCB0bwpjb250YWN0IHlvdSBteXNlbGYuCgpTaW5jZXJlbHkuCkJhcnJp
c3RlciBBbWFkb3UgQmVuamFtaW4gRXNxLgouLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uCkhhbGxvIGd1dGVuIFRhZy4KCkljaCBiaW4gbWl0IE5hbWVuIEJhcnJpc3RlciBBbWFk
b3UgQmVuamFtaW4uIE1pdCBnZWLDvGhyZW5kZW0gUmVzcGVrdCwKbGllYmVyIEZyZXVuZCwKSWNo
IGtvbnRha3RpZXJlIFNpZSwgdW0gSWhuZW4genUgaGVsZmVuLCBkaWUgQW56YWhsdW5nIHZvbiAx
MCw1Ck1pbGxpb25lbiBEb2xsYXIgenUgZXJoYWx0ZW4sIG1laW5lCkRlciB2ZXJzdG9yYmVuZSBL
dW5kZSB2ZXJsaWXDnyBzZWluZSBCYW5rIHZvciBzZWluZW0gcGzDtnR6bGljaGVuIFRvZCBhbQoy
MS4gQXByaWwuCjIwMDcsIHVtIGRlciBCZXNjaGxhZ25haG1lIGR1cmNoIGRpZSBMbG95ZHMgQmFu
ayB6dSBlbnRnZWhlbi4gQml0dGUKc2NocmVpYiBtaXIgenVyw7xjawrDvGJlciBkaWVzZSBFLU1h
aWwgKGJhcnJpc3RlcmJlbmphbWluMjIxQGdtYWlsLmNvbSkgZsO8ciBtZWhyCkluZm9ybWF0aW9u
ZW4genUgZGllc2VyIFRyYW5zYWt0aW9uIG9kZXIgc2VuZGVuIFNpZSBtaXIgSWhyZSBwcml2YXRl
IEUtTWFpbCBhbgprb250YWt0aWVyZSBkaWNoIHNlbGJzdC4KCkF1ZnJpY2h0aWcuClJlY2h0c2Fu
d2FsdCBBbWFkb3UgQmVuamFtaW4gRXNxLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
