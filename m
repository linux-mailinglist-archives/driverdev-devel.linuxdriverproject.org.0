Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD0B5F9798
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Oct 2022 07:02:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 61D0C40227;
	Mon, 10 Oct 2022 05:02:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 61D0C40227
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LCriVbVZWMsJ; Mon, 10 Oct 2022 05:02:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16E7B404D0;
	Mon, 10 Oct 2022 05:02:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16E7B404D0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 21DEC1BF42E
 for <devel@linuxdriverproject.org>; Mon, 10 Oct 2022 05:01:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0A5F240227
 for <devel@linuxdriverproject.org>; Mon, 10 Oct 2022 05:01:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A5F240227
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id veMbpJuRZcvL for <devel@linuxdriverproject.org>;
 Mon, 10 Oct 2022 05:01:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F47F4014A
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2F47F4014A
 for <devel@driverdev.osuosl.org>; Mon, 10 Oct 2022 05:01:57 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id ay36so6161760wmb.0
 for <devel@driverdev.osuosl.org>; Sun, 09 Oct 2022 22:01:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:sender
 :reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9HQ6/3s0u/vUree4fNLgHLcwwWM6EX1BGJtC8aFh8vM=;
 b=ckyygwSMXAhXXkSL3hSFKqs6Yz3J6WCjcW2JZOa36k8JVuoePo3EhoLhYaLnYWzc3g
 9W/2NYOnRMzEK/64Ke1nfwwOTdLJrTOp5anexoubYoPjtBJGLUcO/ML0Wa7UUmbokPmb
 yB543L15fmmkLSJ7urnl/BKB1B8OUP2VlXpGyKb1CWeyNzz10lCVvEU/5ssxRMQH//Yl
 ZCSRqGnJmO7RHzjAsWFLGrtn9swGmUQFx+rFWaBxhfaeZZyWGJhIxlMM80QvLegJuax/
 tHTrCFalUDV7hhJ/0sIPAYK5MGzwPviRgEKs7lJyt7gObHUuVCBudbHTZS8iX83mknUU
 42Fg==
X-Gm-Message-State: ACrzQf2OCqZJAItS++EEtucqe7gqLAjZ0tG1ZY3B3y8sI/6bS0ekXjah
 T4H/t3WqVkZmmJk0yyGYvbT1PUE8ZAvi78ad2Qk=
X-Google-Smtp-Source: AMsMyM68cynzyozTyF0CfD5SLnmIm8tDFZk7yCDr+YpinprkWd4t3a23KHcf+tNo3IQLsrYtwwyahyVLeCCyJbQ8LOw=
X-Received: by 2002:a05:600c:414b:b0:3b4:a655:720f with SMTP id
 h11-20020a05600c414b00b003b4a655720fmr17739362wmm.92.1665378115636; Sun, 09
 Oct 2022 22:01:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:6204:0:0:0:0:0 with HTTP;
 Sun, 9 Oct 2022 22:01:55 -0700 (PDT)
