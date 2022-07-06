Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF77B568617
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Jul 2022 12:49:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 336B560D53;
	Wed,  6 Jul 2022 10:49:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 336B560D53
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fGmU0IcM2REu; Wed,  6 Jul 2022 10:49:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF09D60BC1;
	Wed,  6 Jul 2022 10:49:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF09D60BC1
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E69E1BF20B
 for <devel@linuxdriverproject.org>; Wed,  6 Jul 2022 10:49:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 76CDB833C6
 for <devel@linuxdriverproject.org>; Wed,  6 Jul 2022 10:49:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76CDB833C6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gPyWghEM4CRf for <devel@linuxdriverproject.org>;
 Wed,  6 Jul 2022 10:49:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B09CD82FA9
Received: from mail-yw1-x1144.google.com (mail-yw1-x1144.google.com
 [IPv6:2607:f8b0:4864:20::1144])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B09CD82FA9
 for <devel@driverdev.osuosl.org>; Wed,  6 Jul 2022 10:49:00 +0000 (UTC)
Received: by mail-yw1-x1144.google.com with SMTP id
 00721157ae682-31cf1adbf92so8802747b3.4
 for <devel@driverdev.osuosl.org>; Wed, 06 Jul 2022 03:49:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=pixCa+kRsCxZnhF09/wJfRNYhJampgMCf0+9kLqE0t0=;
 b=ll85PnpQjCwAIH/OF91gabpZzVBTm3yENouGh3VrDuuoX1O1MZ9z19IvxysmMYaQBB
 wXh6FrnOOjP8q9wGx4xAh8gSmpe0ZCZ6MqEUp3+l8IAjE7Ge86m9ybckUMcLUmqW06Kd
 0P3ZE9iB1+QOzh2Ypd6ThfWqGUnAGk3IBA7gp/T2xMRDWeyO49hanHEHWV3akj6qXX/5
 teevuMfbr48grpZKpykJehe7/XC4VOxHlW9vvhu5usnqlfuGrXqnpDkAfeMPchtTQ5AQ
 SxK+6bKZ6ercv3NTvL4kiMRgY+WOYaxWC3Gk7jLbmlkbzZHyEmB1rGwhPd33OKI+Rrzo
 fcDA==
X-Gm-Message-State: AJIora+8iXy1A4HCGKfULsA78jd0ODw+ckfx1Xak3WGd2pbTERhWAONL
 h6upLQQm0ofSWk5lRMWDAHtNnbB3b+cJzuBujw==
X-Google-Smtp-Source: AGRyM1stLQqRL1dXMokv2JmR8a7+u2CQrS1AHeRteescb3p95LIX68VjEpJUb/Kt0KXgNOq3aveHqLEzj5Psla6qye0=
X-Received: by 2002:a81:1446:0:b0:31c:a081:7ee8 with SMTP id
 67-20020a811446000000b0031ca0817ee8mr15523895ywu.23.1657104539622; Wed, 06
 Jul 2022 03:48:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7110:61ca:b0:18a:7653:19d2 with HTTP; Wed, 6 Jul 2022
 03:48:59 -0700 (PDT)
From: OLSON FINANCIAL GROUP <aishatusaidu6369@gmail.com>
Date: Wed, 6 Jul 2022 03:48:59 -0700
Message-ID: <CA+ttaErZxCxF7sBdu-3UQ0n5-aWifvAazTSqfCeM02bppdcfvg@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=pixCa+kRsCxZnhF09/wJfRNYhJampgMCf0+9kLqE0t0=;
 b=Wt0q7SztIGzD8sjBHdZB+sqDKlRW+af/H3ITyQYMf9cIRoKJj9hBPJvUQQFVVAScf5
 hFhMpKiJpiSt6ppgJ1WqnTT5qT/IuUDmrwfYoAB6aAKRrYB/pUEhWtp4uH+kgR+MXvuE
 XM8XgxF6X2FKY9caf3G6zxtrXX7vfsFoo1HEM1cAfvx581l97IiqxhD5V76fscLPaanB
 za4z5Q61duA9T0RHdBVt1WQ+GtmJMzslaDMjh/+bWJIAxrPGeaQaC85O+OsdPu0eKC5y
 qbhd5BxYZF5FpAExT03ZYHAZLgwy5+/5LPpyxuSpe+IV43gcWfUftdEeLfygyc7BDBae
 aIzw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Wt0q7Szt
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
Reply-To: olsonfinancial.de@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkhhbGxvLCBndXRlbiBNb3JnZW4sCkJlbsO2dGlnZW4gU2llIGVpbmVuIEtyZWRpdCwgdW0g
ZWluIEF1dG8genUga2F1ZmVuPyBvZGVyIEJlbsO2dGlnZW4gU2llCmVpbiBHZXNjaMOkZnRzLSBv
ZGVyIFByaXZhdGRhcmxlaGVuPyBTaWUgbcO2Y2h0ZW4gSWhyIFVudGVybmVobWVuCnJlZmluYW56
aWVyZW4/IG9kZXIgaW52ZXN0aWVyZW4/IEVpbiBuZXVlcyBVbnRlcm5laG1lbiBncsO8bmRlbiwK
UmVjaG51bmdlbiBiZXphaGxlbj8gdW5kIHVucyBhdWYgV3Vuc2NoIGluIEluc3RhbGxhdGlvbmVu
Cnp1csO8Y2t6YWhsZW4/IFdpciBzaW5kIGVpbiB6ZXJ0aWZpemllcnRlcyBGaW5hbnp1bnRlcm5l
aG1lbiwgZGFzIEZvbmRzCmFsbGVyIEFydCBnZW5laG1pZ3QuIFdpciB2ZXJnZWJlbiBLcmVkaXRl
IGFuIEVpbnplbHBlcnNvbmVuIHVuZApVbnRlcm5laG1lbi4gV2lyIGJpZXRlbiB6dXZlcmzDpHNz
aWdlIEtyZWRpdGUgenUgZWluZW0gc2VociBuaWVkcmlnZW4KWmluc3NhdHogdm9uIDIlLiBGw7xy
IG1laHIgSW5mb3JtYXRpb25lbgptYWlsZW4gU2llIHVucyBhbjogb2xzb25maW5hbmNpYWwuZGVA
Z21haWwuY29tLi4uLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
