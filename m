Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 904073B6E07
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Jun 2021 07:57:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B552882548;
	Tue, 29 Jun 2021 05:57:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jc0plHcaGpkh; Tue, 29 Jun 2021 05:57:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25F8181BD9;
	Tue, 29 Jun 2021 05:57:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AF1131BF3D2
 for <devel@linuxdriverproject.org>; Tue, 29 Jun 2021 05:57:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9DE21607B7
 for <devel@linuxdriverproject.org>; Tue, 29 Jun 2021 05:57:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oFYnld7MLpaQ for <devel@linuxdriverproject.org>;
 Tue, 29 Jun 2021 05:57:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C526E607B4
 for <devel@driverdev.osuosl.org>; Tue, 29 Jun 2021 05:57:16 +0000 (UTC)
Received: by mail-pj1-x1029.google.com with SMTP id kt19so3805493pjb.2
 for <devel@driverdev.osuosl.org>; Mon, 28 Jun 2021 22:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=mrGNIXYlkF5K/oGK2d2isVBgqRmzvCLsBVQfr88Rjr8=;
 b=Igs3KbHBNtUsamWOv/RYVH1iCHFLSH0at+VxmTTUJ42ICFRxDTMlP3hKZpzUHCZTvj
 EytljYggIjw+AQVWBa2I6c8ygH9wYVUEKpva49n59HhoY9QJgDJ4FwA+3N77fXB7O+cl
 ZUmmOr8B2gBXLL39c7N4L2JMNDvKL2UOZjeigtjgINXB+UROhBnlfuDeEPlD1xCyd9Vs
 JBjQ6he04dF4QU6fxOPKMeQgxLQIRtc5F/AgYx9Mrq33aAELrFCWVYgua40NJpEddm0B
 yF6T/2FHWPbXsxzmGZhOGFiwLBpxsUMNTmC60A28kbLA6mZD35hZWK8Wm7EZK8J5dnt8
 vi/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=mrGNIXYlkF5K/oGK2d2isVBgqRmzvCLsBVQfr88Rjr8=;
 b=gYCq64gD52Wc7BbsfYk2ywNGjSQsS9FM6FckyChsCOzL2H6SQyC/Aoq6DISrEKm/M5
 Boob+YY9FpO8u3WRN5qGUzLG5XAcmNZYZK3v6rLiMfRHfyRHirXDsb+Zw8Ok9tGtz8/R
 W6eMrJhhuAOA2LqO5LWq/NOqoPZ/jr0ed1YYhzMMHQFA9Je6PIk+Nzs9kUm6rpup61x6
 ebS154cBV5NeY1/hQDYHUXkCS/kBoaeRwOZUbxejkcVngiKD3F2ArlYAR5WuFjwVVywa
 +A9Q5qctsna1MBxBppKc8Uttw+dWN2yxVb+92Bf/DLn9+NpSDki5Be4O39ploKO9hDmw
 MieA==
X-Gm-Message-State: AOAM531F9nDPM0x/MUPOvQCgVBV9uodOfTCYjHD1I/z59LR8irRZyHx1
 Nj3gbsI1gzjv0v3BZAw8FHVathC+suAwgTi+OU4=
X-Google-Smtp-Source: ABdhPJw3gbu2L8qbdopAMPSgmMIDQ1CY+JZXEoADypcITEdXARsCUxtQ0fq1RmF6k2zqsRkOJx87FIBs92ds36ZG4aU=
X-Received: by 2002:a17:90a:3d0d:: with SMTP id
 h13mr32608697pjc.20.1624946236113; 
 Mon, 28 Jun 2021 22:57:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a10:6d1b:0:0:0:0 with HTTP; Mon, 28 Jun 2021 22:57:15
 -0700 (PDT)
From: Aisha Gaddafi <bunny2320123@gmail.com>
Date: Mon, 28 Jun 2021 22:57:15 -0700
Message-ID: <CA+z0umFQaJz6iBxh8bf6FCJV9cDVPQRYkYMyUdYHvFPbqkUH-w@mail.gmail.com>
Subject: Dearest Friend,
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
biBHcsO8w59lbiBBaXNoYQoKCkRlYXJlc3QgRnJpZW5kLAoKSW4gdGhlIG5hbWUgb2YgR29kLCBN
b3N0IEdyYWNpb3VzLCBNb3N0IE1lcmNpZnVsLgoKUGVhY2UgYmUgdXBvbiB5b3UgYW5kIG1lcmN5
IGJlIHVwb24geW91IGFuZCBibGVzc2luZ3MgYmUgdXBvbiB5b3UuCkkgaGF2ZSB0aGUgc3VtIG9m
ICQyNy41IG1pbGxpb24gVVNEIGZvciBpbnZlc3RtZW50LCBJIGFtIGludGVyZXN0ZWQgaW4KeW91
IGZvciBpbnZlc3RtZW50IHByb2plY3QgYXNzaXN0YW5jZSBpbiB5b3VyIGNvdW50cnkuIE15IG5h
bWUgaXMKQWlzaGEgIEdhZGRhZmkgYW5kIHByZXNlbnRseSBsaXZpbmcgaW4gT21hbiwgSSBhbSBh
IFdpZG93IGFuZCBzaW5nbGUKTW90aGVyIHdpdGggdGhyZWUgQ2hpbGRyZW4sIHRoZSBvbmx5IGJp
b2xvZ2ljYWwgRGF1Z2h0ZXIgb2YgbGF0ZQpMaWJ5YW4gUHJlc2lkZW50IChMYXRlIENvbG9uZWwg
TXVhbW1hciBHYWRkYWZpKSBhbmQgcHJlc2VudGx5IEkgYW0KdW5kZXIgcG9saXRpY2FsIGFzeWx1
bSBwcm90ZWN0aW9uIGJ5IHRoZSBPbWFuaSBHb3Zlcm5tZW50LgoKS2luZGx5IHJlcGx5IHVyZ2Vu
dGx5IGZvciBtb3JlIGRldGFpbHMuCgpUaGFua3MKWW91cnMgVHJ1bHkgQWlzaGEKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
