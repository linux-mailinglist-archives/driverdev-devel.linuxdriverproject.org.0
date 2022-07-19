Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F6D57A34B
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Jul 2022 17:36:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D169941526;
	Tue, 19 Jul 2022 15:36:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D169941526
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mEJ4_bVxgfq3; Tue, 19 Jul 2022 15:36:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33C594151E;
	Tue, 19 Jul 2022 15:36:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 33C594151E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 60DF31BF4D7
 for <devel@linuxdriverproject.org>; Tue, 19 Jul 2022 15:34:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4714782CFA
 for <devel@linuxdriverproject.org>; Tue, 19 Jul 2022 15:34:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4714782CFA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ySwTshPDIp6b for <devel@linuxdriverproject.org>;
 Tue, 19 Jul 2022 15:34:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7ED0382CEC
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7ED0382CEC
 for <devel@linuxdriverproject.org>; Tue, 19 Jul 2022 15:34:39 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id z22so11813458lfu.7
 for <devel@linuxdriverproject.org>; Tue, 19 Jul 2022 08:34:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=p4L748tEMYmNbBywCwHvf/vDG9VkeDj29eR9LSApZCg=;
 b=nwEohaxv+LvV0YhGsqHg7NtK/CN5pzoQ1Inv1XhW6L8jfOWYf9LYHtcSFXM20dwpAN
 JTu4QbvBzFWTlNGQY8T0y5g5DR8pLFkj7/nWaRhY+t5XsJJstFRnUzTS3e0JrgQOb7O5
 1xmtvRXVECa3CZdHyP3euBZsB2oMBQ5CbWrd1mUYyu/SjWhr4vnIAiTjUKFi8dUgs9Bq
 21092kn7gkaDcENOYOPgvNZ2uRtXGyr5a5oOMhIwIFUsqfqEeuGVIJYLU336JaS6tegD
 CKqaUB3FfvQE6y7BSHs63MtrPAGIJ5BeVk6V+2bdI5qYXi1lJLvYa4XV7rfYLA869S28
 Fofg==
X-Gm-Message-State: AJIora/Zvo/HmEdCjG+zQN10yx+6DvJ1sHOW/lyD3b+uzx2b+vPBrIU2
 p3UsyWtL+vddeCiwFc1BPKX9wQ7pDN1JnjMqP7g=
X-Google-Smtp-Source: AGRyM1t9zqllR7GUnXXwUmLUkyCIUADY7iWtW41IjliIPO64UA3nlWnSv20iezFLQqMCTcMT+g2QGPzLpKPo5aWCpj8=
X-Received: by 2002:ac2:5933:0:b0:489:e7fc:cdf2 with SMTP id
 v19-20020ac25933000000b00489e7fccdf2mr16991642lfi.340.1658244877351; Tue, 19
 Jul 2022 08:34:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aa6:c0d2:0:b0:1f9:353d:c646 with HTTP; Tue, 19 Jul 2022
 08:34:36 -0700 (PDT)
