Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4CF483634
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jan 2022 18:34:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D76240598;
	Mon,  3 Jan 2022 17:34:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UkthvVUbPhdz; Mon,  3 Jan 2022 17:34:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 583AD4049C;
	Mon,  3 Jan 2022 17:34:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 677681BF289
 for <devel@linuxdriverproject.org>; Mon,  3 Jan 2022 17:34:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 530154026A
 for <devel@linuxdriverproject.org>; Mon,  3 Jan 2022 17:34:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kwEJ4px_UlDY for <devel@linuxdriverproject.org>;
 Mon,  3 Jan 2022 17:34:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 98D70405A2
 for <devel@driverdev.osuosl.org>; Mon,  3 Jan 2022 17:34:22 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id q14so130737544edi.3
 for <devel@driverdev.osuosl.org>; Mon, 03 Jan 2022 09:34:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=oiZ7G8qleI6K8MkiH424xRm1sJmWhAGxpDGwsFYlIuY=;
 b=eavEEeGuAU+eNut5Ye15TrVBUh8sYsjKDHsye2vmHTI2KUQqN25rSLMtPnxH7TSq4i
 bGXn+l4+0PoQrbEH5B+18jOUB8BlK8Q0qlIefly3KidA7/uN4A4BTUn5bka44oWzD+B9
 zEF46M2wNEP3MnNO5PwfCfvrh8xB1ZRRZzR8DTQkK8OXUpRrilf+OMmsonsCggLVauac
 nXgMB/NHkheXGH2yuMKQM24RcUsxYk+wfh0lMjDDWQtwuGWNchW0EyYyW7W/MEiiSWXr
 ceUzu0TopTW/6h7ne9Lb1t570unUzAaD8qUWe7lw+hpMEgBUm2kZyeLfsScN5X3/jGPk
 GY/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=oiZ7G8qleI6K8MkiH424xRm1sJmWhAGxpDGwsFYlIuY=;
 b=ltin3VzXbhoSLgMm1HYE21I1+sf6Xt0vmBCCu+9S1po1Ak0sJdt89+icbaH/0JKTM5
 rdiJYiHW9XDL/ytuSNjDCUOGAcrSP5rlPlkOv6QdRqDPk1bsnlJVRAo8XWhQUshruFYq
 7kj/4Rg5ataL2zroQFM2elgiA17AFkxdbMYg1DUL3ChpUNWlB3b/KmATOkkvhcagQvy2
 CtD04rNVWY4GnRdWq1IzwVw9vNuiKWPqSsNTQIDJa268sIt730beXiOx7ZNiN+5jpY7C
 +2r0tMvLhgFxlM16TaexMasXS6OZfbWByF/jcIL70eey/dILudyKH7XKjsWbjVzFMq9G
 ixoQ==
X-Gm-Message-State: AOAM531X0v3/nuxgoufFFevDvkZ8PlMZNBhamhhCfWCmFun5WR2gPLP4
 6oIt3BtKhVhUZ5t9zlMG74aI1Zgr6p3OJUgQuLk=
X-Google-Smtp-Source: ABdhPJw0QPrct6dAQnHFiR7xKM2YeEbGkBWeut5NeBwS7lAfsDRcyU1/tKDk7hyC278zfQgoArFaXcaaNAleoKJEgOE=
X-Received: by 2002:a17:906:9413:: with SMTP id
 q19mr37180138ejx.296.1641231260444; 
 Mon, 03 Jan 2022 09:34:20 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a54:2e91:0:0:0:0:0 with HTTP;
 Mon, 3 Jan 2022 09:34:19 -0800 (PST)
From: Mrs Aisha Al-Qaddafi <mrsaishaalqaddafi967@gmail.com>
Date: Mon, 3 Jan 2022 09:34:19 -0800
X-Google-Sender-Auth: Eu7-X8kG_0EU91l4CyBDw_woERc
Message-ID: <CAFDHC3avFLDzUtpn_Qd2hFg+x49hrF6HjzKEZ13TSNXp4edsdQ@mail.gmail.com>
Subject: Dear
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

