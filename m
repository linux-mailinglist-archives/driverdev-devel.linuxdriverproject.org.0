Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A635827AC
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jul 2022 15:27:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ADC6740550;
	Wed, 27 Jul 2022 13:27:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ADC6740550
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3MImOtIcY6Hg; Wed, 27 Jul 2022 13:27:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 62B5D4052F;
	Wed, 27 Jul 2022 13:27:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 62B5D4052F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 77D4D1BF2BA
 for <devel@linuxdriverproject.org>; Wed, 27 Jul 2022 13:27:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6087840550
 for <devel@linuxdriverproject.org>; Wed, 27 Jul 2022 13:27:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6087840550
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dXcGL3EfPHRn for <devel@linuxdriverproject.org>;
 Wed, 27 Jul 2022 13:27:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 25FE94052F
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com
 [IPv6:2607:f8b0:4864:20::22f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 25FE94052F
 for <devel@linuxdriverproject.org>; Wed, 27 Jul 2022 13:27:48 +0000 (UTC)
Received: by mail-oi1-x22f.google.com with SMTP id n206so20771027oia.6
 for <devel@linuxdriverproject.org>; Wed, 27 Jul 2022 06:27:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=ObIdrx/2+rwrr3Spu0DNQxwWs/W3U8LHCozkhGpRsnM=;
 b=zMDEhIF87qQOKmXJuQP2o05+jTN2QY9IAvk3HRDXRzQWHpX0n1yK+J4JI9HwNw+Svj
 Tw6KYmnG50cscqoP0eTJTa0yNtwlMEzUxO7xvRw21fxmw5H/8TQ4v/UNxrBlrVPfLfMS
 As8/AuaoTwibX4Rd/LC8KQQf4Nbz1Wpxkr6abQLe3y3B9GtznIM3QANmU6WYfed0XFLk
 YpItsZ89MSpYlDEbsrlX3y+xGFGHWjtynIJCVMYNbj/VxNmzMnB5aI5FWlqM4vkf/yqy
 5W5KP9L2OYnDhYAhsObE5s0hj/a4wjE1HO1kY/QhYbyqKjiBIuNgL68GHgrP+XC9UwdQ
 3utw==
X-Gm-Message-State: AJIora8arzP4Nlp+ekomykJ2bO0eZgiaDMd9WMb126+7+Op7tRsa/u1O
 p/eKvkIGjf9eVn8wTTGmDYh4UJX73I78RyvqKRc=
X-Google-Smtp-Source: AGRyM1t4ZrNTlVZuFXJGRf8V7JLLU1Ln8PRE4MImX+rrFMJNsiAh33qiMPXAzLIo5EQAS7MDb8lGDVbou4BNz+/B4W8=
X-Received: by 2002:a05:6808:16ab:b0:331:464c:61b4 with SMTP id
 bb43-20020a05680816ab00b00331464c61b4mr1871590oib.187.1658928467051; Wed, 27
 Jul 2022 06:27:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a8a:d94:0:0:0:0:0 with HTTP;
 Wed, 27 Jul 2022 06:27:46 -0700 (PDT)
From: Attorney Amadou <kodzoagbolan12@gmail.com>
Date: Wed, 27 Jul 2022 06:27:46 -0700
Message-ID: <CAHtEYbnoN2v3APYi7MmE4v=uaL78gTwvkpjg1A9Suo_Fs_7Bbw@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=ObIdrx/2+rwrr3Spu0DNQxwWs/W3U8LHCozkhGpRsnM=;
 b=gaWqg6RXUEpZDOf6BZbnjQ8li08zsmCWIWBHtL5FM9iI4WQRYmUBQu5YxDIakNYKKL
 lDH7VtHMB0EjYFNJnLOpEYAxeZL3xE8ro1wK2xdEhM7ZYLRw0eJbkFn482Pk7ZA0pMYM
 RWyNYksqyJ9TSuhv1LncDhDOaqf9crib8/9ledpIpsjNn/7JotNt/QKEaXh3+dXGRNFY
 q1mHGhRBFez1IyU1TIz2a2o7+aMGDNpeFx5JCUa0/3FpxN3KQAOqeb5je94Za/X/8kf1
 K5/Di/dVFApWkiQaT883Q71W0WgDs4/78Xg1YHdGxy/YhGgWeVZ61gigiXnsPZ5YldPL
 tbJA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=gaWqg6RX
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
