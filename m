Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F060B4AFE1C
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Feb 2022 21:18:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B56D40253;
	Wed,  9 Feb 2022 20:18:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iY0pOjLjzucf; Wed,  9 Feb 2022 20:18:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13F5E40247;
	Wed,  9 Feb 2022 20:18:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E96EA1BF42C
 for <devel@linuxdriverproject.org>; Wed,  9 Feb 2022 20:18:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E3361401A1
 for <devel@linuxdriverproject.org>; Wed,  9 Feb 2022 20:18:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pRcWtpTUsPch for <devel@linuxdriverproject.org>;
 Wed,  9 Feb 2022 20:18:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com
 [IPv6:2607:f8b0:4864:20::d2d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ACDBF40150
 for <devel@driverdev.osuosl.org>; Wed,  9 Feb 2022 20:18:09 +0000 (UTC)
Received: by mail-io1-xd2d.google.com with SMTP id i62so4763762ioa.1
 for <devel@driverdev.osuosl.org>; Wed, 09 Feb 2022 12:18:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=lLqB5uXP4GxHC5TVmBdcUxwKILWbYUsnAsMtvOCXgPI=;
 b=Po29oiXodJkoJRDiasNBCLuQtY6gBl38Jv1HIp4Kfgz/FSpwFoPDR5K+C6/jfyqf9x
 k0xea0/cjhp1BpB7x2t4nva4QblX0C88ltLbhzm5QmY9Xk+pqavM4gHacY1/+CrQJ7Tz
 4CvKYbz17WG9HXAAnPvbZUSAxkJp1hWiL0FFhfyyVWBxeWcdMdpcgk3cr6y56VTpShqE
 VbvREn803Ft10hOHlUjRV7cPgXWVHEBwvMSC2DW8eY51NELuVrwDufoBZLWEchL34Izp
 DOuNmusYoka2yNvS87sVkPOCgJ1AM84H7JnnlSMJs0K28WlYKtN65ENQpfaYvhDcvjNE
 zOaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=lLqB5uXP4GxHC5TVmBdcUxwKILWbYUsnAsMtvOCXgPI=;
 b=6gC4wSi/8dn6+jrq/4g75orv8yShHe0tjvNx8dmh/qL7RpC+52yaUK5uFbiiql9NB2
 lEM7h2QqWxbgrphi7CS6yN8yNFkoA87VPAIwW37fTLsWqWYYWnSzh64bEBNcT0PphaWU
 oEEp+BFFxy56R418I2if0pej2oVRv8QggJt6QT1f560BsSpyPl1GC6RIu77fz8a5SgZ4
 dz5hvpfd25l4W4wZI6DIjcCutxVgL0jeWlpfjQl20p4ySOrffyXfLtIvzRb5VG5ee+e7
 DaikUNLo+funSIvNto4UayLM+b1KieKVZ2tCBB8U9lOkXdfFOIf40JATYM/PA2rkudwf
 7Qaw==
X-Gm-Message-State: AOAM530Se7cMropedtDdhiyYE0pnGLdd/ZNiCXTzayFkMBU0EkqWHzwg
 M8FRXDagUHKnfuQ7iGN2no6CpV0dTFmiNBgpVGQ=
X-Google-Smtp-Source: ABdhPJwmGDCpuqz42DUqf1NPVmV86xXEUJFBkXjwhU0z20SKwniSQlJOhWiMrhEFcf04IKAlP2vm8gn7WxbwSLp1KYA=
X-Received: by 2002:a6b:4e18:: with SMTP id c24mr1948877iob.189.1644437888731; 
 Wed, 09 Feb 2022 12:18:08 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a5e:8302:0:0:0:0:0 with HTTP;
 Wed, 9 Feb 2022 12:18:08 -0800 (PST)
From: Mrs Aishia Al-Qaddafi <mrsaishaalqadd123@gmail.com>
Date: Wed, 9 Feb 2022 12:18:08 -0800
X-Google-Sender-Auth: USHujOO-ht8XWIBgEEAS372QVZs
Message-ID: <CALa244MjbUhDP2VF8F=vLFrFkL2_vebn4qyy7vA9yVDHShULNg@mail.gmail.com>
Subject: Hello can i put my trust on you
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
IHlvdSBva2F5LgoKWW91cnMgU2luY2VyZWx5CkJlc3QgUmVnYXJkLApBaXNoYSBHYWRkYWZpCgoJ
ClJlcGx5CkZvcndhcmQKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