UGxlYXNlIGJlYXIgd2l0aCBtZS4gSSBhbSB3cml0aW5nIHRoaXMgbGV0dGVyIHRvIHlvdSB3aXRo
IHRlYXJzIGFuZApzb3Jyb3cgZnJvbSBteSBoZWFydC4KCkkgYW0gQWlzaGEgTXVhbW1hciBHYWRk
YWZpLCB0aGUgb25seSBkYXVnaHRlciBvZiB0aGUgZW1iYXR0bGVkCnByZXNpZGVudCBvZiBMaWJ5
YSwgSG9uLiBNdWFtbWFyIEdhZGRhZmkuIEkga25vdyBteSBtYWlsIG1pZ2h0IGNvbWUgdG8KeW91
IGFzIGEgc3VycHJpc2UgYmVjYXVzZSB5b3UgZG9u4oCZdCBrbm93IG1lLCBidXQgZHVlIHRvIHRo
ZQp1bnNvbGljaXRlZCBuYXR1cmUgb2YgbXkgc2l0dWF0aW9uIGhlcmUgaW4gUmVmdWdlZSBjYW1w
IE91YWdhZG91Z291CkJ1cmtpbmEgRmFzbyBpIGRlY2lkZWQgdG8gY29udGFjdCB5b3UgZm9yIGhl
bHAuIEkgaGF2ZSBwYXNzZWQgdGhyb3VnaApwYWlucyBhbmQgc29ycm93ZnVsIG1vbWVudHMgc2lu
Y2UgdGhlIGRlYXRoIG9mIG15IGZhdGhlci4gQXQgdGhlIHNhbWUKdGltZSwgbXkgZmFtaWx5IGlz
IHRoZSB0YXJnZXQgb2YgV2VzdGVybiBuYXRpb25zIGxlZCBieSBOYXRvIHdobyB3YW50CnRvIGRl
c3Ryb3kgbXkgZmF0aGVyIGF0IGFsbCBjb3N0cy4gT3VyIGludmVzdG1lbnRzIGFuZCBiYW5rIGFj
Y291bnRzCmluIHNldmVyYWwgY291bnRyaWVzIGFyZSB0aGVpciB0YXJnZXRzIHRvIGZyZWV6ZS4K
Ck15IEZhdGhlciBvZiBibGVzc2VkIG1lbW9yeSBkZXBvc2l0ZWQgdGhlIHN1bSBvZiAkMjcuNU0g
KFR3ZW50eSBTZXZlbgpNaWxsaW9uIEZpdmUgSHVuZHJlZCBUaG91c2FuZCBEb2xsYXJzKSBpbiBh
IEJhbmsgYXQgQnVya2luYSBGYXNvIHdoaWNoCmhlIHVzZWQgbXkgbmFtZSBhcyB0aGUgbmV4dCBv
ZiBraW4uIEkgaGF2ZSBiZWVuIGNvbW1pc3Npb25lZCBieSB0aGUKKEJPQSkgYmFuayB0byBwcmVz
ZW50IGFuIGludGVyZXN0ZWQgZm9yZWlnbiBpbnZlc3Rvci9wYXJ0bmVyIHdobyBjYW4Kc3RhbmQg
YXMgbXkgdHJ1c3RlZSBhbmQgcmVjZWl2ZSB0aGUgZnVuZCBpbiBoaXMgYWNjb3VudCBmb3IgYSBw
b3NzaWJsZQppbnZlc3RtZW50IGluIGhpcyBjb3VudHJ5IGR1ZSB0byBteSByZWZ1Z2VlIHN0YXR1
cyBoZXJlIGluIEJ1cmtpbmEKRmFzby4KCkkgYW0gaW4gc2VhcmNoIG9mIGFuIGhvbmVzdCBhbmQg
cmVsaWFibGUgcGVyc29uIHdobyB3aWxsIGhlbHAgbWUgYW5kCnN0YW5kIGFzIG15IHRydXN0ZWUg
c28gdGhhdCBJIHdpbGwgcHJlc2VudCBoaW0gdG8gdGhlIEJhbmsgZm9yIHRoZQp0cmFuc2ZlciBv
ZiB0aGUgZnVuZCB0byBoaXMgYmFuayBhY2NvdW50IG92ZXJzZWFzLiBJIGhhdmUgY2hvc2VuIHRv
CmNvbnRhY3QgeW91IGFmdGVyIG15IHByYXllcnMgYW5kIEkgYmVsaWV2ZSB0aGF0IHlvdSB3aWxs
IG5vdCBiZXRyYXkgbXkKdHJ1c3QgYnV0IHJhdGhlciB0YWtlIG1lIGFzIHlvdXIgb3duIHNpc3Rl
ciBvciBkYXVnaHRlci4gSWYgdGhpcwp0cmFuc2FjdGlvbiBpbnRlcmVzdHMgeW91LCB5b3UgZG9u
J3QgaGF2ZSB0byBkaXNjbG9zZSBpdCB0byBhbnlib2R5CmJlY2F1c2Ugb2Ygd2hhdCBpcyBnb2lu
ZyBvbiB3aXRoIG15IGVudGlyZSBmYW1pbHksIGlmIHRoZSBVbml0ZWQKbmF0aW9uIGhhcHBlbnMg
dG8ga25vdyB0aGlzIGFjY291bnQsIHRoZXkgd2lsbCBmcmVlemUgaXQgYXMgdGhleQpmcmVlemUg
b3RoZXJzLCBzbyBwbGVhc2Uga2VlcCB0aGlzIHRyYW5zYWN0aW9uIG9ubHkgdG8geW91cnNlbGYg
dW50aWwKd2UgZmluYWxpemUgaXQuCgpTb3JyeSBmb3IgbXkgcGljdHVyZXMuIEkgd2lsbCBlbmNs
b3NlIGl0IGluIG15IG5leHQgbWFpbCBhbmQgbW9yZQphYm91dCBtZSB3aGVuIEkgaGVhciBmcm9t
IHlvdSBva2F5LgoKWW91cnMgU2luY2VyZWx5CkJlc3QgUmVnYXJkLApBaXNoYSBHYWRkYWZpCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxp
bmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
