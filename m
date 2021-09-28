Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE9141AA90
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Sep 2021 10:24:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 000B940557;
	Tue, 28 Sep 2021 08:24:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JNz2UAGUhp5n; Tue, 28 Sep 2021 08:24:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 83B7E40547;
	Tue, 28 Sep 2021 08:24:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0BD661BF298
 for <devel@linuxdriverproject.org>; Tue, 28 Sep 2021 08:24:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ED41440547
 for <devel@linuxdriverproject.org>; Tue, 28 Sep 2021 08:24:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XXGCLSjFXctu for <devel@linuxdriverproject.org>;
 Tue, 28 Sep 2021 08:24:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com
 [IPv6:2607:f8b0:4864:20::733])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 025D1404E8
 for <devel@driverdev.osuosl.org>; Tue, 28 Sep 2021 08:24:30 +0000 (UTC)
Received: by mail-qk1-x733.google.com with SMTP id q125so25166337qkd.12
 for <devel@driverdev.osuosl.org>; Tue, 28 Sep 2021 01:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=vemhl+5XPsM8ndBsqoYb66bJWmog043LKRjR2aIV7XI=;
 b=kHlgMTvRSpj4M9L8i0ChLRuFOx4rHqlqeGUIMeQYRV8kSg9x5AgKdBRCpStq+EeOBD
 wvn5gLne656IFkotwMQ+UB6bgcNOK34OR69hCIhq5jwKg05Fc05/FHy6nKYmaYHDjQdu
 r0lQbk0am4ABPM5lugrMc/r6PmbUzgVXeKEJlM8+1JVua8k8ycs6xss7vexPayLXbDGL
 0e/s0wqlW3bfve9zacXJtSa9HEFi7z/N8NZhYqDYz2LvJe/YXx/tTPdPKDqcHgyWpn95
 XClaARNqnJcMhm1E88JmlEMqzYhR8qILjCzuSi4xQxJXEjLmbAHi/MxI1CmM9SPrzvEl
 b1/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=vemhl+5XPsM8ndBsqoYb66bJWmog043LKRjR2aIV7XI=;
 b=tNXGoJNSd2i59khE88DkVEcAQs8P4L+c3KcXACzPRpF9reB0mDiM+qy7XL1GCzzXlw
 saXQ9Lg/o7NtfLg9yO281ev+NS+pLKrk+n8xlVRC87SLk1XRMKfNmMvmpPrYHgewuCnG
 qbpYElup8ixtZ3I9GfaKRfOY4N/BhKJJbwX7yN/3wA5HzZ6GqSmN4N02WxufBWY2hDhu
 YJpIRVDnHHFzq/qC3ZWnGYst31YSU4V86KaBURm6+/e1ldK6i8+skcZlnLxHWg8Pli/I
 lS14abUgsp8v75A9Oiba2TDwmPeZRnHumdiPbNLXrvh0LnmVVcCe1N3mafEdWSG10Huc
 Jzig==
X-Gm-Message-State: AOAM531WjO/ngSGj/eUOzDXTFQAxD2jGau/DXKgEMNi8iBigCsrGzIRP
 PVIFDEBN1U230WCrWwE1PCPjnwZOTNReUdgUThQ=
X-Google-Smtp-Source: ABdhPJyTSHw6BaAWrmWGh1dYivhPFg/W97P6AZcSG62ELFtw3XSiZJiTewPDp2v0VpIPNBUWcXxUkdFFN0g5J36xCmw=
X-Received: by 2002:a37:444d:: with SMTP id r74mr4008226qka.405.1632817469547; 
 Tue, 28 Sep 2021 01:24:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:4150:0:0:0:0:0 with HTTP; Tue, 28 Sep 2021 01:24:28
 -0700 (PDT)
