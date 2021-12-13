Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D754734B9
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Dec 2021 20:16:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C20F260634;
	Mon, 13 Dec 2021 19:16:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VrNsMhsO-c7P; Mon, 13 Dec 2021 19:16:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0C3D6068D;
	Mon, 13 Dec 2021 19:16:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD6F41BF32D
 for <devel@linuxdriverproject.org>; Mon, 13 Dec 2021 19:16:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BABC8401F8
 for <devel@linuxdriverproject.org>; Mon, 13 Dec 2021 19:16:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Emy7Yp4R-4J for <devel@linuxdriverproject.org>;
 Mon, 13 Dec 2021 19:16:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com
 [IPv6:2607:f8b0:4864:20::22a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0D82C401F4
 for <devel@driverdev.osuosl.org>; Mon, 13 Dec 2021 19:16:24 +0000 (UTC)
Received: by mail-oi1-x22a.google.com with SMTP id u74so24447346oie.8
 for <devel@driverdev.osuosl.org>; Mon, 13 Dec 2021 11:16:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=xLuza7R3T0W+R8Pekj+hiF/ThLbzOi8sjhjbAP1PyNg=;
 b=NIYMq2gIoGiPnO2eRdRN/qx32eQ8op6GCq2UJByHmeIKNkF8SKfuGpsfXD5kofPoRf
 FYoYVD5brYfjG+KaGxXWV3TSKbY/iY2U+dX1FVDfo40yWuMSMiCcooT9T78RQCCMakEs
 Of1SGzwGHuwAxEkfNK7YF9V+Bu8cQcSesIEF2V+nW/GjW+bV1+w1mrOFDgAm7cxx786h
 UCNE1WeSD6Bo6mPF0qcwuEzqSXVNJvEuoogGwC4rkczQ9ZxuaY6mjeBLsnZN98KGCr98
 IDsj9HZp0rF+PcTEymqjywJnV8B+poVK1l7bPBdtzGtH7vp9mK5zhy5N6//j53pnnKUt
 +CTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=xLuza7R3T0W+R8Pekj+hiF/ThLbzOi8sjhjbAP1PyNg=;
 b=02V9Abqkv3d7Y9nRkhaKIoeGRjap6HlzqL7J/jsJo5DqOyGHuy/Ucb4B3/19yT7/ag
 1WwSRnO5H7nfwqmHyJMo7RFLxaBIxx/Nf6sHWramsiK7CqjyiGdbvMQPEBNY8MhwOBVk
 wBnNj/OPeXT6p70FROLY/4KpxpHbUWxIKoK7VcWcSnpu4TiRqGDKd0PLqFVIH+zxXE7r
 3mIq1/+UAArBpv3z3dUtnn4PRqJPixDO1mw5/iQDtu9n5U+6erLOSSTW4I4i7iNmz8zs
 rwrcDFaeo3cHTDKMmLFs/KTFCVGT8IgRbcIHOSO9uEmWPL9gd4WlW4zdxjEsRwmhYc80
 Rguw==
X-Gm-Message-State: AOAM531nslUZhZ+5AiRlImVj/OYRBcLjP6O8oHOaWUkE6kJ0ElEeaufV
 M+hhl7CYLz5YAOtkCi3whL2niTUTLCTxsazz3sI=
X-Google-Smtp-Source: ABdhPJwalBfnJc0sblpczpc+4aiGD734LvIXrx+Pz2g10LuQXqyx+y1K6mDsT3h7CoFAzt2byYa+g1LlLnIj28D5XWA=
X-Received: by 2002:a05:6808:178d:: with SMTP id
 bg13mr462209oib.171.1639422983884; 
 Mon, 13 Dec 2021 11:16:23 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a8a:dce:0:0:0:0:0 with HTTP;
 Mon, 13 Dec 2021 11:16:23 -0800 (PST)
From: Abdul Salam <abdulsalam009865@gmail.com>
Date: Mon, 13 Dec 2021 11:16:23 -0800
X-Google-Sender-Auth: _CSsY2ThYuiDr0aAg6EwdhmEwgQ
Message-ID: <CAOv+4EqTsHHQmx+cmeWpcyc87tWbj3oQeBnqO=QBCWqJ-SYhaQ@mail.gmail.com>
Subject: With due respect!!
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
Reply-To: abdulsalam09078@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TXkgRGVhciBGcmllbmQsCgpXaXRoIGR1ZSByZXNwZWN0IHRvIHlvdXIgcGVyc29uYWxpdHkgYW5k
IG11Y2ggc2luY2VyaXR5IG9mIHRoaXMKcHVycG9zZS5CZWZvcmUgSSBpbnRyb2R1Y2UgbXlzZWxm
LCBJIHdpc2ggdG8gaW5mb3JtIHlvdSB0aGF0IHRoaXMKbGV0dGVyIGlzIG5vdCBhIGhvYXggbWFp
bCBhbmQgSSB1cmdlIHlvdSB0byB0cmVhdCBpdCBzZXJpb3VzbHkuIFRoaXMKbGV0dGVyIG11c3Qg
Y29tZSB0byB5b3UgYXMgYSBiaWcgc3VycHJpc2UsIGJ1dCBJIGJlbGlldmUgaXQgaXMgb25seSBh
CmRheSB0aGF0IHBlb3BsZSBtZWV0IGFuZCBiZWNvbWUgZ3JlYXQgZnJpZW5kcyBhbmQgYnVzaW5l
c3MgcGFydG5lcnMuIEkKbXVzdCBhcG9sb2dpemUgZm9yIGJhcmdpbmcgdGhpcyBtZXNzYWdlIGlu
dG8geW91ciBtYWlsYm94IHdpdGhvdXQgYW55CmZvcm1hbCBpbnRyb2R1Y3Rpb24gZHVlIHRvIHRo
ZSB1cmdlbmN5IGFuZCBjb25maWRlbnRpYWxpdHkgb2YgdGhpcwpidXNpbmVzcyBhbmQgSSBrbm93
IHRoYXQgdGhpcyBtZXNzYWdlIHdpbGwgY29tZSB0byB5b3UgYXMgYSBzdXJwcmlzZS4KUGxlYXNl
IHRoaXMgaXMgbm90IGEgam9rZSBhbmQgSSB3aWxsIG5vdCBsaWtlIHlvdSB0byBqb2tlIHdpdGgg
aXQgb2ssCndpdGggZHVlIHJlc3BlY3QgdG8geW91ciBwZXJzb24gYW5kIG11Y2ggc2luY2VyaXR5
IG9mIHB1cnBvc2UsIEkgbWFrZQp0aGlzIGNvbnRhY3Qgd2l0aCB5b3UgYXMgSSBiZWxpZXZlIHRo
YXQgeW91IGNhbiBiZSBvZiBncmVhdCBhc3Npc3RhbmNlCnRvIG1lLiBNeSBuYW1lIGlzIE1yLkFi
ZHVsIFNhbGFtLCBmcm9tIEJ1cmtpbmEgRmFzbywgV2VzdCBBZnJpY2EuIEkKd29yayBpbiBTb2Np
w6l0w6kgR8OpbsOpcmFsZSBCdXJraW5hIEZhc28gKFNHO0JGKSBhcyB0ZWxleCBtYW5hZ2VyLCBw
bGVhc2UKc2VlIHRoaXMgYXMgYSBjb25maWRlbnRpYWwgbWVzc2FnZSBhbmQgZG8gbm90IHJldmVh
bCBpdCB0byBhbm90aGVyCnBlcnNvbiBhbmQgbGV0IG1lIGtub3cgd2hldGhlciB5b3UgY2FuIGJl
IG9mIGFzc2lzdGFuY2UgcmVnYXJkaW5nIG15CnByb3Bvc2FsIGJlbG93IGJlY2F1c2UgaXQgaXMg
dG9wIHNlY3JldC4KCkkgYW0gYWJvdXQgdG8gcmV0aXJlIGZyb20gYWN0aXZlIEJhbmtpbmcgc2Vy
dmljZSB0byBzdGFydCBhIG5ldyBsaWZlCmJ1dCBJIGFtIHNrZXB0aWNhbCB0byByZXZlYWwgdGhp
cyBwYXJ0aWN1bGFyIHNlY3JldCB0byBhIHN0cmFuZ2VyLiBZb3UKbXVzdCBhc3N1cmUgbWUgdGhh
dCBldmVyeXRoaW5nIHdpbGwgYmUgaGFuZGxlZCBjb25maWRlbnRpYWxseSBiZWNhdXNlCndlIGFy
ZSBub3QgZ29pbmcgdG8gc3VmZmVyIGFnYWluIGluIGxpZmUuIEl0IGhhcyBiZWVuIDEwIHllYXJz
IG5vdwp0aGF0IG1vc3Qgb2YgdGhlIGdyZWVkeSBBZnJpY2FuIFBvbGl0aWNpYW5zIHVzZWQgb3Vy
IGJhbmsgdG8gbGF1bmRlcgptb25leSBvdmVyc2VhcyB0aHJvdWdoIHRoZSBoZWxwIG9mIHRoZWly
IFBvbGl0aWNhbCBhZHZpc2Vycy4gTW9zdCBvZgp0aGUgZnVuZHMgd2hpY2ggdGhleSB0cmFuc2Zl
cnJlZCBvdXQgb2YgdGhlIHNob3JlcyBvZiBBZnJpY2Egd2VyZSBnb2xkCmFuZCBvaWwgbW9uZXkg
dGhhdCB3YXMgc3VwcG9zZWQgdG8gaGF2ZSBiZWVuIHVzZWQgdG8gZGV2ZWxvcCB0aGUKY29udGlu
ZW50LiBUaGVpciBQb2xpdGljYWwgYWR2aXNlcnMgYWx3YXlzIGluZmxhdGVkIHRoZSBhbW91bnRz
IGJlZm9yZQp0cmFuc2ZlcnJpbmcgdG8gZm9yZWlnbiBhY2NvdW50cywgc28gSSBhbHNvIHVzZWQg
dGhlIG9wcG9ydHVuaXR5IHRvCmRpdmVydCBwYXJ0IG9mIHRoZSBmdW5kcyBoZW5jZSBJIGFtIGF3
YXJlIHRoYXQgdGhlcmUgaXMgbm8gb2ZmaWNpYWwKdHJhY2Ugb2YgaG93IG11Y2ggd2FzIHRyYW5z
ZmVycmVkIGFzIGFsbCB0aGUgYWNjb3VudHMgdXNlZCBmb3Igc3VjaAp0cmFuc2ZlcnMgd2VyZSBi
ZWluZyBjbG9zZWQgYWZ0ZXIgdHJhbnNmZXIuIEkgYWN0ZWQgYXMgdGhlIEJhbmsKT2ZmaWNlciB0
byBtb3N0IG9mIHRoZSBwb2xpdGljaWFucyBhbmQgd2hlbiBJIGRpc2NvdmVyZWQgdGhhdCB0aGV5
CndlcmUgdXNpbmcgdG8gc3VjY2VlZCBpbiB0aGVpciBncmVlZHkgYWN0OyBJIGFsc28gY2xlYW5l
ZCBzb21lIG9mCnRoZWlyIGJhbmtpbmcgcmVjb3JkcyBmcm9tIHRoZSBCYW5rIGZpbGVzIGFuZCBu
byBvbmUgY2FyZWQgdG8gYXNrIG1lCmJlY2F1c2UgdGhlIG1vbmV5IHdhcyB0b28gbXVjaCBmb3Ig
dGhlbSB0byBjb250cm9sLiBUaGV5IGxhdW5kZXJlZApvdmVyICQ1YmlsbGlvbiBEb2xsYXJzIGR1
cmluZyB0aGUgcHJvY2Vzcy4KCkJlZm9yZSBJIHNlbmQgdGhpcyBtZXNzYWdlIHRvIHlvdSwgSSBo
YXZlIGFscmVhZHkgZGl2ZXJ0ZWQKKCQxMC41bWlsbGlvbiBEb2xsYXJzKSB0byBhbiBlc2Nyb3cg
YWNjb3VudCBiZWxvbmdpbmcgdG8gbm8gb25lIGluIHRoZQpiYW5rLiBUaGUgYmFuayBpcyBhbnhp
b3VzIG5vdyB0byBrbm93IHdobyB0aGUgYmVuZWZpY2lhcnkgdG8gdGhlIGZ1bmRzCmlzIGJlY2F1
c2UgdGhleSBoYXZlIG1hZGUgYSBsb3Qgb2YgcHJvZml0cyB3aXRoIHRoZSBmdW5kcy4gSXQgaXMg
bW9yZQp0aGFuIEVpZ2h0IHllYXJzIG5vdyBhbmQgbW9zdCBvZiB0aGUgcG9saXRpY2lhbnMgYXJl
IG5vIGxvbmdlciB1c2luZwpvdXIgYmFuayB0byB0cmFuc2ZlciBmdW5kcyBvdmVyc2Vhcy4gVGhl
ICgkMTAuNW1pbGxpb24gRG9sbGFycykgaGFzCmJlZW4gbGF5aW5nIHdhc3RlIGluIG91ciBiYW5r
IGFuZCBJIGRvbuKAmXQgd2FudCB0byByZXRpcmUgZnJvbSB0aGUgYmFuawp3aXRob3V0IHRyYW5z
ZmVycmluZyB0aGUgZnVuZHMgdG8gYSBmb3JlaWduIGFjY291bnQgdG8gZW5hYmxlIG1lIHNoYXJl
CnRoZSBwcm9jZWVkcyB3aXRoIHRoZSByZWNlaXZlciAoYSBmb3JlaWduZXIpLiBUaGUgbW9uZXkg
d2lsbCBiZSBzaGFyZWQKNjAlIGZvciBtZSBhbmQgNDAlIGZvciB5b3UuIFRoZXJlIGlzIG5vIG9u
ZSBjb21pbmcgdG8gYXNrIHlvdSBhYm91dAp0aGUgZnVuZHMgYmVjYXVzZSBJIHNlY3VyZWQgZXZl
cnl0aGluZy4gSSBvbmx5IHdhbnQgeW91IHRvIGFzc2lzdCBtZQpieSBwcm92aWRpbmcgYSByZWxp
YWJsZSBiYW5rIGFjY291bnQgd2hlcmUgdGhlIGZ1bmRzIGNhbiBiZQp0cmFuc2ZlcnJlZC4KCllv
dSBhcmUgbm90IHRvIGZhY2UgYW55IGRpZmZpY3VsdGllcyBvciBsZWdhbCBpbXBsaWNhdGlvbnMg
YXMgSSBhbQpnb2luZyB0byBoYW5kbGUgdGhlIHRyYW5zZmVyIHBlcnNvbmFsbHkuIElmIHlvdSBh
cmUgY2FwYWJsZSBvZgpyZWNlaXZpbmcgdGhlIGZ1bmRzLCBkbyBsZXQgbWUga25vdyBpbW1lZGlh
dGVseSB0byBlbmFibGUgbWUgdG8gZ2l2ZQp5b3UgZGV0YWlsZWQgaW5mb3JtYXRpb24gb24gd2hh
dCB0byBkby4gRm9yIG1lLCBJIGhhdmUgbm90IHN0b2xlbiB0aGUKbW9uZXkgZnJvbSBhbnlvbmUg
YmVjYXVzZSB0aGUgb3RoZXIgcGVvcGxlIHRoYXQgdG9vayB0aGUgd2hvbGUgbW9uZXkKZGlkIG5v
dCBmYWNlIGFueSBwcm9ibGVtcy4gVGhpcyBpcyBteSBjaGFuY2UgdG8gZ3JhYiBteSBvd24gbGlm
ZQpvcHBvcnR1bml0eSBidXQgeW91IG11c3Qga2VlcCB0aGUgZGV0YWlscyBvZiB0aGUgZnVuZHMg
c2VjcmV0IHRvIGF2b2lkCmFueSBsZWFrYWdlcyBhcyBubyBvbmUgaW4gdGhlIGJhbmsga25vd3Mg
YWJvdXQgbXkgcGxhbnMuIFBsZWFzZSBnZXQKYmFjayB0byBtZSBpZiB5b3UgYXJlIGludGVyZXN0
ZWQgYW5kIGNhcGFibGUgb2YgaGFuZGxpbmcgdGhpcyBwcm9qZWN0LApJIHNoYWxsIGludGltYXRl
IHlvdSBvbiB3aGF0IHRvIGRvIHdoZW4gSSBoZWFyIGZyb20geW91ciBjb25maXJtYXRpb24KYW5k
IGFjY2VwdGFuY2UuIElmIHlvdSBhcmUgY2FwYWJsZSBvZiBiZWluZyBteSB0cnVzdGVkIGFzc29j
aWF0ZSwgZG8KZGVjbGFyZSB5b3VyIGNvbnNlbnQgdG8gbWUuIEkgYW0gbG9va2luZyBmb3J3YXJk
IHRvIGhlYXJpbmcgZnJvbSB5b3UKaW1tZWRpYXRlbHkgZm9yIGZ1cnRoZXIgaW5mb3JtYXRpb24u
ClRoYW5rcyB3aXRoIGFsbCBteSBiZXN0IHJlZ2FyZHMuCk1yLkFiZHVsIFNhbGFtLApUZWxleCBN
YW5hZ2VyClNvY2nDqXTDqSBHw6luw6lyYWxlIEJ1cmtpbmEgRmFzbyAoU0cuQkYpCkJ1cmtpbmEg
RmFzbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
