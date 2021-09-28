Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5482341AA82
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Sep 2021 10:22:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D70460AEA;
	Tue, 28 Sep 2021 08:22:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gUv50a5qPQwW; Tue, 28 Sep 2021 08:22:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 161CC60AD9;
	Tue, 28 Sep 2021 08:22:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EB61E1BF298
 for <devel@linuxdriverproject.org>; Tue, 28 Sep 2021 08:22:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E7B004021A
 for <devel@linuxdriverproject.org>; Tue, 28 Sep 2021 08:22:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uCnwvMMTjPnA for <devel@linuxdriverproject.org>;
 Tue, 28 Sep 2021 08:22:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 217B24020F
 for <devel@driverdev.osuosl.org>; Tue, 28 Sep 2021 08:22:35 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id j27so2736455wms.0
 for <devel@driverdev.osuosl.org>; Tue, 28 Sep 2021 01:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=RkjMpeIuQ6aVWCs6FPMVIVUmVZwq7aWhwwHDvLPHoTA=;
 b=b0WGgu6AX7Ej3KQS4SXZkBoihZC+Trho0+Opfk1/cLdqe4HSDWB2G4f4JouUbA56hP
 fdXPSvcRn2UfqHlWTqnKUxCq8xIp39cRfeo59IEnR0eHtx7Fr4nacOS6S/7JmHLVZSq2
 JDKvH1M8QathPHDOsc2EwdEAcZehmi1Rv039aOwnM+XAEIn4ame16Z8C/wMuOdsO5rfF
 0lyAaynkrpRgFPclEXSdtF38/CgRqEW9ubaFkqldJdnXLQHtgHO2NFNK5KWGKf3f0OHs
 AA6B3wBBB1A6c1ppdcre35d1Ijd2r4HsHnzDWPXz7mxCOIwb16LgoY11hg1DWxp/iq+1
 fYrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=RkjMpeIuQ6aVWCs6FPMVIVUmVZwq7aWhwwHDvLPHoTA=;
 b=XxKZYfsDpj04iFOkc0EC7xf3txM3fFTsQszsPwK3eCuPz9yWOPXTVvH5O01VItfmiy
 TCfFvq9ZOByulnoiSA8fS7a3crzWh18j7tlE/T90AspEkbbmEH1cMGCFP1pFIk0DYr6J
 64i4ZgEeKQBdSwPW+RR3w+/epBVeDBTVQBe1YcGRqmKb+ULLfSHYF4VReIpjCQFK77q9
 WsqSOjGNi0H0lEGl2JKtrjoGwPtCRM4Am+YBJvBp1KIdR2DYlOkzk+RP4SzPSO3Apq+d
 D8xvWfxQsoSUplFPnDQtJEp15T+baaD0KDpXqMUWps/nwv19YnszN20rVs9TUVw26MHc
 xaPg==
X-Gm-Message-State: AOAM531gKU5xW47JRfXnoLB5NJ0Cvv4rKL/y52T9JYTbsmw6XyBd08Qk
 tlboi5DMfxjzCCKN4OjFucAcPMUx8JzT+Y9ohrk=
X-Google-Smtp-Source: ABdhPJw4cLSbTfs1n4vzo2nDfDXG+HLtgQUggDHIwlo9ZjEgM+LlkGdZyBVjUyaXy/hA5jQyLfnPGYVhpuFNHZ9Iuws=
X-Received: by 2002:a05:600c:350a:: with SMTP id
 h10mr3255634wmq.163.1632817353133; 
 Tue, 28 Sep 2021 01:22:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:adf:e391:0:0:0:0:0 with HTTP; Tue, 28 Sep 2021 01:22:32
 -0700 (PDT)
