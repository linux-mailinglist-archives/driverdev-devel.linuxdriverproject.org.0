Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EE24867AC
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Jan 2022 17:30:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D670414A1;
	Thu,  6 Jan 2022 16:30:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y_ISknNld0vZ; Thu,  6 Jan 2022 16:30:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F0DF4019D;
	Thu,  6 Jan 2022 16:30:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 533701BF3D1
 for <devel@linuxdriverproject.org>; Thu,  6 Jan 2022 16:30:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3F65B8295A
 for <devel@linuxdriverproject.org>; Thu,  6 Jan 2022 16:30:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4e7SQKl2jZ0v for <devel@linuxdriverproject.org>;
 Thu,  6 Jan 2022 16:30:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 867A781D5F
 for <devel@driverdev.osuosl.org>; Thu,  6 Jan 2022 16:30:05 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id o6so11579433edc.4
 for <devel@driverdev.osuosl.org>; Thu, 06 Jan 2022 08:30:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=oqcJWn4MsdGlg45om0eEFc6ZbtSFR8np9XpVpmt8hok=;
 b=DEA3kVguWFd3VvJMjYeigBUE1xIMSv0W8sgzcTL+uNURkMPPTfiKjrT42aYbkJOy2d
 t/nrby8Er2Fx95L9nxDeWhMTpPFvulK/ZDOw9q9CgE3UYUDCPYMreC4nYom64IxdMeLs
 wupQdVE7NTM/7scz8PwvDlryYBUxeXL5K3z6b8v3kbhqX53+W5o6KWfqTTJkHJEQcZFt
 2PWU3d+jz7sv1T3dKRwJC/zQ//Sf4BM2Ja/QgtkG3kx2TZTfy9Urf30ETwuq69yh6XnR
 qT0JcHv28z1zEADtQeskGROKAHjl60pkxJkBabLHuPzdtYadEPSon+zSE0x68SBPyzA3
 Pmtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=oqcJWn4MsdGlg45om0eEFc6ZbtSFR8np9XpVpmt8hok=;
 b=knbK4iCO3C0fRVicK5o9xdLKN5ooscJVNOQz7gIjOEASTFhH8l7Xclee4kP8dLXQH4
 csWv6urpjWjrTSMyMcnoYki/+1wCcbkByKf9GmWJhtlKvG2IhGw7YjzT3YwnLYYn1sYW
 Teft1yrSKHetmVo/F8L2GsFFb3BG2NDJ8GB10uh+h/p42256oTZ4IX16Hyt8iveDhDDT
 tIyA9nsV1PdwKC1qQQdWSzGhhVqYMw+OO+ZyYz25LbrGQiPBdMCZfHvBmhDnfUBgX/dj
 hBKVX/juxHAcHJdAr+aPvOJAEVJHly8kBNkN+IkLfIFnw7yeFMgT7H4Mt7iib+TWRT+B
 PuiA==
X-Gm-Message-State: AOAM533nu7a0MkbDHEA7LN88Ke3DB7EhPwBI4Ox0Ebe5Z7KQ1eg8H/vT
 O8yrBKuNvwImOq2iUFQ8t6h88fYAJTpYq+6HWLQ=
X-Google-Smtp-Source: ABdhPJxUh9z+xiMxW5DdVU6r6qmsPr0kVh0hR+KjICZF4TORAjVBGxRKCFDEm3r38aDsgGGZO1/8X6TvhEuKYQQ28H8=
X-Received: by 2002:a17:906:2559:: with SMTP id
 j25mr3830256ejb.416.1641486603331; 
 Thu, 06 Jan 2022 08:30:03 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:907:61a1:0:0:0:0 with HTTP; Thu, 6 Jan 2022 08:30:02
 -0800 (PST)
From: Muskwe Sanogo <dnipttssw@gmail.com>
Date: Thu, 6 Jan 2022 16:30:02 +0000
X-Google-Sender-Auth: -GBC-xU2BA27rK1h_b-cwTewYY0
Message-ID: <CAABkmyx5o_+iL4Th1JtT=k-2p-Pywhp-ij2Ea38-kK1TP7ZpaA@mail.gmail.com>
Subject: Please confirm if you received the invitation
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
Reply-To: skwnogo@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QAogV2l0aCBkdWUgcmVzcGVjdCB0byB5b3VyIHBlcnNvbmFsaXR5IGFuZCBtdWNoIHNpbmNlcml0
eSBvZiB0aGlzCnB1cnBvc2UsIEkgbWFrZSB0aGlzIGNvbnRhY3Qgd2l0aCB5b3UgYmVsaWV2aW5n
IHRoYXQgeW91IGNhbiBiZSBvZgpncmVhdCBhc3Npc3RhbmNlIHRvIG1lLiBJJ20gTXIuIE11c2t3
ZSBTYW5vZ28sICBJJ20gdGhlIENoYWlybWFuIG9mCkZPUkVJR04gUEFZTUVOVFMgQ09OVFJBQ1Qg
QVdBUkQgQ09NTUlUVEVFIGFuZCBhbHNvIEkgY3VycmVudGx5IGhvbGQKdGhlIHBvc3Qgb2YgSW50
ZXJuYWwgQXVkaXQgTWFuYWdlciBvZiBvdXIgYmFuayBpbiBCcmFuY2gsIFBsZWFzZSBzZWUKdGhp
cyBhcyBhIGNvbmZpZGVudGlhbCBtZXNzYWdlIGFuZCBkbyBub3QgcmV2ZWFsIGl0IHRvIGFub3Ro
ZXIgcGVyc29uCmJlY2F1c2UgaXTigJlzIGEgdG9wIHNlY3JldC4KCldlIGFyZSBpbXBvc2l0aW9u
IHRvIHJlY2xhaW0gYW5kIGluaGVyaXQgdGhlIHN1bSBvZiBVUyAkKDM4LDg1MCwwMDAKTWlsbGlv
biApIHdpdGhvdXQgYW55IHRyb3VibGUsIGZyb20gYSBkb3JtYW50IGFjY291bnQgd2hpY2ggcmVt
YWlucwp1bmNsYWltZWQgc2luY2UgMTAgeWVhcnMgdGhlIG93bmVyIGRpZWQuIFRoaXMgaXMgYSBV
LlMgRG9sbGFycyBhY2NvdW50CmFuZCB0aGUgYmVuZWZpY2lhcnkgZGllZCB3aXRob3V0IHRyYWNl
IG9mIGhpcyBmYW1pbHkgdG8gY2xhaW0gdGhlCmZ1bmQuCgpVcG9uIG15IHBlcnNvbmFsIGF1ZGl0
IGludmVzdGlnYXRpb24gaW50byB0aGUgZGV0YWlscyBvZiB0aGUgYWNjb3VudCwKSSBmaW5kIG91
dCB0aGF0IHRoZSBkZWNlYXNlZCBpcyBhIGZvcmVpZ25lciwgd2hpY2ggbWFrZXMgaXQgcG9zc2li
bGUKZm9yIHlvdSBhcyBhIGZvcmVpZ25lciBubyBtYXR0ZXIgeW91ciBjb3VudHJ5IHRvIGxheSBj
bGFpbSBvbiB0aGUKYmFsYW5jZSBhcyB0aGUgRm9yZWlnbiBCdXNpbmVzcyBQYXJ0bmVyIG9yIEV4
dGVuZGVkIFJlbGF0aXZlIHRvIHRoZQpkZWNlYXNlZCwgcHJvdmlkZWQgeW91IGFyZSBub3QgZnJv
bSBoZXJlLgoKWW91ciBpbnRlZ3JpdHkgYW5kIHRydXN0d29ydGhpbmVzcyB3aWxsIG1ha2UgdXMg
c3VjY2VlZCB3aXRob3V0IGFueQpyaXNrLiBQbGVhc2UgaWYgeW91IHRoaW5rIHRoYXQgdGhlIGFt
b3VudCBpcyB0b28gbXVjaCB0byBiZQp0cmFuc2ZlcnJlZCBpbnRvIHlvdXIgYWNjb3VudCwgeW91
IGhhdmUgdGhlIHJpZ2h0IHRvIGFzayBvdXIgYmFuayB0bwp0cmFuc2ZlciB0aGUgZnVuZCBpbnRv
IHlvdXIgYWNjb3VudCBiaXQgYnkgYml0IGFmdGVyIGFwcHJvdmFsIG9yIHlvdQpkb3VibGUgdGhl
IGFjY291bnQuIE9uY2UgdGhpcyBmdW5kIGlzIHRyYW5zZmVycmVkIGludG8geW91ciBhY2NvdW50
LAp3ZSB3aWxsIHNoYXJlIHRoZSBmdW5kIGFjY29yZGluZ2x5LiA0NSUsIGZvciB5b3UsIDQ1JSwg
Zm9yIG1lLCA1JSwgaGFkCmJlZW4gbWFwcGVkIG91dCBmb3IgdGhlIGV4cGVuc2UgbWFkZSBpbiB0
aGlzIHRyYW5zYWN0aW9uLCA1JSBhcyBhIGZyZWUKd2lsbCBkb25hdGlvbiB0byBjaGFyaXR5IGFu
ZCBtb3RoZXJsZXNzIGJhYmllcyBob21lcyBpbiBib3RoIG91cgpjb3VudHJpZXMgYXMgc2lnbiBv
ZiBicmVha3Rocm91Z2ggYW5kIG1vcmUgYmxlc3NpbmdzLgoKCklmIHlvdSBhcmUgaW50ZXJlc3Rl
ZCB0byBoZWxwIHdpdGhvdXQgZGlzYXBwb2ludG1lbnQgb3IgYnJlYWNoIG9mCnRydXN0LCByZXBs
eSBtZSwgc28gdGhhdCBJIHdpbGwgZ3VpZGUgeW91IG9uIHRoZSBwcm9wZXIgYmFua2luZwpndWlk
ZWxpbmVzIHRvIGZvbGxvdyBmb3IgdGhlIGNsYWltLiBBZnRlciB0aGUgdHJhbnNmZXIsIEkgd2ls
bCBmbHkgdG8KeW91ciBjb3VudHJ5IGZvciBzaGFyaW5nIG9mIGZ1bmRzIGFjY29yZGluZyB0byBv
dXIgYWdyZWVtZW50LgoKQXNzdXJhbmNlOiBOb3RlIHRoYXQgdGhpcyB0cmFuc2FjdGlvbiB3aWxs
IG5ldmVyIGluIGFueSB3YXkgaGFybSBvcgpmb2lsZWQgeW91ciBnb29kIHBvc3Qgb3IgcmVwdXRh
dGlvbiBpbiB5b3VyIGNvdW50cnksIGJlY2F1c2UKZXZlcnl0aGluZyB3aWxsIGZvbGxvdyBsZWdh
bCBwcm9jZXNzLgoKSSBhbSBsb29raW5nIGZvcndhcmQgdG8gaGVhciBmcm9tIHlvdSBzb29uZXN0
LnBsZWFzZSByZXBseSBtZSB2aWE6CnNrd25vZ29AZ21haWwuY29tCllvdXJzIGZhaXRoZnVsbHks
Ck1yLiBNdXNrd2UgU2Fub2dvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=
