Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B9159BCEA
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Aug 2022 11:35:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 83C0D823C0;
	Mon, 22 Aug 2022 09:35:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 83C0D823C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2MFbFCjZOLga; Mon, 22 Aug 2022 09:35:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D865823AA;
	Mon, 22 Aug 2022 09:35:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1D865823AA
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B1EE41BF306
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Aug 2022 09:35:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8CCAE40487
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Aug 2022 09:35:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8CCAE40487
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eal7odyxEGGw
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Aug 2022 09:35:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A993840139
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com
 [IPv6:2607:f8b0:4864:20::543])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A993840139
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Aug 2022 09:35:20 +0000 (UTC)
Received: by mail-pg1-x543.google.com with SMTP id c24so8871162pgg.11
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Aug 2022 02:35:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc;
 bh=RNqF77wjqF8iy1HAW8fdhj7DkrHd1/Ilt+i0IdRP9TY=;
 b=VwqP+IeairfVoZfmxuBnSEesSQzqB3GfCnQL7ENwdEGwCjzDrpQCZlrVJ1a4x3s2PX
 UAxdkbsH1706uOMiQ1J2WQZRrBL+y0COTV2Cv1S2TLtiYe2NEsz3zvJPXtWjGm5nNQyo
 owxLoFQJzB3GnbNTubZUm4OVkcImVQLH1QPi+g6LrCHrPYSuKQ9lIR+F+ot35NrxK9z+
 Az+bXhFg203cGbqEltjM9d4GsPHNbmlY8ZhfIsFbsojIhmLKywug7cCHLo3OnA7za7ce
 OiVZ7CgJA8TAZKWJYnTb9HMgDbJC6HsoZ2u4jCD9ptyV0uwDj2h4TnTEOsOGaLeBkpHK
 Z0xw==
X-Gm-Message-State: ACgBeo1Ruu6iZ69G6yuFK/Q0q4MDs1UFceixl6kAd5RQ76xtrQR/6dru
 S0oujfL5wwU9q2QiO7Cn8QIzeCI+Su33pUYAfmE=
X-Google-Smtp-Source: AA6agR532lbBGOdb3q6IW9Wu7EBuV5HBb11t8OIiUk2uojhEd24gaSbhpHViaLZYo5XmVMocAXzQDPBnHg7ZLdBReOw=
X-Received: by 2002:a63:3d1:0:b0:41d:f1e0:c15e with SMTP id
 200-20020a6303d1000000b0041df1e0c15emr16687197pgd.156.1661160920011; Mon, 22
 Aug 2022 02:35:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a10:f94f:b0:2d5:2242:724 with HTTP; Mon, 22 Aug 2022
 02:35:19 -0700 (PDT)
From: Depfin Finance <williamwinfield60@gmail.com>
Date: Mon, 22 Aug 2022 02:35:19 -0700
Message-ID: <CAJpWKqxsOMMbc9n6wmN5keQgJ8euUFQTN9iM8a0pBSPynmP96w@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc;
 bh=RNqF77wjqF8iy1HAW8fdhj7DkrHd1/Ilt+i0IdRP9TY=;
 b=kJkcDfPEEm97IwjedshzieNucEUY8b/WhkXjPtjcmzecuBK7aYVSf6RIjNtNEGSye9
 yRtHSFgP9f51m3pEo/2rWLGEHTtZvOWmUt/oiZ4Yq9+5SxdndkhDCVnVzrWJybFDbNda
 ySas8kqU2WV0GCfcyXvGFxfgRZ5epbFwmqPpVVGeSsMoVKBMEJ44A1vQqVV4oySI+Wt2
 1ASCr2PqBq231Z2XteAmwOtueZ9ldFGab0U7Hd9QW2QUSFlQYZ+GT8Nn5ipksRY/jT9U
 BKcMwaCqHaSsy9nozsCamrF4Y8fyrw98oJu+ehHevbruMPafSKW+Gna9+D6NN8t999ho
 FC3A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=kJkcDfPE
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
Reply-To: info@depfinfinance.co.za
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCgpHb29kIGRheSwKClRvIHdob20gaXQgbWF5IGNvbmNlcm4uCgpEbyB5b3UgbmVlZCBhIGxv
YW4gd2l0aG91dCBzdHJlc3MgdG8gcGF5IGFsbCB5b3VyIG91dHN0YW5kaW5nIGRlYnRzLApEZXBm
aW4gRmluYW5jZSBpcyBoZXJlIHRvIGhlbHAgeW91IHdpdGggdGhlIFF1aWNrIGFuZCBFYXN5IEFw
cGxpY2F0aW9uClByb2Nlc3MuIEFwcGx5IE5vdyBPbmxpbmUgdmlhIG91ciB3ZWJzaXRlIGh0dHBz
Oi8vZGVwZmluZmluYW5jZS5jby56YS8KSW5zdGFudCBMb2FuIGFwcHJvdmFsIMK3Q3VzdG9tZXIg
UHJvdGVjdGlvbiBCbGFja2xpc3QgUHJvdGVjdGlvbiDCtyBEZWJ0CkNvbnNvbGlkYXRpb24gwrcg
QnVzaW5lc3MgTG9hbiDCtyBQZXJzb25hbCBMb2FuIMK3IFdpdGggTm8gQ3JlZGl0IENoZWNrCmF0
IDYlIEludGVyZXN0IFJhdGUgwrcgRGVidCBDb3Vuc2VsbGluZyDCtyBGbGV4aWJsZSBJbnN0YWxt
ZW50IFNlcnZpY2VzOgpGbGV4aWJsZSBSZXBheW1lbnRzLCBDdXN0b21lciBQcm90ZWN0aW9uLCBh
bmQgUGFwZXJsZXNzIEFwcGxpY2F0aW9uLgpJbnN0YW50IGRlY2lzaW9uLCBObyBBcHBvaW50bWVu
dHMgwrcgQXBwbHkgTm93IEFuZCBHZXQgSW5zdGFudCBDYXNoIGluCnlvdXIgQmFuayBhY2NvdW50
LgoKU2VuZCBSZXBseSBUbzogaW5mb0BkZXBmaW5maW5hbmNlLmNvLnphIG9yIFZpc2l0IG91ciBX
ZWJzaXRlCmh0dHBzOi8vZGVwZmluZmluYW5jZS5jby56YS9hcHBseS8gYW5kIHNpZ24gdXAgZm9y
IGEgcXVpY2sgcGFwZXJsZXNzCmFwcGxpY2F0aW9uIHByb2Nlc3MgYW5kIGltbWVkaWF0ZSBhcHBy
b3ZhbC4KCkRlcGZpbiBGaW5hbmNlIENvbnRhY3QKVGVsOiArMjcgODcgNTEwIDc3OTMKV2hhdHNB
cHA6ICsyNzYzMDkwMDIwMgpFbWFpbDogaW5mb0BkZXBmaW5maW5hbmNlLmNvLnphCmh0dHBzOi8v
ZGVwZmluZmluYW5jZS5jby56YS8KQWRkcmVzczogMjA4IERlIFdhYWwgUmQsIFNvdXRoZmllbGQs
IENhcGUgVG93biwgNzgwMApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK
