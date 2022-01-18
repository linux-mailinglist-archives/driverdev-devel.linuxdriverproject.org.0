Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8E74922B2
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jan 2022 10:27:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 575D360D6A;
	Tue, 18 Jan 2022 09:27:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cGJ2zoQKyPAj; Tue, 18 Jan 2022 09:27:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B33D260D69;
	Tue, 18 Jan 2022 09:27:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F1AE01BF2FC
 for <devel@linuxdriverproject.org>; Tue, 18 Jan 2022 09:27:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DE2E881343
 for <devel@linuxdriverproject.org>; Tue, 18 Jan 2022 09:27:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CqxJFhCjgPul for <devel@linuxdriverproject.org>;
 Tue, 18 Jan 2022 09:27:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com
 [IPv6:2607:f8b0:4864:20::735])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4D0C281298
 for <devel@driverdev.osuosl.org>; Tue, 18 Jan 2022 09:27:05 +0000 (UTC)
Received: by mail-qk1-x735.google.com with SMTP id a21so7634463qkn.0
 for <devel@driverdev.osuosl.org>; Tue, 18 Jan 2022 01:27:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=5JMhK9pOqseAjHRtHcU/HG4i5NuvupLcjaClPwT4ItM=;
 b=iGwdF7jNHqhWzyErCxQOjRsfTexxdtDZkf0Xm2D90ezA/7izq0ZQ8q5ZldYffzR6Mf
 ACPvEZH6sg2Fgh+1P+SwFDUgxcKCdKVKJInErQ1hP3XJ2oWt5+ssYfYK69wUC27i/KEj
 oMvgbV1UM7TrhecVQ/cnBHvJdl8Nmtb5fC1Agy0JKku8mtw+Qb0QwgBwgq55a5LHqVir
 NsLGsBUoIpu0/8A8QsDd+wJXobEbBSJ9qZoju0/KqgEP0R1vioGRY3EtljwDZC9HGWTy
 S0baHr1Fbnorus3FIHjHjFeNfz+FM59Mby4vje1bYrgncq++QioULLkLwpEnNst7oMeJ
 Seqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=5JMhK9pOqseAjHRtHcU/HG4i5NuvupLcjaClPwT4ItM=;
 b=Ch4uZGgDqJFzg1+eG76v7OjisP3AlMZI6B4envtlYdzodwbavFrpa87TMYla7mfz07
 wzKm+MkYZO+x3Q7ZPYWuRG6CoVZC6kBrVKcN4Hxya+BMxCaLsOSIR49G9ASBTpHROsMT
 R3bnqR8VYBbH7IPrrteLt3IxpexpLq/W5qYQUIQQC7swZclNuQTRBpfdOZiPWvL4Tosu
 AVOBxT5J2KYdbst/HbR5KhuCEcuTev5BxS8otCfeNuXy7necwkXdoxZxu8MGqUCWFZck
 kDbdZ9/PbpgkM+5bb4OGat7Uz0fTGOzugSYLMyPSBhyJXMv8q15e4MbazEvbj3AsQglX
 LVaw==
X-Gm-Message-State: AOAM531lCT3GpVEkR/TWxreyn6wdpy3UrAPGbFW2ro3tN2zQqPYyb6d1
 wZPQhKRsMvIGgaqb/JyyeamAqCxQyXFgXRlB+V8=
X-Google-Smtp-Source: ABdhPJy9z5zRWZb6tz2k1qA+xsT6/THXHMDkS3Hx1qS95RWyvuSh4luJicE7KMvOmC0y5aL28x8TLxd9HSqykSuMXIE=
X-Received: by 2002:a05:620a:c4d:: with SMTP id
 u13mr16605154qki.289.1642498023744; 
 Tue, 18 Jan 2022 01:27:03 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:2588:0:0:0:0 with HTTP; Tue, 18 Jan 2022 01:27:03
 -0800 (PST)
From: Aisha Gaddafi <mrzakirhossain4444@gmail.com>
Date: Tue, 18 Jan 2022 01:27:03 -0800
Message-ID: <CAJGJQuax10t9FjrckhYO-sq=nRyWR01zuuDH+wpB+cp18fn52A@mail.gmail.com>
Subject: Liebster Freund,?
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

LS0gCkxpZWJzdGVyIEZyZXVuZCwKCkltIE5hbWVuIEdvdHRlcywgZGVzIGduw6RkaWdzdGVuLCBi
YXJtaGVyemlnc3Rlbi4KCkZyaWVkZSBzZWkgbWl0IGRpciB1bmQgQmFybWhlcnppZ2tlaXQgc2Vp
IG1pdCBkaXIgdW5kIFNlZ2VuIHNlaSBtaXQgZGlyLgpJY2ggaGFiZSBkaWUgU3VtbWUgdm9uIDI3
LDUgTWlsbGlvbmVuIFVTRCBmw7xyIEludmVzdGl0aW9uZW4sIGljaAppbnRlcmVzc2llcmUgbWlj
aCBmw7xyIFNpZSBmw7xyIGRpZSBVbnRlcnN0w7x0enVuZyB2b24KSW52ZXN0aXRpb25zcHJvamVr
dGVuIGluIElocmVtIExhbmQuIE1laW4gTmFtZSBpc3QgQWlzaGEgR2FkZGFmaSB1bmQKbGViZSBk
ZXJ6ZWl0IGltIE9tYW4sIGljaCBiaW4gZWluZSBXaXR3ZSB1bmQgYWxsZWluZXJ6aWVoZW5kZSBN
dXR0ZXIKbWl0IGRyZWkgS2luZGVybiwgZGllIGVpbnppZ2UgbGVpYmxpY2hlIFRvY2h0ZXIgZGVz
IHZlcnN0b3JiZW5lbgpsaWJ5c2NoZW4gUHLDpHNpZGVudGVuIChkZW0gdmVyc3RvcmJlbmVuIE9i
ZXJzdCBNdWFtbWFyIEdhZGRhZmkpIHVuZApzdGVoZSBkZXJ6ZWl0IHVudGVyIHBvbGl0aXNjaGVt
IEFzeWxzY2h1dHogZGVyIG9tYW5pc2NoZW4gUmVnaWVydW5nLgoKQml0dGUgYW50d29ydGVuIFNp
ZSBkcmluZ2VuZCBmw7xyIHdlaXRlcmUgRGV0YWlscy4KCm1laW5lIEUtTWFpbC1BZHJlc3NlIHVu
dGVuOiBheWlzaGFnZGRhZmlvQG1haWwucnUKVmllbGVuIERhbmsKTWl0IGZyZXVuZGxpY2hlbiBH
csO8w59lbiBBaXNoYQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
