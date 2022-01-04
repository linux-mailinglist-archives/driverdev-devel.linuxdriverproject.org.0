Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 048B948401C
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jan 2022 11:48:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 79906404BA;
	Tue,  4 Jan 2022 10:48:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b4_qYGDwD3zh; Tue,  4 Jan 2022 10:48:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D653404A8;
	Tue,  4 Jan 2022 10:48:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 771CB1BF423
 for <devel@linuxdriverproject.org>; Tue,  4 Jan 2022 10:47:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 65115824B4
 for <devel@linuxdriverproject.org>; Tue,  4 Jan 2022 10:47:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id glzr7VRK1igh for <devel@linuxdriverproject.org>;
 Tue,  4 Jan 2022 10:47:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com
 [IPv6:2607:f8b0:4864:20::941])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BABBE82443
 for <devel@driverdev.osuosl.org>; Tue,  4 Jan 2022 10:47:56 +0000 (UTC)
Received: by mail-ua1-x941.google.com with SMTP id u6so55080106uaq.0
 for <devel@driverdev.osuosl.org>; Tue, 04 Jan 2022 02:47:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=oiZ7G8qleI6K8MkiH424xRm1sJmWhAGxpDGwsFYlIuY=;
 b=RFYJ7a5uo+bNeyt9wFX01p6PnahporW1e69+DBQXdxTMfXUXlpLYmlrYy6ybebPhJ6
 9gu7KwnhOXAHp7IyXdol2ByJ6QCevH72Qwt2GXFJFQJJGQGRynqvockXrQX6F3O6Ooyv
 tPUcI0/MNFzGU7BV3c1cL35s1bhGpWsAC4ieKFY2BVzAUyAyteo03ZT3niBxbiIRIXAY
 r8zvHaGfgnu4MLcskLR2NELuwG16bhaZCvGl3tcyxNMbl5Nq0RqPPW5B/blndev2keUy
 CB//9OWHhl9lAlTdl+TyzZREn20k07HcHO8pZrCC8ajoug+3T023XSmArt0OQBpn9fvK
 cMvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=oiZ7G8qleI6K8MkiH424xRm1sJmWhAGxpDGwsFYlIuY=;
 b=ITeB5BbjSB9DGnbIv9u3EhSy4nwG1GwcuiOjx664w1LDadhYc+YjQjOgqlHIiqr44X
 u8JlB/Kc+EdXlJ6jOiRCFJlkJdZ7qpbJKN1wbcQO+uiyeBvhFUUFT7iZHDER1qYQX0Ho
 QvZ8T2XbZTvN1RNebvy03H62M21TMyA1aJDiYqBiMWa0ZsKGRrNtC0hZlHFHIDe0BDrU
 PkO5prDcsRa+EDsGNDyRhjXlcLYUZxmnMNYzV8TmBGNI9PD+Mblm/ZCmHwQCGajj7MpY
 h1WwNMghczMVLHgHtUnLl5JTE6gWv7T9vUNLpTFewmLEmF48LhmKwY6bFjKfc6y0M2Nj
 l9Wg==
X-Gm-Message-State: AOAM5321FwNZ7zvy85R1E6aNTEZ1fA9fTI7W/bAhz3DIYEG5wdNyRbOX
 aeZWlqfXkfZl7u6Zb8qsDcR5WdA7Uk+PIPgAxI4=
X-Google-Smtp-Source: ABdhPJy9Hss+Re5jD722vFEkDRQJqBI6DJpWF9Izu5B/djOC/xbcRDfR3VK1ljL8vkatYf5adpFIJzzCtL28ELvWrNM=
X-Received: by 2002:a05:6102:c4:: with SMTP id
 u4mr10714430vsp.71.1641293275431; 
 Tue, 04 Jan 2022 02:47:55 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6102:ccf:0:0:0:0 with HTTP; Tue, 4 Jan 2022 02:47:54
 -0800 (PST)
From: Mrs Aisha Al-Qaddafi <mrsaishaalqaddafi967@gmail.com>
Date: Tue, 4 Jan 2022 02:47:54 -0800
X-Google-Sender-Auth: vuYFUOorKKzDVf6F_Fvzw2Sp-es
Message-ID: <CAL60ujbWjSH63fyMH0pZRQrK_Bko6AY-qob35HdKBH8U1QfFVg@mail.gmail.com>
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
