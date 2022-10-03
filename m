Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F347F5F3814
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Oct 2022 23:48:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68FF6415E6;
	Mon,  3 Oct 2022 21:48:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68FF6415E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4xGNRBkUtI4x; Mon,  3 Oct 2022 21:48:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD8B54009E;
	Mon,  3 Oct 2022 21:48:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD8B54009E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B70951BF2B1
 for <devel@linuxdriverproject.org>; Mon,  3 Oct 2022 21:48:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 92386408C9
 for <devel@linuxdriverproject.org>; Mon,  3 Oct 2022 21:48:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 92386408C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lP14Ymasya4u for <devel@linuxdriverproject.org>;
 Mon,  3 Oct 2022 21:48:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4738F408AF
Received: from mail-oa1-x44.google.com (mail-oa1-x44.google.com
 [IPv6:2001:4860:4864:20::44])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4738F408AF
 for <devel@driverdev.osuosl.org>; Mon,  3 Oct 2022 21:48:50 +0000 (UTC)
Received: by mail-oa1-x44.google.com with SMTP id
 586e51a60fabf-132555b7121so5520816fac.2
 for <devel@driverdev.osuosl.org>; Mon, 03 Oct 2022 14:48:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=2OQWN8hj1a3rNmFV+plBxGz9ZHcPCNo47Xuw81WwseY=;
 b=s7+Cg2ORI/Fmg04uptDS/lzT6KHWIJM7MQVxNbz4yyIdp/TBF+z8f+UES/sma6ZPbA
 laYotzcxwSFmMmGLNzqwYDb+Mz9ZfT8NosTfgDXLm1cfScqaHH7QFuByxd5tN4wWmlIp
 XPIG3P8N5Rp5HHIthwGagyl78GDnF9MPb2cSn/WR5wSoCKRmZow4+nNSgtyHBoZ+gvSf
 cOZq+E1e7bqyExmrbnF8kmpl9KyGBLIOv0OZDQWejOALl/ixXM0/pg82Tr8WR2d/OTkN
 TQ5bnkgFqZfiUbJvNOB+P0JLi/S+2QMKE5KQ4ICHrUjSyRFP9jpY69e20ZtRecSP6qi/
 W+Dg==
X-Gm-Message-State: ACrzQf2qnTk8+maolvyiTxLgPsx6ec+oTpHKXbHi9MqehBnMWwXTm8p6
 dmg5n64S1qKjLBez2i+slmU1OaGRYLe8KH40xk8=
X-Google-Smtp-Source: AMsMyM45HzDXJ+GsP5+TuD0uz1Zgn5T/NSK5nBqLDvpOvJUdSMPdlLkrD5G+0Pi7J6I2ADJ/ef+7aBGQ9qtpxcWegW8=
X-Received: by 2002:a05:6870:a414:b0:131:25e5:df0e with SMTP id
 m20-20020a056870a41400b0013125e5df0emr6121102oal.285.1664833729363; Mon, 03
 Oct 2022 14:48:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6358:c17:b0:c9:71d3:bbb6 with HTTP; Mon, 3 Oct 2022
 14:48:48 -0700 (PDT)
From: "Charles W. Jackson" <jamescarey67654@gmail.com>
Date: Mon, 3 Oct 2022 23:48:48 +0200
Message-ID: <CAP6aGsr45FWH4L86F0VCJ+RfpXC9Wey9u_aPK1gy53nqv1Song@mail.gmail.com>
Subject: Hallo, ich bin Karl W.
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date;
 bh=2OQWN8hj1a3rNmFV+plBxGz9ZHcPCNo47Xuw81WwseY=;
 b=B98cZPL6knVrQnNAgzzWjh7bExpq88DGnlRQ5DkEznBckGM9EO4NKysp6xjyt782SQ
 6utaXEYLGdB8T+ZESM0CVXmRb7bqlYMYt4C6OjwB5MucY4qzW2ckVlmH+mesPqRzEgnR
 zCghHVDJEQoW5s2wW7is0fY+J/3K7WTDp4gqRjWEyT2rcMBMh3XVvYDsCs6e7uZZtF+P
 CxE3sJJx5RGjDurWotvZjAffb3+74N3JWXRtW0yJ9HYOhcAdO71K6hSuCIAWk2VMMMH7
 Cj/Aa0StekscMGlLBwvbxlnapAFyLokkGWa90Gr9C3qwqvN4UO6ZoNsUeFC/hmn3jEXe
 Y0qg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=B98cZPL6
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
Reply-To: c.wjacksonjr@hotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkhhbGxvLCBpY2ggYmluIENoYXJsZXMgVy4gSmFja3NvbiBKci4sIFNpZSBoYWJlbiBlaW5l
IFNwZW5kZSBpbiBIw7ZoZQp2b24gMS45MDAuMDAwIFVTRC4gSWNoIGhhYmUgYW0gNC4gSnVuaSAy
MDE5IGRpZQozNDQtTWlsbGlvbmVuLURvbGxhci1Qb3dlcmJhbGwtTG90dGVyaWUgZ2V3b25uZW4g
dW5kIG1pY2ggZW50c2NoaWVkZW4sCmVpbmVuIFRlaWwgZGF2b24gYW4gZsO8bmYgZ2zDvGNrbGlj
aGUgTWVuc2NoZW4gdW5kCldvaGx0w6R0aWdrZWl0c29yZ2FuaXNhdGlvbmVuIHp1IHNwZW5kZW4u
IElocmUgRS1NYWlsIGdpbmcgdW50ZXIgZGVuCmdsw7xja2xpY2hlbiBGw7xuZiBhbHMgU2llZ2Vy
IGhlcnZvci4gS29udGFrdGllcmVuIFNpZSBtaWNoIGRyaW5nZW5kIGbDvHIKZWluZSBSZWtsYW1h
dGlvbi4gSGllciBpc3QgZGFzIFlvdVR1YmUtVmlkZW8KaHR0cHM6Ly93d3cueW91dHViZS5jb20v
d2F0Y2g/dj0wTVVSOFFFSU1RSQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9y
ZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcml2ZXJkZXYtZGV2ZWwK
