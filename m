Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB7F55EC50
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jun 2022 20:16:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A837683F53;
	Tue, 28 Jun 2022 18:16:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A837683F53
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 72uo_VtpLhK3; Tue, 28 Jun 2022 18:16:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 726FC82868;
	Tue, 28 Jun 2022 18:16:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 726FC82868
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA3021BF325
 for <devel@linuxdriverproject.org>; Tue, 28 Jun 2022 18:16:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9F79E41969
 for <devel@linuxdriverproject.org>; Tue, 28 Jun 2022 18:16:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F79E41969
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9191AQqXa23R for <devel@linuxdriverproject.org>;
 Tue, 28 Jun 2022 18:16:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7C0741947
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com
 [IPv6:2607:f8b0:4864:20::d2e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D7C0741947
 for <devel@driverdev.osuosl.org>; Tue, 28 Jun 2022 18:16:32 +0000 (UTC)
Received: by mail-io1-xd2e.google.com with SMTP id v185so7019012ioe.11
 for <devel@driverdev.osuosl.org>; Tue, 28 Jun 2022 11:16:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=WeosI4bsNB+ziUPwMtuooYUswr2aPS9qI01+kb9jQYw=;
 b=F44JdRcHUUIqi0dHZG+HcL3FKslapz5jX3eMOk6M6v/q/INq+ISM5DcSmF2fg8FHiQ
 j3B0P7x202udqfCp2Oly4C0GUwi5IWPexRmVOLuQZLX6NsAP72oX27/XbXFz72wfX1Oc
 BTabQmd0YaAe6BXQ63CTbFOGfKRCLxpjAikaShJZVm0os0Ywyyxg1HpnPHXwHuNTsvlm
 vC6VORqjcL4M+XIvBf+557dL5dmWmuJgLTOrHCtcIvFlQvJm0Ki1tRbtXP7WMZqks+zB
 gvv8EPigjWkSonbjaVXJ0ymQd6kK0sJas4TeMpzCgZkDc/jHTLy9Os10meZ0JgWyxJso
 q/QQ==
X-Gm-Message-State: AJIora/nD9xXwgcneXEvKqonO4gL050dmV2x4++LXNzL4lqvBzTS72yu
 VvEbWTGJViMqRonn5yY3RWcUcyQCxBsDEHn0NZQ=
X-Google-Smtp-Source: AGRyM1vfYjqhH5P8w3xvRVg9gRrTBIgJuLQKr146ran4yJ7aHFXxgSgcFLv1zokRPrlOgD+yP22AA7KsADJHCTpMmw4=
X-Received: by 2002:a5d:9817:0:b0:65a:f20b:db2c with SMTP id
 a23-20020a5d9817000000b0065af20bdb2cmr10477814iol.118.1656440191452; Tue, 28
 Jun 2022 11:16:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6622:cc5:0:0:0:0 with HTTP; Tue, 28 Jun 2022 11:16:30
 -0700 (PDT)
From: AISHA GADDAFI <mahasaliou99999@gmail.com>
Date: Tue, 28 Jun 2022 19:16:30 +0100
Message-ID: <CAMugOs-=ssph3-p5qAnA8cwHoZxvfN7q0Y-8thJUJRAVeWwXwA@mail.gmail.com>
Subject: Dearest Friend,?
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=WeosI4bsNB+ziUPwMtuooYUswr2aPS9qI01+kb9jQYw=;
 b=NwQxSeVLW6O4b5c6LN5oaubdorKe2QuDvRgIEhxs6hzVzvjvpw8T/8MyzeJgpqt5qs
 RPj0ZSfOT4bdwXzCMGoMHW0l78Pmd8Y3JFAR4tz7oYD0hZnQBa1oo2PSwMQRVSeZyVip
 Bgr0TYU2bV2OOS3WOB6KeyN3gJt0XUW7ir8W6JPPu+bV5Q2AssW3oicJMb9l3ocNyOw9
 OP6XA9m8Gm+3UaKSogmR/UrF+t37qxEI3usstwqktCFupqUoiu/iUeUBCNgB8jYsxQ3N
 tEyEUvAlmOxDbLHjooIjVz3rA9fWfHVHf4fQhddjMx3imkOSGOQ1ZIwKBiW8KnwhKWDr
 Fw7Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=NwQxSeVL
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
Reply-To: ayishagddafi@mail.ru
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
aW5nZW5kIGbDvHIgd2VpdGVyZSBEZXRhaWxzLgoKVmllbGVuIERhbmsKTWl0IGZyZXVuZGxpY2hl
biBHcsO8w59lbiBBaXNoYQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK
