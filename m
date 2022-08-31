Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F135A80F8
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Aug 2022 17:12:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2255D418B1;
	Wed, 31 Aug 2022 15:12:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2255D418B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MjGiqEC5Qc5n; Wed, 31 Aug 2022 15:12:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A89C4418B0;
	Wed, 31 Aug 2022 15:12:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A89C4418B0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 48CBC1BF41A
 for <devel@linuxdriverproject.org>; Wed, 31 Aug 2022 15:12:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 307D582F51
 for <devel@linuxdriverproject.org>; Wed, 31 Aug 2022 15:12:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 307D582F51
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wgGJgZhYhE0M for <devel@linuxdriverproject.org>;
 Wed, 31 Aug 2022 15:12:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D5C980C5E
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6D5C980C5E
 for <devel@driverdev.osuosl.org>; Wed, 31 Aug 2022 15:12:12 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id p16so25889484ejb.9
 for <devel@driverdev.osuosl.org>; Wed, 31 Aug 2022 08:12:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=0G0Obn9gCTY9AHYXxBUuoqSB4HGYwrZarbdZEZz7OiY=;
 b=IC4ChouqPltEanEfo4Ow8cmf7g/olS/MmgaPkvGfc1qVYdmBuwvwLkL5KvYw7ZxgfR
 wCuXUx3DllRGTWvL7OHikFmGxP6dp6V+iysuua/I5B5ZWYead7A4283nY4Fo6tY7NBno
 M5WWGgUCeI9FaiTIferCgF86YTHYtDrMlmJrh21BIKyltyOKnSARAaqX6YyCZbVWuo0t
 YHMwymdaPePn+I4dyz84JBs/Ct/N006Sp0lpFMnzvpJ6Uyb4K2Twp7huI4Klm6j9f54H
 B1F0kh3jA8E5OirxsrL1P+a+38f0UizO+kk//GAV1F0IZhJVpS7HuKK8wfl+EVLUNVFu
 73WQ==
X-Gm-Message-State: ACgBeo3U+FcSdtpPRgUKESiMZLDppjVHsYLxn7yuk+lpMa/Do/tC0tPa
 iMW0IyrQ6Iz8unFYHky7fUS+FhFAgrG+KV5jRfw=
X-Google-Smtp-Source: AA6agR7hxrYqMCHDb9q+KDmDzjco8q3sQmGJoG8ijQFIoou/6H69eShUe30s2rLuQc+ZMgwixswwv0esklNy+EJzVbM=
X-Received: by 2002:a17:906:ef8b:b0:730:e14f:d762 with SMTP id
 ze11-20020a170906ef8b00b00730e14fd762mr20930981ejb.519.1661958730341; Wed, 31
 Aug 2022 08:12:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:160c:b0:730:bc0e:9e83 with HTTP; Wed, 31 Aug 2022
 08:12:09 -0700 (PDT)
