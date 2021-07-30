Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB92B3DC059
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Jul 2021 23:39:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 46CE5405D5;
	Fri, 30 Jul 2021 21:39:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fh4K-cm3VIrJ; Fri, 30 Jul 2021 21:39:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 763814026A;
	Fri, 30 Jul 2021 21:39:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3828A1BF9C1
 for <devel@linuxdriverproject.org>; Fri, 30 Jul 2021 21:39:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 38F4E60768
 for <devel@linuxdriverproject.org>; Fri, 30 Jul 2021 21:39:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SOkZYovA9Usy for <devel@linuxdriverproject.org>;
 Fri, 30 Jul 2021 21:39:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 780EB6060A
 for <devel@driverdev.osuosl.org>; Fri, 30 Jul 2021 21:39:34 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id y12so15097539edo.6
 for <devel@driverdev.osuosl.org>; Fri, 30 Jul 2021 14:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=pq8QdcgdNxjJmg61r8dPGvWyeowRsap/Qds2NQHbQZA=;
 b=A4VJRNg73kyDibHhMeSkTzKEXbflxcCG36B66kOxoBj8FHm1664O6QunnfTjo3iaoQ
 gkJlsA48H1sU4iX+6RfFmt/V5X72w0ogkWhloO52D3y2XyDpT06sDnNw/xYd9KlktlFw
 xjRxkcGmJy5bRuuDX5wLwai1mVIpQROZgRk6ofJznqL5hgsDXMdEcEaFonr4QVFCNc77
 KjVlF/pWeW6WJ9P3FU7r45DLPa700cAVub3V3V2zxz2eTU2vb/Ru3Xn0Ef6TwqliABzX
 tkimkL+RRD1dObCEijRV1m5ZNeAxiXDlsA3KAY+CFltuwOyiGIhmVUM7R4Ef0lJdk5NK
 J66Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=pq8QdcgdNxjJmg61r8dPGvWyeowRsap/Qds2NQHbQZA=;
 b=uaP8VmT3Vfx436jnj3OQO034oji55WVcWS/N9sV2cVKISkSH8DBSfm/Fu8741dy1Q5
 SnYsGV0I6FRWmskHgsD0fWPbGgZZwD1H2e+Kj+BiCdBhkOb5HKXGWWo9tqRyhDdLZwvK
 6SGSXvO23uqqdvbyYFfG3p39s6KUx9+weH/hjqDltifDh0779IMWLuMrfk4dPEgGLVYn
 c5JfDVAGrmiGQPPt2lCj4fnLnQaqz0mBMv+liUYC3CkwW+hFG38n7cCznrBLZpe7CSnK
 ymTs7n1t4EggEfrFgI407e446khijx6QnHCcPjN11YfVrI4P47VKXvypULptXiqhHA7+
 ZQ/A==
X-Gm-Message-State: AOAM530qncGEXA6PMEhQoxoH8822ZzwrBp+dJQ/P1AKuvSV2w6y92cWG
 t7/uFxQDPBo98B94yE7qysmGMMa8TMvdld8v8/k=
X-Google-Smtp-Source: ABdhPJxkiutn3q15W++d4CbtnQ4XwQKkbjxjC83pKr4fMwDVGVppTTY20NFu99fD9MEPZWutUTXkG5zyYIgRIavHIS8=
X-Received: by 2002:a05:6402:3510:: with SMTP id
 b16mr5600698edd.121.1627681172164; 
 Fri, 30 Jul 2021 14:39:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:805a:0:0:0:0 with HTTP; Fri, 30 Jul 2021 14:39:31
 -0700 (PDT)