From: Mr Abdallah Al Mousa <mmrabdallahalmousa0@gmail.com>
Date: Mon, 10 Oct 2022 05:01:55 +0000
X-Google-Sender-Auth: drTGuy_k--7cre2v7UIApMD5voM
Message-ID: <CAF5JUQP9-5Z=xoqQcWWQGF4s78jURCt0J1TXBTBiP7yt8X5uiQ@mail.gmail.com>
Subject: From: Mr. Abdallah Al Mousa,
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:sender
 :reply-to:mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=9HQ6/3s0u/vUree4fNLgHLcwwWM6EX1BGJtC8aFh8vM=;
 b=bnCDvo4sUiCg7jAKC4IT0mw0LgV6ospwq1rKVh/n3w6Y9eYyyOropD9V3vlOv47Yui
 1hmYzpjtn53+8HFc/v8EzzW0/+ewl9xvK8F2bSWjDjwAwbdM/RGT/CKgiM7YuM0a8fIx
 maj7X/hnm8dV7bJFMhsc9NY8nXfmj/RSqv8OLprngt1xNwc3XaxTI8DmrzoXKhwk6qO7
 Sc6m8piWRtwz7pqKWi+U6RKeJFO7//ZbNL2lCIXIaun4kDJ7k5eCjPBx/WfLhfJw3XnL
 pB2mKa7pAvXqJZMYb7yi/58kXhKxDIeX6I2NR0jkfRw676x7ysXXWMf+f11izFWUti6F
 FZ9A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=bnCDvo4s
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
Reply-To: mmrabdallahalmousa@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8gRGVhciwKClBsZWFzZSBhY2NlcHQgbXkgYXBvbG9naWVzIGZvciBzZW5kaW5nIHlvdSBh
IHN1cnByaXNlIGxldHRlci4gSSBhbQpNci4gQWJkYWxsYWggQWwgTW91c2EsIG9uZSBvZiB0aGUg
YWNjb3VudGFudCBvZmZpY2VycyBoZXJlIGluIEFyYWIKQmFua2luZyBDb3Jwb3JhdGlvbiAoQi5T
LkMpIEJhaHJhaW4uIFdpdGggdHJ1c3QgYW5kIGhvbmVzdHkgSSBoYXZlCmRlY2lkZWQgdG8gc2hh
cmUgdGhpcyBpbXBvcnRhbnQgaW5mb3JtYXRpb24gd2l0aCB5b3UuIFRoZXJlIGlzIGFuCm9mZnNo
b3JlIGFjY291bnQgb3BlbmVkIGluIG91ciBiYW5rIGJ5IGEgbG9uZy10aW1lIGNsaWVudCBvZiBv
dXIgYmFuay4KSSBoYXZlIHRoZSBvcHBvcnR1bml0eSB0byBtb3ZlIHRoZSBsZWZ0b3ZlciBmdW5k
IChVU0QkNCw4MDAsMDAwLjAwCkZvdXIgTWlsbGlvbiwgRWlnaHQgSHVuZHJlZCBUaG91c2FuZCBV
UyBEb2xsYXJzKSBiZWxvbmdpbmcgdG8gb25lIG9mCm91ciBJbnRlcm5hdGlvbmFsIEN1c3RvbWVy
cyB3aG8gd2FzIGtpbGxlZCBvbiAyNHRoIEZlYnJ1YXJ5LCBkdXJpbmcKdGhlIFJ1c3NpYSB3YXIg
YWdhaW5zdCBVa3JhaW5lLgoKQW5kIGJlaW5nIHNpbmdsZSwgaGUgZGlkIG5vdCBzdGF0ZSBhbnkg
bmV4dCBvZiBraW4gSGVpci1hcHBhcmVudCB3aGVuCnRoZSBhY2NvdW50IHdhcyBvcGVuZWQsIGFs
dGhvdWdoIGFzIGhlciBhY2NvdW50IG9mZmljZXIsIGhlIHRvbGQgbWUKdGhhdCBoZSB3aWxsIGxh
dGVyIGZvcndhcmQgb25lIG9mIGhpcyByZWxhdGl2ZeKAmXMgbmFtZSBhcyBoaXMgbmV4dCBvZgpr
aW4gSGVpciB0byB0aGUgYWNjb3VudCB3aGljaCBoZSBkaWQgbm90IGZ1bGZpbGxlZCBiZWZvcmUg
aGUgbWV0IGhpcwpkZWF0aC4gSSB3YW50IHRvIGludHJvZHVjZSB5b3UgdG8gb3VyIEJhbmsgYXMg
dGhlIHJpZ2h0ZnVsIG5leHQgb2Yga2luCnRvIG91ciBkZWNlYXNlZCBjdXN0b21lci4KCk1lYW53
aGlsZSwgeW91IHNob3VsZCBoYXZlIG5vdGhpbmcgdG8gYmUgYWZyYWlkIG9yIHdvcnJ5IGFib3V0
IGJlY2F1c2UKSSBoYXZlIGFscmVhZHkgbWFkZSBhbGwgbmVjZXNzYXJ5IGFycmFuZ2VtZW50cyBi
ZWZvcmUgY29udGFjdGluZyB5b3UuClRoaXMgdHJhbnNhY3Rpb24gd2lsbCBiZSBleGVjdXRlZCB1
bmRlciBhIGxlZ2l0aW1hdGUgYXJyYW5nZW1lbnQgdGhhdAp3aWxsIHByb3RlY3QgdXMgZnJvbSBh
bnkgYnJlYWNoIG9mIHRoZSBsYXcuIEFsc28gdGhlIHJlbWl0dGFuY2Ugb2YKdGhpcyBmdW5kIHRv
IHlvdXIgcHJpdmF0ZSBhY2NvdW50IHdpbGwgdGFrZSBvbmx5IGEgbWF4aW11bSBvZiA4IGRheXMK
aW1tZWRpYXRlbHkgYWZ0ZXIgY29udGFjdGluZyBvdXIgQmFuay4gSSBkZWNpZGVkIHRvIG9mZmVy
IHlvdSA2MCUgb2YKdGhlIHRvdGFsIGZ1bmQgYXMgbXkgZm9yZWlnbiBwYXJ0bmVyLCB3aGlsZSA0
MCUgaXMgZm9yIG1lLiBQbGVhc2UgSQp3aWxsIGFwcHJlY2lhdGUgeW91ciBpbnRlcmVzdCBieSBw
cm92aWRpbmcgdGhlIGJlbG93IGluZm9ybWF0aW9uLgoKWW91ciBGdWxsIE5hbWU6CllvdXIgUmVz
aWRlbmNlIEhvbWUgQWRkcmVzczoKWW91ciBPZmZpY2lhbCBPY2N1cGF0aW9uOgpZb3VyIE1vYmls
ZSBOdW1iZXI6CllvdXIgQWdlOgoKVGhlIGZ1cnRoZXIgZGV0YWlscyBvZiB0aGUgRnVuZC1UcmFu
c2ZlciB3aWxsIGJlIGZvcndhcmRlZCB0byB5b3UgYXMKc29vbiBhcyBJIHJlY2VpdmUgeW91ciB3
aWxsaW5nbmVzcyB0byBhc3Npc3QgbWUgZXhlY3V0ZSB0aGUgZnVuZAp0cmFuc2FjdGlvbiBzdWNj
ZXNzZnVsbHkuCkhhdmUgYSBuaWNlIGRheSB3aGlsZSBJIGxvb2sgZm9yd2FyZCB0byByZWNlaXZp
bmcgeW91ciBmZWVkYmFjay4KCllvdXJzIFNpbmNlcmVseSwKTXIuIEFiZGFsbGFoIEFsIE1vdXNh
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