From: Miss SOLONGE PETER FOFO <sologanleon@gmail.com>
Date: Tue, 19 Jul 2022 16:34:36 +0100
Message-ID: <CABVvYYiw+B3mBuS0esfZPx1vyasxww3c0z1MZ0=TY67k72UQqA@mail.gmail.com>
Subject: Hope to hear from you soon
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=p4L748tEMYmNbBywCwHvf/vDG9VkeDj29eR9LSApZCg=;
 b=QuOGBvAHNUoHUVN5snPArO5awG4+lW4ndOUERAw+nRn+UXTppGsotWGsRphmYFdGAP
 HtT4B/G6k3QW74EEglzW2HgDtWLXUvXRoiTXeL+sQ+I+L9mk5yzqvQeKQZBhZUA+xits
 DiiANUFL7dsFsrTiPfAmcTeqmnxP+OxmcVFmjmn8pffrCs1gBmyW6fRNWuGlsnXCA2+M
 lY9t/DEEq64WIC7HQ38OT/+vJBga3OIlQ9RmrdGgr1KR96KQc7Hog692RUyBsz/2bal2
 gjp97o2hzSQB5nS1v43wNLjNgIXNszmQvATY/emNl8y73PGj88MJKu5OavPd2PMjsUSE
 nmCw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=QuOGBvAH
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
Reply-To: s.fofo@aol.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCiBIZWxsbyBJIGFtIE1pc3MgU29sb25nZSB0aGUgb25seSBkYXVnaHRlciBvZiBQRVRFUiBG
T0ZPIHdobyBkaWVkIGluIGEKbW90b3IgYWNjaWRlbnQgc29tZSBtb250aHMgYWdvIGhlIHdhcyBh
IGNvbnRyYWN0b3IgdG8gZmVkZXJhbApnb3Zlcm5tZW50IG9mIENvdGUgZOKAmUl2b2lyZS4gQmVm
b3JlIGhlIGdhdmUgdXAgaW4gdGhlIGhvc3BpdGFsIGhlIHRvbGQKbXkgbW90aGVyIGFuZCBJIHRo
YXQgaGUgZGVwb3NpdGVkIHN1bSBvZiBVUyAkIDEuNSBtaWxsaW9uIHdpdGggYSBiYW5rCmluIExv
bWUtVG9nbyBhbmQgd2hlcmUgdGhlIGRvY3VtZW50IGlzLgoKU2luY2UgYWZ0ZXIgbXkgZmF0aGVy
J3MgZGVhdGggbXkgdW5jbGVzIGFyZSB0cm91YmxpbmcgbXkgbW90aGVyIHdpdGgKdGhlaXIgdXNl
bGVzcyBBZnJpY2FuIHRyYWRpdGlvbnMgdGhleSBoYXZlIHRha2luZyBhbGwgb2YgbXkgZmF0aGVy
J3MKYmVsb25naW5ncy9wcm9wZXJ0aWVzIGFuZCBsZWZ0IHVzIHdpdGggbm90aGluZyBqdXN0IGJl
Y2F1c2UsIG15IGxhdGUKZmF0aGVyIGRpZCBub3QgaGF2ZSBhIG1hbGUgY2hpbGQuIEFzIGEgcmVz
dWx0IG9mIHRoaXMgcHJvYmxlbSBteQptb3RoZXIgZmVlbHMgaW50byBhbiBpbGxuZXNzLiBOb3cg
c2hlIGlzIHNlcmlvdXNseSBzaWNrIGFuZCBJIGhhdmUKc3BlbnQgYWxsIHRoZSBtb25leSB3ZSBo
YXZlIG9uIGRydWdzIGFuZCBob3NwaXRhbCBiaWxscy4KCldlIGhhdmUgbm90aGluZyB0byBkbyB0
aGFuIHRvIHJ1biBkb3duIHRvIExvbWUtVG9nbyB0byBjbGFpbSB0aGUKKG1vbmV5KSBmcm9tIHRo
ZSBiYW5rLiBXZSBoYXZlIGNvbnRhY3RlZCB0aGUgYmFuayBtYW5hZ2VtZW50IGFuZCB0aGV5CnNh
aWQgYmVmb3JlIHRoZSBmdW5kIGNhbiBiZSByZWxlYXNlZCB3ZSBtdXN0IGJyaW5nIG15IGxhdGUg
ZmF0aGVyCmZvcmVpZ24gYnVzaW5lc3MgcGFydG5lciB0byBzdGFuZCBhcyBteSBmYXRoZXIgbmV4
dCBvZiBraW4gZm9yCnNlY3VyaXR5IHJlYXNvbnMuCgpOb3cgd2UgYXJlIGxvb2tpbmcgZm9yIHNv
bWVvbmUgd2hvIHdpbGwgYXNzaXN0IHVzIGFuZCBjbGFpbSB0aGUKKG1vbmV5KSBzbyB0aGF0IHdo
ZW4gaXQgYXJyaXZlZCB0byBoaXMgaG9tZS8gY291bnRyeSBoZSB3aWxsIHRha2UgaGlzCm93biBz
aGFyZSBhbmQgc2VuZCB1cyBvdXIgb3duLiBJIGFtIHdyaXRpbmcgdGhpcyBtYWlsIHRvIHNlZSBp
ZiB5b3UKY2FuIGFzc2lzdCB1cy4KClVwb24gcmVjZWlwdCBvZiB5b3VyIGFja25vd2xlZGdtZW50
IG1haWwgSSBzaGFsbCBzZW5kIHlvdSB0aGUgY29udGFjdApvZiB0aGUgYmFuayBkaXJlY3RvciBw
bGVhc2UgY29udGFjdCBvbiB0aGlzIGVtYWlsIDogcy5mb2ZvQGFvbC5jb20KClRoYW5rcwpNaXNz
IFNPTE9OR0UgUEVURVIgRk9GTwpIb3BlIHRvIGhlYXIgZnJvbSB5b3Ugc29vbi4KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