From: Bryan Bouchet <bryanbouchet0@gmail.com>
Date: Fri, 30 Jul 2021 14:39:31 -0700
X-Google-Sender-Auth: EST8WQzqsTIKjwgMiwR_ypQMp0U
Message-ID: <CADUbOoEasy5bpdGRF5D61aHscBzjY6A6h=0YeGAKZCkj5HaF6Q@mail.gmail.com>
Subject: PLEASE RESPOND VERY URGENTLY
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
Reply-To: bouchetb@yandex.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhciBGcmllbmQsCgpXaXRoIGR1ZSByZXNwZWN0LCBpIGhhdmUgZGVjaWRlZCB0byBjb250YWN0
IHlvdSBvbiBhIGJ1c2luZXNzCnRyYW5zYWN0aW9uIHRoYXQgd2lsbCBiZSBiZW5lZmljaWFsIHRv
IGJvdGggb2YgdXMuIEF0IHRoZSBiYW5rIGxhc3QKYWNjb3VudCBhbmQgYXVkaXRpbmcgZXZhbHVh
dGlvbiwgbXkgc3RhZmZzIGNhbWUgYWNyb3NzIGFuIG9sZCBhY2NvdW50CndoaWNoIHdhcyBiZWlu
ZyBtYWludGFpbmVkIGJ5IGEgZm9yZWlnbiBjbGllbnQgd2hvIHdlIGxlYXJuIHdhcyBhbW9uZwp0
aGUgZGVjZWFzZWQgcGFzc2VuZ2VycyBvZiBtb3RvciBhY2NpZGVudCBvbiBOb3ZlbWJlci4yMDAz
LCB0aGUKZGVjZWFzZWQgd2FzIHVuYWJsZSB0byBydW4gdGhpcyBhY2NvdW50IHNpbmNlIGhpcyBk
ZWF0aC4gVGhlIGFjY291bnQKaGFzIHJlbWFpbmVkIGRvcm1hbnQgd2l0aG91dCB0aGUga25vd2xl
ZGdlIG9mIGhpcyBmYW1pbHkgc2luY2UgaXQgd2FzCnB1dCBpbiBhIHNhZmUgZGVwb3NpdCBhY2Nv
dW50IGluIHRoZSBiYW5rIGZvciBmdXR1cmUgaW52ZXN0bWVudCBieSB0aGUgY2xpZW50LgoKU2lu
Y2UgaGlzIGRlbWlzZSwgZXZlbiB0aGUgbWVtYmVycyBvZiBoaXMgZmFtaWx5IGhhdmVuJ3QgYXBw
bGllZCBmb3IKY2xhaW1zIG92ZXIgdGhpcyBmdW5kIGFuZCBpdCBoYXMgYmVlbiBpbiB0aGUgc2Fm
ZSBkZXBvc2l0IGFjY291bnQKdW50aWwgaSBkaXNjb3ZlcmVkIHRoYXQgaXQgY2Fubm90IGJlIGNs
YWltZWQgc2luY2Ugb3VyIGNsaWVudCBpcyBhCmZvcmVpZ24gbmF0aW9uYWwgYW5kIHdlIGFyZSBz
dXJlIHRoYXQgaGUgaGFzIG5vIG5leHQgb2Yga2luIGhlcmUgdG8KZmlsZSBjbGFpbXMgb3ZlciB0
aGUgbW9uZXkuIEFzIHRoZSBkaXJlY3RvciBvZiB0aGUgZGVwYXJ0bWVudCwgdGhpcwpkaXNjb3Zl
cnkgd2FzIGJyb3VnaHQgdG8gbXkgb2ZmaWNlIHNvIGFzIHRvIGRlY2lkZSB3aGF0IGlzIHRvIGJl
IGRvbmU7CkkgZGVjaWRlZCB0byBzZWVrIHdheXMgdGhyb3VnaCB3aGljaCB0byB0cmFuc2ZlciB0
aGlzIG1vbmV5IG91dCBvZiB0aGUKYmFuayBhbmQgb3V0IG9mIHRoZSBjb3VudHJ5IHRvby4KClRo
ZSB0b3RhbCBhbW91bnQgaW4gdGhlIGFjY291bnQgaXMgKDE4LjYgbWlsbGlvbikgd2l0aCBteSBw
b3NpdGlvbnMgYXMKYSBzdGFmZiBvZiB0aGlzIGJhbmssIGkgYW0gaGFuZGljYXBwZWQgYmVjYXVz
ZSBpIGNhbm5vdCBvcGVyYXRlCmZvcmVpZ24gYWNjb3VudHMgYW5kIGNhbm5vdCBsYXkgYmVuZWZp
Y2UgY2xhaW0gb3ZlciB0aGlzIG1vbmV5LiBUaGUKY2xpZW50IHdhcyBhIGZvcmVpZ24gbmF0aW9u
YWwgYW5kIHlvdSB3aWxsIG9ubHkgYmUgYXNrZWQgdG8gYWN0IGFzIGhpcwpuZXh0IG9mIGtpbiBh
bmQgaSB3aWxsIHN1cHBseSB5b3Ugd2l0aCBhbGwgdGhlIG5lY2Vzc2FyeSBpbmZvcm1hdGlvbgph
bmQgYmFuayBkYXRhIHRvIGFzc2lzdCB5b3UgaW4gYmVpbmcgYWJsZSB0byB0cmFuc2ZlciB0aGlz
IG1vbmV5IHRvCmFueSBiYW5rIG9mIHlvdXIgY2hvaWNlIHdoZXJlIHRoaXMgbW9uZXkgY291bGQg
YmUgdHJhbnNmZXJyZWQgaW50by4KClRoZSB0b3RhbCBzdW0gd2lsbCBiZSBzaGFyZWQgYXMgZm9s
bG93czogNTAlIGZvciBtZSwgNTAlIGZvciB5b3UsIGFuZApleHBlbnNlcyBpbmNpZGVudGFsIG9j
Y3VyIGR1cmluZyB0aGUgdHJhbnNmZXIgd2lsbCBiZSBpbmN1ciBieSBib3RoIG9mCnVzLiBUaGUg
dHJhbnNmZXIgaXMgcmlzayBmcmVlIG9uIGJvdGggc2lkZXMgaGVuY2UgeW91IGFyZSBnb2luZyB0
bwpmb2xsb3cgbXkgaW5zdHJ1Y3Rpb24gdGlsbCB0aGUgZnVuZCB0cmFuc2ZlciB0byB5b3VyIGFj
Y291bnQuIFNpbmNlIEkKd29yayBpbiB0aGlzIGJhbmsgdGhhdCBpcyB3aHkgeW91IHNob3VsZCBi
ZSBjb25maWRlbnQgaW4gdGhlIHN1Y2Nlc3MKb2YgdGhpcyB0cmFuc2FjdGlvbiBiZWNhdXNlIHlv
dSB3aWxsIGJlIHVwZGF0ZWQgd2l0aCBpbmZvcm1hdGlvbuKAmXMgYXMKYXQgd2hlbiBkZXNpcmVk
LgoKSSB3aWxsIHdpc2ggeW91IHRvIGtlZXAgdGhpcyB0cmFuc2FjdGlvbiBzZWNyZXQgYW5kIGNv
bmZpZGVudGlhbCBhcyBJCmFtIGhvcGluZyB0byByZXRpcmUgd2l0aCBteSBzaGFyZSBvZiB0aGlz
IG1vbmV5IGF0IHRoZSBlbmQgb2YKdHJhbnNhY3Rpb24gd2hpY2ggd2lsbCBiZSB3aGVuIHRoaXMg
bW9uZXkgaXMgc2FmZXR5IGluIHlvdXIgYWNjb3VudC4gSQp3aWxsIHRoZW4gY29tZSBvdmVyIHRv
IHlvdXIgY291bnRyeSBmb3Igc2hhcmluZyBhY2NvcmRpbmcgdG8gdGhlCnByZXZpb3VzbHkgYWdy
ZWVkIHBlcmNlbnRhZ2VzLiBZb3UgbWlnaHQgZXZlbiBoYXZlIHRvIGFkdmlzZSBtZSBvbgpwb3Nz
aWJpbGl0aWVzIG9mIGludmVzdG1lbnQgaW4geW91ciBjb3VudHJ5IG9yIGVsc2V3aGVyZSBvZiBv
dXIKY2hvaWNlLiBNYXkgZ29kIGhlbHAgeW91IHRvIGhlbHAgbWUgdG8gYSByZXN0aXZlIHJldGly
ZW1lbnQ/CgooMSkgWW91ciBmdWxsIG5hbWUuLi4uLi4uLi4uLi4uLgooMikgWW91ciBhZ2U6Li4u
Li4uLi4uLi4uLi4uLgooMykgU2V4Oi4uLi4uLi4uLi4uLi4uLi4uLi4uLgooNCkgWW91ciB0ZWxl
cGhvbmUgbnVtYmVyOi4uLi4uLi4uLi4uLi4uLi4uCig1KSBZb3VyIG9jY3VwYXRpb246Li4uLi4u
Li4uLi4uLi4uLi4uLi4uCig2KSBZb3VyIGNvdW50cnk6Li4uLi4uLi4uLi4uLi4uLi4uLi4uCgpZ
b3VycyBzaW5jZXJlbHksCkRyIEJyeWFuIEJvdWNoZXQKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJp
dmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