From: Mrs Daniella Kyle <mrsdaniellakyle6@gmail.com>
Date: Tue, 28 Sep 2021 01:22:32 -0700
X-Google-Sender-Auth: yYV_E0u0gt4Xm75o5NqKGsP_2oA
Message-ID: <CAOzfzmt5R67Kiou3vX_pLKsfQnB5Jf3cBh4MkOChAwGsxk_AwA@mail.gmail.com>
Subject: Re:ATM Visa card compensation, Thanks for your past effort
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
Reply-To: mrsdaniella.kyle@yandex.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R29vZCBEYXksCgpUaGlzIG1lc3NhZ2UgbWF5IGFjdHVhbGx5IGNvbWUgdG8geW91IGFzIHN1cnBy
aXNlcyB0b2RheSwgVG8gYmUgdmVyeQpob25lc3Qgd2l0aCB5b3UsIEl0IGlzIGEgam95ZnVsIG1v
bWVudCBmb3IgbWUgYW5kIG15IGZhbWlseSByaWdodCBub3csCnNvIHRoZXJlZm9yZSBhbSB1c2lu
ZyB0aGlzIG9wcG9ydHVuaXR5IHRvIGluZm9ybSB5b3UgdGhhdCBoYXZlCnN1Y2Nlc3NmdWxseSBt
b3ZlIHRvIFZpZXRuYW0gd2hlcmUgYW0gY3VycmVudGx5IGxpdmluZyB3aXRoIG15CmJ1c2luZXNz
IHBhcnRuZXIgd2hvIGFzc2lzdGVkIG1lIHRvIGNvbXBsZXRlIHRoZSB0cmFuc2ZlciwgYnV0IGR1
ZSB0bwp0aGUgd2lsbGluZ25lc3MgYW5kIGFjY2VwdGFuY2UgeW91IHNob3dlZCBkdXJpbmcgbXkg
cGFpbiBoYXZlIGRlY2lkZWQKdG8gd2lsbGluZ2x5IGNvbXBlbnNhdGVkIHlvdSBhbmQgc2hvdyBt
eSBncmF0aXR1ZGUgdG8geW91IHdpdGggdGhlc2UKc3VtIG9mICQ5NTAsMDAwLjAwIE5pbmUgSHVu
ZHJlZCBhbmQgZmlmdHkgVGhvdXNhbmQgVVMgRG9sbGFycykuCgpJIHdhbnQgeW91IHRvIGFjY2Vw
dCB0aGlzIGFtb3VudCBpdOKAmXMgZnJvbSB0aGUgYm90dG9tIG9mIG15IGhlYXJ0LApoYXZlIGlz
c3VlZCB0aGUgY2hlY2sgYW5kIGluc3RydWN0ZWQgdGhlIGJhbmsgdG8gcm9sbCB0aGUgZnVuZCBv
biBhCm1hc3RlciBjYXJkIGZvciBzZWN1cml0eSByZWFzb25zLCB5b3UgY2FuIHVzZSB0aGUgY2Fy
ZCB0byB3aXRoZHJhdwptb25leSBmcm9tIGFueSBBVE0gbWFjaGluZSB3b3JsZHdpZGUgd2l0aCBh
IG1heGltdW0gb2YgVVMkMTAsMDAwIHBlcgpkYXkuIE15IGJhbmsgYWNjb3VudCBtYW5hZ2VyIHNh
aWQgeW91IGNhbiByZWNlaXZlIHRoZSBjYXJkIGFuZCB1c2UgaXQKYW55d2hlcmUgaW4gdGhpcyBn
bG9iYWwgd29ybGQuCgogR28gYWhlYWQgY29udGFjdCB0aGUgR2xvYmFsIEFUTSBBbGxpYW5jZSBk
aXJlY3RseSB3aXRoIHRoaXMgYmVsb3cKaW5mb3JtYXRpb24uIEVtYWlsIEFkZHJlc3M6ICAgbWFh
c3RlcmNhcmRkZXB0bWUyMEB5YWhvby5jb20KClRoZSBDb21wYW55IE5hbWU6IC4uLi4uLi4uLi4u
IC4uLi4uLi4gR2xvYmFsIEFsbGlhbmNlIEJ1cmtpbmEgRmFzbwpDb21wYW55IEFkZHJlc3M7IC4u
Li4uLiAwMUJQIDIzIFJ1ZSBEZXMgR3JhbmRzIE1vdWxpbnMuT3VhZ2Fkb3Vnb3UsIEJ1cmtpbmEg
RmFzbwpFbWFpbCBBZGRyZXNzOiAuLi4uLiBbbWFhc3RlcmNhcmRkZXB0bWUyMEB5YWhvby5jb21d
Ck5hbWUgb2YgTWFuYWdlciBJbiBjaGFyZ2U6IE1ycyBab3VyZSBHdWVyYXRvdQoKUHJlc2VudGx5
LCBJIGFtIHZlcnkgYnVzeSBoZXJlIGluIFZpZXRuYW0gYmVjYXVzZSBvZiB0aGUgaW52ZXN0bWVu
dApwcm9qZWN0cyB3aGljaCBJIGFuZCBteSBuZXcgcGFydG5lciBhcmUgaGF2aW5nIGF0IGhhbmQs
IEkgaGF2ZSBnaXZlbgppbnN0cnVjdGlvbnMgdG8gdGhlIEFUTSBWaXNhIGNhcmQgb2ZmaWNlIG9u
IHlvdXIgYmVoYWxmIHRvIHJlbGVhc2UgdGhlCkFUTSBjYXJkIHdoaWNoIEkgZ2F2ZSB0byB5b3Ug
YXMgY29tcGVuc2F0aW9uLiBUaGVyZWZvcmUgZmVlbCBmcmVlIGFuZApnZXQgaW4gdG91Y2ggd2l0
aCBoZXIgYW5kIHNoZSB3aWxsIHNlbmQgdGhlIGNhcmQgYW5kIHRoZSBwaW4gY29kZSB0bwp5b3Ug
aW4geW91ciBsb2NhdGlvbiBpbiBvcmRlciBmb3IgeW91IHRvIHN0YXJ0IHdpdGhkcmF3aW5nIHRo
ZQpjb21wZW5zYXRpb24gbW9uZXkgd2l0aG91dCBkZWxheS4KCkxldCBtZSBrbm93IGFzIHNvb24g
eW91IHJlY2VpdmVkIHRoZSBjYXJkIHRvZ2V0aGVyIHdpdGggdGhlIHBpbiBjb2RlLgoKVGhhbmsg
eW91CllvdXJzIFNpbmNlcmVseQpEYW5pZWxhIEFuZ2VsbyBLeWxlCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