From: Patricia <mr.ezekieljeremiah201@gmail.com>
Date: Wed, 31 Aug 2022 15:12:09 +0000
Message-ID: <CANdAM-vr4sDrobUmJybeJQteXuKtdR01eYXy9JfL6Y7TePK32g@mail.gmail.com>
Subject: Hi
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date;
 bh=0G0Obn9gCTY9AHYXxBUuoqSB4HGYwrZarbdZEZz7OiY=;
 b=dDJfexXqqsUr9hsGx5/i+wwSEPa1CeG2PEvvzLq70k3ak8eVOsNPsgnnCkQOcaMN9A
 9PdZJ6BHV/dYWeZg9MM5jpzVGHmSA1JOZkSJ8J7eI+YUz/116XOmsZX4TVDLyLaSqwA2
 cqET4CDPiwczCeDcdoYi9VRgB1fY8vJd7l5v56yU7M8C6LSzUii47Cwzv983L/nFcE/k
 8uTWIevBKK3I2xwT9pqeuRuW7ZDj2q9Hg/qbQzXY/skfHuqNHUA5fqrzr9jWKuZwJ9P4
 BMo0ZZuIjKiQnnGe9Ku/iCItChlccGeU6vg//3M7iBiQfVVit2hSTUlL0g7pUr2DDCf0
 gZsA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=dDJfexXq
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
Reply-To: horoho160@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbSBUaGUgRGVzayBvZjogTXJzLiBQYXRyaWNpYSAgSG9yb2hvLgpCYW5rIG9mIEFtZXJpY2Eu
CkJyYW5jaCBPZmZpY2VzIE5ldyBZb3JrCjE2ODAgQnJvYWR3YXksIE5ldyBZb3JrLgpOWSAxMDAx
OSwgVVNBLgpWaWNlIENoYWlybWFuIG9uIEludmVzdG1lbnQgQmFua2luZwpEaXJlY3RvciwgQ3Jl
ZGl0IENvbnRyb2wgRGVwCgpEZWFyIEZyaWVuZCwKCk15IG5hbWUgaXMgTXJzLlBhdHJpY2lhIEhv
cm9oby4gSSBhbSB3b3JraW5nIHdpdGggQmFuayBvZiBBbWVyaWNhIGhlcmUKaW4gVW5pdGVkIHN0
YXRlLiBIZXJlIGluIHRoaXMgYmFuayB0aGVyZSBhcmUgZXhpc3RlZCBkb3JtYW50IGFjY291bnQK
Zm9yIG1hbnkgeWVhcnMgaGVyZSwgd2hpY2ggYmVsb25nIHRvIG9uZSBvZiBvdXIgbGF0ZSBmb3Jl
aWduIGN1c3RvbWVyLgoKV2hlbiBJIGRpc2NvdmVyZWQgdGhhdCB0aGVyZSBoYWQgYmVlbiBuZWl0
aGVyIGRlcG9zaXRzIG5vciB3aXRoZHJhd2Fscwpmcm9tIHRoaXMgYWNjb3VudCBmb3IgdGhpcyBs
b25nIHBlcmlvZCwgSSBkZWNpZGVkIHRvIGNhcnJ5IG91dCBhCnN5c3RlbSBpbnZlc3RpZ2F0aW9u
IGFuZCBkaXNjb3ZlcmVkIHRoYXQgbm9uZSBvZiB0aGUgZmFtaWx5IG1lbWJlciBvcgpyZWxhdGlv
bnMgb2YgdGhlIGxhdGUgcGVyc29uIGFyZSBhd2FyZSBvZiB0aGlzIGFjY291bnQsIHdoaWNoIG1l
YW5zCm5vYm9keSB3aWxsIGNvbWUgdG8gdGFrZSBpdC4gVGhlIGFtb3VudCBpbiB0aGlzIGFjY291
bnQgc3RhbmRzIGF0ICQxMCwKMDAwIDAwMCAoVEVOIE1pbGxpb24gVVNBIERvbGxhcnMpLgoKSSB3
YW50IGEgZm9yZWlnbiBhY2NvdW50IHdoZXJlIHRoZSBiYW5rIHdpbGwgdHJhbnNmZXIgdGhpcyBm
dW5kLiBJCndpbGwgZnJvbnQgeW91IGluIHRoZSBiYW5rIGFzIHRoZSBOZXh0IG9mIEtpbiB0byB0
aGUgbGF0ZSBjdXN0b21lciBhbmQKYmFjayB5b3UgdXAgd2l0aCByZWxldmFudCBpbmZvcm1hdGlv
bi4gV2hhdCB0aGUgYmFuayBuZWVkIGlzIHByb29mIGFuZAppbmZvcm1hdGlvbiBhYm91dCB0aGUg
bGF0ZSBjdXN0b21lciB3aGljaCBJIHdpbGwgYXNzaXN0IHlvdSBvbi4gVGhpcwppcyBhIGdlbnVp
bmUsIHJpc2sgZnJlZSBhbmQgbGVnYWwgYnVzaW5lc3MgdHJhbnNhY3Rpb24uCgpBbGwgZGV0YWls
cyBzaGFsbCBiZSBzZW50IHRvIHlvdSBvbmNlIEkgaGVhciBmcm9tIHlvdS4gVGhlIGluZm9ybWF0
aW9uCmFzIGNvbnRhaW5lZCBoZXJlaW4gYmUgYWNjb3JkZWQgdGhlIG5lY2Vzc2FyeSBhdHRlbnRp
b24sIHVyZ2VuY3kgYXMKd2VsbCBhcyB0aGUgc2VjcmVjeSBpdCBkZXNlcnZlcy4gSWYgeW91IGFy
ZSByZWFsbHkgc3VyZSBvZiB5b3VyCmludGVncml0eSwgdHJ1c3R3b3J0aHkgYW5kIGNvbmZpZGVu
dGlhbGl0eSwgcmVwbHkgYmFjayB0byBtZSB1cmdlbnRseS4KCgoxLiBGdWxsIG5hbWU6Li4uLi4u
Li4uCjIuIEN1cnJlbnQgQWRkcmVzczouLi4uLi4uLi4KMy4gVGVsZXBob25lIE7CsDouLi4uLi4u
Li4uLgo0LiBPY2N1cGF0aW9uOi4uLi4uLi4uLi4uLi4KNS4gQWdlOi4uLi4uLi4uLi4uLgo2LiBD
b3VudHJ5Oi4uLi4uLi4uCjcuIENvcHkgb2YgSW50ZXJuYXRpb25hbCBQYXNzcG9ydCBPciBJRCBj
YXJkLi4uLi4uLi4uLi4KCldhaXRpbmcgdG8gaGVhciBmcm9tIHlvdSBzb29uLgpSZWdhcmRzCk1y
cy4gUGF0cmljaWEgIEhvcm9obwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9y
ZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcml2ZXJkZXYtZGV2ZWwK
