Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8770E494C98
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jan 2022 12:15:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9899260AB7;
	Thu, 20 Jan 2022 11:15:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tmu3QmGuJYXe; Thu, 20 Jan 2022 11:15:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7A7360AB5;
	Thu, 20 Jan 2022 11:15:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 615EC1BF29D
 for <devel@linuxdriverproject.org>; Thu, 20 Jan 2022 11:15:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4F2D7415C2
 for <devel@linuxdriverproject.org>; Thu, 20 Jan 2022 11:15:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AlmEHqisibF5 for <devel@linuxdriverproject.org>;
 Thu, 20 Jan 2022 11:15:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com
 [IPv6:2607:f8b0:4864:20::82b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B167C40984
 for <devel@driverdev.osuosl.org>; Thu, 20 Jan 2022 11:15:07 +0000 (UTC)
Received: by mail-qt1-x82b.google.com with SMTP id h15so5272877qtx.0
 for <devel@driverdev.osuosl.org>; Thu, 20 Jan 2022 03:15:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=X2KOUBlZ5TsVXvY/fYbUy6x81TwUcpkT3p99QriP9v0=;
 b=gGEmdW15Uyckzw0O20DfF7ekZ45HF4DouCkPdh5WStRTWoStBcHwQdRp7gqwLyc7zC
 8/7N49TEZkCf2nC+0r+NjIXXpjWEN4U0asI/j/7Ywsm72hT8s61RZi/jJiRVYibwcdHr
 sV39VAUjq5Da8mBXoP/kWk+60/HcYsuQFdzItcqX+adscGpNCZMf1V3Im5jjNMDFjuVC
 iDE4r2PU3AEPtD7dbAFfacOtiWpxTtAc1Xv2k7rBQo1uPH6YAgbpDH5Yf1AIg/o52XQl
 t6hkSR+Xj38+FoYKtJJ4lWp2WachI6qxxAvIcg/qwAtiPDMPEzK15/7u3dgPce7/X5bk
 5jcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=X2KOUBlZ5TsVXvY/fYbUy6x81TwUcpkT3p99QriP9v0=;
 b=HTyzLa4vDUnSEIDRQdDvWpO9Z6MZiXj8X/RkZFylh4ik4Y0x9HoFzyu2NUm5tMpTIs
 UItQ6l5xBOkfDXmpsIFi0WIR4gqRnnaFYGmyXRPzBFWUORmLZcyx1dP+1RRMkNMaDrK8
 1EXzeM6bTsXtgZLc1n1HR50dpJuoTS3X1eOZAWYLB38PEUSpfJmnAnc1WzaiYaIcrX6o
 c0bjLjsPLOlwXxDjRBOPbA0hNetUVBA5jesoZIdx5tZuxFxcdd6bqrbT1UykhXwDwMOv
 +KoOBME9EKXTeTsV76JFYHvHkN6SL9xOMZH2kYysqfZK+DebMs3iCHiD3FCek27Rx3is
 bQCg==
X-Gm-Message-State: AOAM53180aNvRT6148pgUesJbmFu4UDHb4YhhAhMlw66raH+uG/y947L
 Hmmx5S8gzNxIOeVzuvj+IjSopFnlZqYWI2lPX20=
X-Google-Smtp-Source: ABdhPJzKf67YWU2J7aSCGG6ieTipgys0H9xjMwDLSNVyejlrI/NdxRo+mX738z5mUTJneehhBlJvsRFATMfxodbkbnc=
X-Received: by 2002:a05:620a:bcb:: with SMTP id
 s11mr24273244qki.217.1642677306149; 
 Thu, 20 Jan 2022 03:15:06 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:622a:1a23:0:0:0:0 with HTTP; Thu, 20 Jan 2022 03:15:05
 -0800 (PST)
From: white <amedmusa66@gmail.com>
Date: Thu, 20 Jan 2022 11:15:05 +0000
Message-ID: <CAEs1vzC=xiWc9X2ocQRZ0V_bi7VhPnbzLVzUHuSUHA0ZN6hycg@mail.gmail.com>
Subject: Good day Dear friend.
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
Reply-To: mrsjenet15@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3JlZXRpbmdzIGZyb20gamVuZXQgd2hpdGUsIFBsZWFzZSBSZWFkIENhcmVmdWxseTsKCkknbSBN
cnMsIGplbmV0IHdoaXRlLCBBcm15IHN1cmdlb24gR2VuZXJhbCBmcm9tIEFtZXJpY2EuIEJ1dCBp
bgpUZXhhcyBhdCB0aGUgbW9tZW50IGluIHRoZSBNaWxpdGFyeSBab25lIENhbXAgd2UgYXJlIG5v
dCBhbGxvd2VkIHRvCm1ha2UgdXNlIG9mIG1vYmlsZQpwaG9uZSwgd2Ugb25seSBtYWtlIHVzZSBv
ZiByYWRpbyBtZXNzYWdlIGFuZCBlbWFpbCBjb21tdW5pY2F0aW9uLCBJCmhhdmUgZGVjaWRlZCB0
byBjb21tdW5pY2F0ZSB2aWEgZW1haWxzIG9ubHkuCgpNeSBkZWFyLCBJIGRpc2NvdmVyZWQgc29t
ZSBHb2xkIGluIG15IER1dHkgd2hpY2ggSSBrZXB0IGluIHRoZSBCYW5rIGFuZCB0aGUKQmFuayBN
YW5hZ2VtZW50IHRvbGQgbWUgdGhhdCB0aGV5IGFyZSBnb2luZyB0byBwYXkgbWUgZXF1aXZhbGVu
dAphbW91bnQgb2YgJDMsNjAwLjAwMC4wMCBNaWxsaW9uIFVTIGRvbGxhcnMgZm9yIHRoZSBHb2xk
IHdoaWNoIEkKYWdyZWVkIHdpdGggdGhlbS4gQnV0IEkgZG9u4oCZdCB3YW50IHRoZSBtb25leSB0
byBiZSB0cmFuc2ZlcnJlZCB0byBteQphY2NvdW50IGJlY2F1c2Ugb2YgbXkgcG9zaXRpb24gaW4g
QXJteSBzaW5jZSB0aGV5IGtub3dzIG1lIGFzCk1pbGl0YXJ5IHBlcnNvbm5lbCwgQW1lcmljYW4g
R292ZXJubWVudCB3aWxsIGxpa2UgdG8ga25vdyBob3cgSSBnZXQKc3VjaCBhbW91bnQgb2YgbW9u
ZXkgYXMgdGhleSBrbm93cyBteSBpbmNvbWUgYW5kIG15IHNhbGFyeS4KCkR1ZSB0byB0aGlzLCBJ
IGhhdmUgbWFkZSBzb2xpZCBhcnJhbmdlbWVudHMgd2l0aCB0aGUgQmFuayBEaXJlY3RvcnMgdG8K
aGVscCBtZSB0cmFuc2ZlciB0aGUgbW9uZXkgdG8gYW55IENvdW50cnkgb2YgbXkgY2hvaWNlIGFu
ZCB0aGV5IGhhdmUKYWNjZXB0ZWQgYW5kIHByb21pc2VkIHRvIHRyYW5zZmVyIHRoZSBtb25leSB0
byBteSBjaG9vc2luZwpkZXN0aW5hdGlvbi4gSXQgaXMgbXkgaW50ZW50aW9uIHRvIGNvbXBlbnNh
dGUgeW91IG9uIHRoZSBwZXJjZW50YWdlICUKd2UgYWdyZWVkIG9uIGZvciB5b3VyIHNlcnZpY2Vz
IGFzIHlvdSBzdGFuZCBhcyBteSBwYXJ0bmVyIGFuZCB0aGUKZW50aXJlIG1vbmV5IGJlZW4gdHJh
bnNmZXJyZWQgdG8geW91LiBBcyBzb29uIGFzIHlvdSByZWNlaXZlIHRoZSBtb25leQpJIHdpbGwg
cmVzaWduIGFzIGEgc29sZGllciBhcyBJIGFtIHBsYW5uaW5nIHRvIGludmVzdCBpbiBNYW51ZmFj
dHVyaW5nCkNvbXBhbnksIGFsc28gSSB3aWxsIGZseSB0byBtZWV0IHlvdSBpbiB5b3VyIENvdW50
cnkgaW1tZWRpYXRlbHkgdGhlCkNvdmVkLTE5IHBhbmRlbWljIHNob3J0IGRvd24gaXMgb3ZlciBm
b3IgdXMgdG8gYnVpbGQgRmFtaWx5IGZyaWVuZHNoaXAKdG9nZXRoZXIuIFdlIG5lZWQgdXJnZW50
IG1vdmVtZW50IG9uIHRoaXMgZGVhbCBiZWNhdXNlIHRoZSBtb25leSBpcyBpbgp0aGUgQmFuayBz
dXNwZW5zZSBhY2NvdW50IGl0IGhhcyBOTyBCZW5lZmljaWFyeSBuYW1lcyBZRVQgYXMgSSBkaWQg
bm90CnVzZSBteSBuYW1lcyBiZWNhdXNlIGl0IHdpbGwgYmUgcmlzayBmb3IgbWUgdG8gdXNlIG15
IG5hbWVzIGlmCkFtZXJpY2FuIEdvdmVybm1lbnQgZGlzY292ZXIgdGhhdCBzdWNoIGFtb3VudCBv
ZiBtb25leSBpcyBvbiBteSBuYW1lcwpoZXJlIGluIGlzIEFtZXJpY2EgdGhleSB3aWxsIGxpa2Ug
dG8ga25vdyB0aGUgc291cmNlIG9mIHRoZQptb25leS4gcGxlYXNlIE1ha2UgeW91ciByZXNwb25k
IHVyZ2VudCB0byBtZTsKCnBsZWFzZSBjb250YWN0IG1lIGhlcmUgZm9yIHNlY3VyaXR5IHB1cnBv
c2UgKG1yc2plbmV0MTVAZ21haWwuY29tKQoKTXkgcmVnYXJkczsKTXJzLCBqZW5ldCB3aGl0ZS4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