From: Lila Lucas <lila.luca112@gmail.com>
Date: Tue, 28 Sep 2021 10:24:28 +0200
X-Google-Sender-Auth: 6AuvRe08P7evWQWo5JwTEpKsBMg
Message-ID: <CA+soGs_ghL6zLUUFgRV1E-bZP4-OpQK7xGtLh91_=BAD2nD==Q@mail.gmail.com>
Subject: HELLO
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TWF5IHRoZSBwZWFjZSBvZiBHb2QgYmUgd2l0aCB5b3UgLAoKVmVyeSBVcmdlbnQKCkhlbGxvIERl
YXIsCgpJIGtub3cgdGhpcyByZXZlbGF0aW9uIHdpbGwga2VlcCB5b3Ugd29uZGVyaW5nIHdoeSBJ
IHNob3VsZCB0cnVzdCB5b3UKd2l0aCB0aGlzIGluZm9ybWF0aW9uIEkgYW0gYWJvdXQgdG8gcmV2
ZWFsIHRvIHlvdS4gSSBkbyBub3QgaGF2ZQphbm90aGVyIHdheSB0byBjb21tdW5pY2F0ZSB3aXRo
IHlvdSBvbmx5IHRvIHNlbmQgeW91IHRoaXMgZW1haWwuIEkgYW0KaW4gZGVzcGFpciBhbmQgbXkg
aGVhcnQgYmxlZWRzIHdoZW4gSSBzZW5kIHlvdSB0aGlzIGxldHRlciB3aXRoIHRoZQpob3BlIHRo
YXQgaXQgd2lsbCBob2xkIHlvdXIgYXR0ZW50aW9uIGFuZCBhbHNvIEkgd2FudCB5b3UgdG8gbWFr
ZSBvdXQKdGltZSB0byByZWFkIHRoaXMgbWFpbCBhdHRlbnRpdmVseSBpbiBvcmRlciB0byB1bmRl
cnN0YW5kIHRoZSByZWFzb24Kd2h5IEkgZGVjaWRlZCB0byBjb250YWN0IHlvdS4gTXkgZGVhciwg
aGF2ZW7igJl0IG1ldCB3aXRoIHlvdSBiZWZvcmUgSQpkZWNpZGVkIHRvIGNvbnRhY3QgeW91IGR1
ZSB0byB0aGUgdXJnZW5jeSBvZiBteSBwcmVzZW50IGhlYWx0aApzaXR1YXRpb24gaGVyZSBpbiB0
aGUgaG9zcGl0YWwuIEkgYW0gYSB3aWRvdyBkaWFnbm9zZWQgd2l0aCBicmFpbgp0dW1vciBkaXNl
YXNlIHdoaWNoIGhhcyBnb3R0ZW4gdG8gYSB2ZXJ5IGJhZCBzdGFnZSB3aGljaCBoYXMgZ290dGVu
IHRvCmEgdmVyeSBiYWQgc3RhZ2UgYW5kIHByZXNlbnRseSBJIGFtIHBhcnRpYWxseSBzdWZmZXJp
bmcgZnJvbSBhIHN0cm9rZQppbGxuZXNzIHdoaWNoIGhhcyBiZWNvbWUgYWxtb3N0IGltcG9zc2li
bGUgZm9yIG1lIHRvIG1vdmUgYXJvdW5kLiBJCndhcyBtYXJyaWVkIHRvIG15IGxhdGUgaHVzYmFu
ZCBmb3IgbWFueSB5ZWFycyBiZWZvcmUgaGUgZGllZCwKdW5mb3J0dW5hdGVseSB3ZSBkb24ndCBo
YXZlIGFueSBjaGlsZHJlbiBvZiBvdXIgb3duLCBteSBkb2N0b3IKY29uZmlkZWQgdG8gbWUgdGhh
dCBJIGhhdmUgbGVzcyBjaGFuY2UgdG8gbGl2ZSBhcyBhIHJlc3VsdCBvZiBteQppbGxuZXNzLiBN
eSBsYXRlIGh1c2JhbmQgYW5kIEkgbWFkZSBhIHN1YnN0YW50aWFsIGRlcG9zaXQgd2l0aCB0aGUK
QmFuaywgd2hpY2ggSSBoYXZlIGRlY2lkZWQgdG8gaGFuZCBvdmVyIGFuZCBlbnRydXN0IHRoZSBz
dW0gb2YgKCQKMTEsMDAwLDAwMC4wMCwgRWxldmVuIE1pbGxpb24gRG9sbGFycykgaW4gb3VyIGpv
aW50IEFjY291bnQgdG8geW91IHRvCkludmVzdCBpbnRvIGEgY2hhcml0YWJsZSBwcm9qZWN0IGlu
IHlvdXIgY291bnRyeS9wb3NpdGlvbi4gQmFzZWQgb24gbXkKcHJlc2VudCBoZWFsdGggc3RhdHVz
IEkgYW0gcGVybWFuZW50bHkgaW5kaXNwb3NlZCB0byBoYW5kbGUgZmluYW5jZXMKb3IgYW55IGZp
bmFuY2lhbCByZWxhdGVkIHByb2plY3QgZm9sbG93aW5nIG15IGRpYWdub3Nlcy4gSGF2aW5nIGtu
b3duCm15IHByZXNlbnQgaGVhbHRoIGNvbmRpdGlvbiwgSSBkZWNpZGVkIHRvIGNvbnRhY3QgeW91
IHRvIGNsYWltIHRoZQpmdW5kIHNpbmNlIEkgZG9uJ3QgaGF2ZSBhbnkgcmVsYXRpb24sIEkgZGVj
aWRlZCB0byBkb25hdGUgd2hhdCBJIGhhdmUKdG8geW91IGZvciB0aGUgc3VwcG9ydCBhbmQgbXV0
dWFsIGJlbmVmaXQgb2YgdGhlIG9ycGhhbnMsIGdpdmVzCmp1c3RpY2UgYW5kIGhlbHAgdG8gdGhl
IHBvb3IsIG5lZWR5LCBlbGRlcmx5IG9uZXMsIGRpc2FibGVzIGFuZCB0bwpwcm9tb3RlIHRoZSB3
b3JkcyBvZiBHb2QgYW5kIHRoZSBlZmZvcnQgdGhhdCB0aGUgaG91c2Ugb2YgR29kIHdpbGwgYmUK
bWFpbnRhaW5lZCBzYXlzIFRoZSBMb3JkLCBhcyBJIGhhdmUgYmVlbiB0b3VjaGVkIGJ5IEdvZCB0
byBkb25hdGUgZnJvbQp3aGF0IEkgaGF2ZSBiZWNhdXNlIGl0IHdpbGwgYmUgYSBncmVhdCBsb3Nz
IGluIHNwZW5kaW5nIHRoZSBmdW5kIG9uIG15CmhlYWx0aCB0cmVhdG1lbnQgaGVuY2UgbXkgZG9j
dG9yIGhhcyBjb25maXJtZWQgdG8gbWUgdGhhdCBpIHdpbGwgbm90CnN1cnZpdmUgdGhpcyBpbGxu
ZXNzLgoKVGhpcyBpcyB0aGUgcmVhc29uIEkgY29udGFjdGVkIHlvdSBmb3IgeW91ciBzdXBwb3J0
IGFuZCBoZWxwIHRvIHN0YW5kCmFzIG15IHJpZ2h0ZnVsIGJlbmVmaWNpYXJ5IGFuZCBjbGFpbSB0
aGUgbW9uZXkgZm9yIGh1bWFuaXRhcmlhbgpwdXJwb3NlcyBmb3IgdGhlIG11dHVhbCBiZW5lZml0
cyBvZiB0aGUgbGVzcyBwcml2aWxlZ2VkIG9uZXMuIEJlY2F1c2UKSWYgdGhlIG1vbmV5IHJlbWFp
bnMgdW5jbGFpbWVkIHdpdGggdGhlIGJhbmsgYWZ0ZXIgbXkgZGVhdGgsIHRob3NlCmdyZWVkeSBi
YW5rIGV4ZWN1dGl2ZXMgd2lsbCBwbGFjZSB0aGUgbW9uZXkgYXMgYW4gdW5jbGFpbWVkIEZ1bmQg
YW5kCnNoYXJlIGl0IGZvciB0aGVpciBzZWxmaXNoIGFuZCB3b3J0aGxlc3MgdmVudHVyZXMuIEhv
d2V2ZXIgSSBuZWVkcwp5b3VyIHNpbmNlcml0eSBhbmQgYWJpbGl0eSB0byBjYXJyeSBvdXQgdGhp
cyB0cmFuc2FjdGlvbiBhbmQgZnVsZmlsbApteSBmaW5hbCB3aXNoIGluIGltcGxlbWVudGluZyB0
aGUgY2hhcml0YWJsZSBpbnZlc3RtZW50IHByb2plY3QgaW4KeW91ciBjb3VudHJ5IGFzIGl0IHJl
cXVpcmVzIGFic29sdXRlIHRydXN0IGFuZCBkZXZvdGlvbiB3aXRob3V0IGFueQpmYWlsdXJlIGFu
ZCBJdCB3aWxsIGJlIG15IHBsZWFzdXJlIHRvIGNvbXBlbnNhdGUgeW91IHdpdGggcGFydCBvZiB0
aGUKbW9uZXkgYXMgbXkgSW52ZXN0bWVudCBNYW5hZ2VyL1BhcnRuZXIgZm9yIHlvdXIgZWZmb3J0
IGluIGhhbmRsaW5nIHRoZQp0cmFuc2FjdGlvbiwgd2hpbGUgdGhlIHJlbWFpbmluZyBhbW91bnQg
b2YgdGhlIG1vbmV5IHdpbGwgYmUgaW52ZXN0ZWQKaW50byB0aGUgY2hhcml0eSBwcm9qZWN0IHRo
ZXJlIGluIHlvdXIgY291bnRyeS4gSSBhbSB3YWl0aW5nIGZvciB5b3VyCnByb21wdCByZXNwb25z
ZSBpZiBvbmx5IHlvdSBhcmUgaW50ZXJlc3RlZCBJIHdpbGwgZ2l2ZSB5b3UgZnVydGhlcgpkZXRh
aWxzIG9mIHRoZSB0cmFuc2FjdGlvbi4KCk1heSB0aGUgcGVhY2Ugb2YgR29kIGJlIHdpdGggeW91
LgpTaW5jZXJlbHkgTXJzLiBMaWxhIEx1Y2FzLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
